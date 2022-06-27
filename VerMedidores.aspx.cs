using Modelos;
using Modelos.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prueba3
{
    public partial class VerMedidores : System.Web.UI.Page
    {
        private static IMedidorModel MedidorModel = MedidorDalMetodos.GetInstancia();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarGrilla();
            }

        }

        private void cargarGrilla()
        {
            List<Medidor> medidor = MedidorModel.ObtenerMedidores();

            this.grillaMedidores.DataSource = medidor;
            this.grillaMedidores.DataBind();
        }

        private void cargaGrilla(List<Medidor> filtrada)
        {
            List<Medidor> medidor = MedidorModel.ObtenerMedidores();
            this.grillaMedidores.DataSource = filtrada;
            this.grillaMedidores.DataBind();
        }


        protected void grillaMedidores_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void nivelDdl_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (this.nivelDdl.SelectedItem != null)
            {
                int nivel = Convert.ToInt32(this.nivelDdl.SelectedItem.Value);
                //filtrar por nivel
                List<Medidor> filtrada = MedidorModel.Filtrar(nivel);
                cargaGrilla(filtrada);
            }
        }



    }











}
