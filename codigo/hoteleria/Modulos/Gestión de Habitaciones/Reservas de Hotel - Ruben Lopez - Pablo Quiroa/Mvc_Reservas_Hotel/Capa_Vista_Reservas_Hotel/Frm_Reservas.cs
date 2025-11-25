using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Windows.Forms;
using Capa_Controlador_Reservas_Hotel;

namespace Capa_Vista_Reservas_Hotel
{
    public partial class Frm_Reservas : Form
    {
        private readonly Controlador_Reserva controlador = new Controlador_Reserva();

        // === Calendario popup y bloqueo visual ===
        private Panel _popupPanel;
        private MonthCalendar _mc;
        private HashSet<DateTime> _fechasOcupadas = new HashSet<DateTime>();
        private enum PickerObjetivo { Ninguno, Entrada, Salida }
        private PickerObjetivo _objetivoActual = PickerObjetivo.Ninguno;

        public Frm_Reservas()
        {
            InitializeComponent();
            this.Load += Frm_Reservas_Load;
        }

        private void Frm_Reservas_Load(object sender, EventArgs e)
        {

            Cmb_Numero_Documento.DropDownStyle = ComboBoxStyle.DropDownList;
            CargarNumerosDocumento();

            // Inicializa calendario popup
            InicializarPopupCalendario();

            // Combos estáticos
            Cmb_Tipo_Documento.DropDownStyle = ComboBoxStyle.DropDownList;
            Cmb_Tipo_Documento.Items.Clear();
            Cmb_Tipo_Documento.Items.Add("DPI");
            Cmb_Tipo_Documento.Items.Add("Pasaporte");
            Cmb_Tipo_Documento.SelectedIndex = 0;

            Cmb_Estado_Reserva.DropDownStyle = ComboBoxStyle.DropDownList;
            Cmb_Estado_Reserva.Items.Clear();
            Cmb_Estado_Reserva.Items.AddRange(new[] { "Pendiente", "Confirmada", "Cancelada" });
            Cmb_Estado_Reserva.SelectedIndex = 0;

            // Cuando cambia el tipo de documento, recargar los números
            Cmb_Tipo_Documento.SelectedIndexChanged += (s, ev) =>
            {
                CargarNumerosDocumento();
            };


            // Datos dinámicos
            CargarHabitaciones();
            CargarBuffet();

            // Eventos para mostrar popup calendario
            Dtp_Entrada.MouseDown += (s, ev) =>
            {
                _objetivoActual = PickerObjetivo.Entrada;
                MostrarPopupCalendarioCercaDe(Dtp_Entrada);
            };
            Dtp_Salida.MouseDown += (s, ev) =>
            {
                _objetivoActual = PickerObjetivo.Salida;
                MostrarPopupCalendarioCercaDe(Dtp_Salida);
            };
        }

        private void CargarHabitaciones()
        {
            DataTable tabla = controlador.ObtenerHabitaciones();
            Cmb_Habitacion.DataSource = tabla;
            Cmb_Habitacion.DisplayMember = "Descripcion";
            Cmb_Habitacion.ValueMember = "IdHabitacion";

            Cmb_Habitacion.SelectedIndexChanged -= Cmb_Habitacion_SelectedIndexChanged;
            Cmb_Habitacion.SelectedIndexChanged += Cmb_Habitacion_SelectedIndexChanged;

            if (Cmb_Habitacion.SelectedValue != null &&
                int.TryParse(Cmb_Habitacion.SelectedValue.ToString(), out int id))
            {
                CargarFechasOcupadas(id);
            }
        }

