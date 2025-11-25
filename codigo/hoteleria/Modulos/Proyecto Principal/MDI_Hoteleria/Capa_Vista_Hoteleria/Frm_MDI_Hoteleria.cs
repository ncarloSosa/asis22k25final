using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using Capa_Vista_Seguridad;
using Capa_Vista_Contabilidad;

using Capa_Vista_S;
using Capa_Vista_IE;
using Capa_Vista_MH;
using CapaVistaOP;
using Capa_Vista_Receta;
using Capa_Vista_Produccion;
using Capa_Vista_Cierre;
using Capa_Vista_Polizas;


namespace Capa_Vista_Hoteleria
{
    public partial class Frm_MDI_Hoteleria : Form
    {
        private int iIChildFormNumber = 0;

        public Frm_MDI_Hoteleria()
        {
            InitializeComponent();
            this.IsMdiContainer = true; // <- activa MDI container
            this.Load += Frm_MDI_Hoteleria_Load;
        }

        private void Frm_MDI_Hoteleria_Load(object sender, EventArgs e)
        {
            // Mostrar usuario conectado en StatusStrip si existe el control
            try
            {
                toolStripStatusLabel.Text = $"Estado: Conectado | Usuario: {Capa_Controlador_Seguridad.Cls_Usuario_Conectado.sNombreUsuario}";
            }
            catch
            {
                // Si no existe toolStripStatusLabel en este formulario, ignorar.
            }
        }

        // --- Control de formularios hijos MDI ---
        private void CerrarFormulariosHijos()
        {
            foreach (Form childForm in this.MdiChildren)
            {
                childForm.Close();
            }
        }

        private void ShowNewForm(object sender, EventArgs e)
        {
            CerrarFormulariosHijos();
            Form childForm = new Form();
            childForm.MdiParent = this;
            childForm.Text = "Ventana " + iIChildFormNumber++;
            childForm.Show();
        }

        // --- Handlers adaptados para abrir formularios como hijos MDI ---

        private void polizaContableToolStripMenuItem_Click(object sender, EventArgs e)
        {
            CerrarFormulariosHijos();
            Frm_PolizaTurismo poliza = new Frm_PolizaTurismo();
            poliza.MdiParent = this;
           poliza.Show();
        }

        

      

        

       

       

        

        private void salonesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            CerrarFormulariosHijos();
            Frm_Salones salones = new Frm_Salones();
            salones.MdiParent = this;
            salones.Show();
        }

        private void implosionYExplosionToolStripMenuItem_Click(object sender, EventArgs e)
        {
            CerrarFormulariosHijos();
            Frm_Implosion IE = new Frm_Implosion();
            IE.MdiParent = this;
            IE.Show();
        }

        private void mantenimientoHoteleriaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            CerrarFormulariosHijos();
            Frm_Mantenimiento_hoteleria mantenimiento_Hoteleria = new Frm_Mantenimiento_hoteleria();
            mantenimiento_Hoteleria.MdiParent = this;
            mantenimiento_Hoteleria.Show();
        }

        private void ordenDeProduccionToolStripMenuItem_Click(object sender, EventArgs e)
        {
            CerrarFormulariosHijos();
            Frm_menu_ordenes formularioOP = new Frm_menu_ordenes();
            formularioOP.MdiParent = this;
            formularioOP.Show();
        }

        private void produccionHoteleriaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            CerrarFormulariosHijos();
            Frm_Produccion_Hoteleria formularioP = new Frm_Produccion_Hoteleria();
            formularioP.MdiParent = this;
            formularioP.Show();
        }

        

       

       

       


        

        

        private void reservacionDeSalonesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Frm_Reservaciones reservaciones= new Frm_Reservaciones();
            reservaciones.MdiParent = this;
            reservaciones.Show();
        }

        private void reservacionALaCartaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Frm_Produccion_Alacarta alacarta = new Frm_Produccion_Alacarta();
            alacarta.MdiParent = this;
            alacarta.Show();
        }

        private void recetasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Frm_Receta receta = new Frm_Receta();
            receta.MdiParent = this;
            receta.Show();
        }

        private void ordenesDeCompraToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Frm_Ordenes_Compra ordenes = new Frm_Ordenes_Compra();
            ordenes.MdiParent = this;
            ordenes.Show();
        }

        private void cierreDiarioToolStripMenuItem_Click(object sender, EventArgs e)
        {
            CerrarFormulariosHijos();
            Frm_Cierre Cierre = new Frm_Cierre();
            Cierre.MdiParent = this;
            Cierre.Show();
        }

        private void pacienteToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Capa_Vista.Frm_Paciente paciente = new Capa_Vista.Frm_Paciente();
            paciente.ShowDialog();
        }
    }
}