        private void CargarBuffet()
        {
            try
            {
                string descripcion = controlador.ObtenerBuffetDescripcion();
                Txt_Buffet_Descripcion.Text = descripcion ?? string.Empty;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al cargar buffet: " + ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void ValidarCapacidadNumeric(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Txt_Capacidad.Text)) return;

            int capacidad = int.Parse(Txt_Capacidad.Text);
            int adultos = (int)Nud_Adultos.Value;
            int ninos = (int)Nud_Ninos.Value;

            if (adultos + ninos > capacidad)
            {
                MessageBox.Show(
                    $"La habitación solo permite {capacidad} personas.",
                    "Capacidad excedida",
                    MessageBoxButtons.OK,
                    MessageBoxIcon.Warning
                );

                // Reset a valores correctos
                Nud_Ninos.Value = 0;
            }
        }


        private void ConfigurarNumericUpDowns(int capacidad)
        {
            // Adultos mínimo 1
            Nud_Adultos.Minimum = 1;
            Nud_Adultos.Maximum = capacidad;
            Nud_Adultos.Value = 1;

            // Niños puede ser 0
            Nud_Ninos.Minimum = 0;
            Nud_Ninos.Maximum = capacidad;
            Nud_Ninos.Value = 0;

            // Eventos de validación
            Nud_Adultos.ValueChanged -= ValidarCapacidadNumeric;
            Nud_Ninos.ValueChanged -= ValidarCapacidadNumeric;

            Nud_Adultos.ValueChanged += ValidarCapacidadNumeric;
            Nud_Ninos.ValueChanged += ValidarCapacidadNumeric;
        }




        private void Cmb_Habitacion_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Cmb_Habitacion.SelectedValue == null) return;

            if (Cmb_Habitacion.SelectedItem is DataRowView row)
            {
                if (decimal.TryParse(row["Tarifa"].ToString(), out decimal tarifa))
                    Txt_Tarifa.Text = tarifa.ToString("F2");

                int capacidad = Convert.ToInt32(row["Capacidad"]);
                Txt_Capacidad.Text = capacidad.ToString();

                // Ajustar numeric updown
                ConfigurarNumericUpDowns(capacidad);

                if (int.TryParse(row["IdHabitacion"].ToString(), out int idHab))
                    CargarFechasOcupadas(idHab);
            }
        }

        // ==================== BLOQUEO VISUAL POPUP MONTHCALENDAR ====================
        private void InicializarPopupCalendario()
        {
            _popupPanel = new Panel
            {
                Visible = false,
                BorderStyle = BorderStyle.FixedSingle,
                Width = 250,
                Height = 190
            };
            _mc = new MonthCalendar
            {
                MaxSelectionCount = 1,
                Dock = DockStyle.Fill,
            };

            _mc.DateSelected += Mc_DateSelected;
            _mc.DateChanged += Mc_DateChangedBloquearVisual;

            _popupPanel.Controls.Add(_mc);
            this.Controls.Add(_popupPanel);

            _mc.Leave += (s, e) => _popupPanel.Visible = false;
            _popupPanel.Leave += (s, e) => _popupPanel.Visible = false;
        }

        private void MostrarPopupCalendarioCercaDe(Control ancla)
        {
            if (_popupPanel == null || _mc == null) return;

            var p = ancla.PointToScreen(new System.Drawing.Point(0, ancla.Height));
            p = this.PointToClient(p);
            _popupPanel.Location = p;

            _mc.RemoveAllBoldedDates();
            foreach (var d in _fechasOcupadas)
                _mc.AddBoldedDate(d);
            _mc.UpdateBoldedDates();

            _mc.SetDate(DateTime.Today);

            _popupPanel.BringToFront();
            _popupPanel.Visible = true;
            _mc.Focus();
        }

        private void Mc_DateChangedBloquearVisual(object sender, DateRangeEventArgs e)
        {
            if (_fechasOcupadas == null || _fechasOcupadas.Count == 0) return;

            DateTime seleccionado = e.Start.Date;
            if (_fechasOcupadas.Contains(seleccionado))
            {
                DateTime fallback = DateTime.Today;
                _mc.SetDate(fallback);
            }
        }

        private void Mc_DateSelected(object sender, DateRangeEventArgs e)
        {
            if (_fechasOcupadas.Contains(e.Start.Date))
                return;

            if (_objetivoActual == PickerObjetivo.Entrada)
                Dtp_Entrada.Value = e.Start.Date;
            else if (_objetivoActual == PickerObjetivo.Salida)
                Dtp_Salida.Value = e.Start.Date;

            _popupPanel.Visible = false;
            _objetivoActual = PickerObjetivo.Ninguno;
        }

        private void CargarFechasOcupadas(int idHabitacion)
        {
            try
            {
                _fechasOcupadas = controlador.ExpandirFechasOcupadas(idHabitacion)
                                  ?? new HashSet<DateTime>();

                if (_popupPanel != null && _mc != null && _popupPanel.Visible)
                {
                    _mc.RemoveAllBoldedDates();
                    foreach (var d in _fechasOcupadas)
                        _mc.AddBoldedDate(d);
                    _mc.UpdateBoldedDates();
                }
            }
            catch
            {
                _fechasOcupadas = new HashSet<DateTime>();
            }
        }

        // ==================== LÓGICA DE CÁLCULO Y PUNTOS ====================
        private void Btn_Calcular_Total_Click(object sender, EventArgs e)
        {
            try
            {
                if (!decimal.TryParse(Txt_Tarifa.Text, out decimal dTarifa))
                {
                    MessageBox.Show("Seleccione una habitación válida.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    return;
                }

                DateTime dEntrada = Dtp_Entrada.Value.Date;
                DateTime dSalida = Dtp_Salida.Value.Date;

                decimal total = controlador.CalcularTotalReserva(dTarifa, dEntrada, dSalida);
                Txt_Total_Reserva.Text = total.ToString("F2");

                if (!string.IsNullOrWhiteSpace(Txt_Puntos_Huesped.Text) &&
                    int.TryParse(Txt_Puntos_Huesped.Text, out int puntos) &&
                    puntos > 0)
                {
                    var opcion = MessageBox.Show(
                        $"El huésped tiene {puntos} puntos.\n¿Desea canjearlos como descuento?",
                        "Canje de Puntos",
                        MessageBoxButtons.YesNo,
                        MessageBoxIcon.Question
                    );

                    if (opcion == DialogResult.Yes)
                    {
                        int idHuesped = ObtenerIdHuesped();
                        var resultado = controlador.CanjearPuntos(idHuesped, total, puntos);
                        Txt_Total_Reserva.Text = resultado.dTotalFinal.ToString("F2");
                        Txt_Puntos_Huesped.Text = resultado.iPuntosRestantes.ToString();
                        MessageBox.Show(
                            $"Se han canjeado {resultado.iPuntosUsados} puntos. Nuevo total: Q{resultado.dTotalFinal:F2}.",
                            "Descuento aplicado",
                            MessageBoxButtons.OK,
                            MessageBoxIcon.Information
                        );
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error al calcular el total: {ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        // ==================== GUARDAR RESERVA ====================
        private void Btn_Guardar_Click(object sender, EventArgs e)
        {
            try
            {
                int idHuesped = ObtenerIdHuesped();
                int idHabitacion = Convert.ToInt32(Cmb_Habitacion.SelectedValue);
                int idBuffet = controlador.ObtenerBuffetIdIncluido();
                DateTime dEntrada = Dtp_Entrada.Value.Date;
                DateTime dSalida = Dtp_Salida.Value.Date;
                int adultos = (int)Nud_Adultos.Value;
                int ninos = (int)Nud_Ninos.Value;
                int numHuespedes = adultos + ninos;
                string sPeticiones = Txt_Peticiones.Text?.Trim();
                string sEstado = Cmb_Estado_Reserva.Text;

                if (!decimal.TryParse(Txt_Total_Reserva.Text, out decimal total))
                {
                    MessageBox.Show("Calcule el total antes de guardar.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    return;
                }

                controlador.InsertarReserva(
                    idHuesped, idHabitacion, idBuffet, numHuespedes,
                    dEntrada, dSalida, sPeticiones, sEstado, total
                );

                if (string.Equals(sEstado, "Confirmada", StringComparison.OrdinalIgnoreCase))
                {
                    int puntosRefrescados = controlador.ObtenerPuntosHuesped(idHuesped);
                    Txt_Puntos_Huesped.Text = puntosRefrescados.ToString();

                    MessageBox.Show("Reserva registrada y +15 puntos acreditados al huésped.",
                                    "Éxito", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    MessageBox.Show("Reserva registrada con éxito.",
                                    "Éxito", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString(), "DEBUG ERROR",
                                MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        // ==================== BÚSQUEDA Y UTILIDADES ====================
        private void Btn_Buscar_Huesped_Click(object sender, EventArgs e)
        {
            try
            {
                string tipo = Cmb_Tipo_Documento.Text.Trim();
                string numero = Cmb_Numero_Documento.Text.Trim();

                if (string.IsNullOrWhiteSpace(tipo) || string.IsNullOrWhiteSpace(numero))
                {
                    MessageBox.Show("Debe seleccionar el tipo de documento y el número.", "Aviso");
                    return;
                }

                DataRow dr = controlador.ObtenerHuesped(tipo, numero);

                if (dr != null)
                {
                    Txt_Nombre_Huesped.Text = dr["Cmp_Nombre"].ToString();
                    Txt_Apellido_Huesped.Text = dr["Cmp_Apellido"].ToString();

                    int idHuesped = Convert.ToInt32(dr["Pk_Id_Huesped"]);
                    int puntos = controlador.ObtenerPuntosHuesped(idHuesped);
                    Txt_Puntos_Huesped.Text = puntos.ToString();
                }
                else
                {
                    MessageBox.Show("No se encontró el huésped.", "Aviso");
                    Txt_Nombre_Huesped.Clear();
                    Txt_Apellido_Huesped.Clear();
                    Txt_Puntos_Huesped.Clear();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al buscar huésped: " + ex.Message);
            }
        }


        private int ObtenerIdHuesped()
        {
            string sTipo = Cmb_Tipo_Documento.Text.Trim();
            string sNumero = Cmb_Numero_Documento.SelectedValue?.ToString();

            if (string.IsNullOrWhiteSpace(sNumero))
                throw new Exception("Debe seleccionar un número de documento.");

            DataRow dr = controlador.ObtenerHuesped(sTipo, sNumero);

            if (dr == null)
                throw new Exception("Huésped no encontrado.");

            return Convert.ToInt32(dr["Pk_Id_Huesped"]);
        }


        private void Btn_Limpiar_Click(object sender, EventArgs e)
        {
            Txt_Nombre_Huesped.Clear();
            Txt_Apellido_Huesped.Clear();
            Txt_Tarifa.Clear();
            Txt_Total_Reserva.Clear();
            Txt_Peticiones.Clear();
            Txt_Buffet_Descripcion.Clear();
            Txt_Puntos_Huesped.Clear();
            Txt_Capacidad.Clear();

            Cmb_Tipo_Documento.SelectedIndex = 0;
            if (Cmb_Habitacion.Items.Count > 0) Cmb_Habitacion.SelectedIndex = 0;
            Cmb_Estado_Reserva.SelectedIndex = 0;

            Dtp_Entrada.Value = DateTime.Today;
            Dtp_Salida.Value = DateTime.Today.AddDays(1);
        }

        private void Btn_Modificar_Click(object sender, EventArgs e)
        {
            Frm_Modificar_Reserva modificar = new Frm_Modificar_Reserva();
            modificar.Show();
        }

        private void CargarNumerosDocumento()
        {
            string tipo = Cmb_Tipo_Documento.Text.Trim();
            DataTable dt = controlador.ObtenerDocumentosPorTipo(tipo);

            Cmb_Numero_Documento.DataSource = dt;
            Cmb_Numero_Documento.DisplayMember = "Cmp_Numero_Documento";
            Cmb_Numero_Documento.ValueMember = "Cmp_Numero_Documento";
            Cmb_Numero_Documento.SelectedIndex = -1;
        }

    }
}
