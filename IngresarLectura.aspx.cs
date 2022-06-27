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
    public partial class IngresarLectura : System.Web.UI.Page
    {
        private static IMedidorModel MedidorModel = MedidorDalMetodos.GetInstancia();
        private static ILecturaModel LecturaModel = LecturaDALMetodos.GetInstancia();

        /// <summary>
        /// Este metodo se ejecuta 
        /// - Cuando es una peticion GET (!PostBack)
        /// - cunado es una peticion POST (PostBack
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<Medidor> medidor = MedidorModel.ObtenerMedidores();
                this.dropdown.DataSource = medidor;
                this.dropdown.DataTextField = "Id";
                this.dropdown.DataValueField = "Id";
                this.dropdown.DataBind();

            }
        }

        protected void agregarBtn_Click(object sender, EventArgs e)
        {


            //1. Obtener los datos del formulario


            string medidor = this.dropdown.SelectedValue;

            string fecha;


            if (!Calendar1.SelectedDate.ToShortDateString().Equals("01-01-0001"))
            {
                fecha = Calendar1.SelectedDate.ToShortDateString();
            }
            else
            {

                fecha = Calendar1.TodaysDate.ToShortDateString();
            }
            string hora = this.hora.Text.Trim();
            string minutos = this.minutos.Text.Trim();
            string valorConsum = this.valorConsum.Text.Trim();

            string horas = hora + ":" + minutos;

            string fecha2 = fecha + " " + horas;

            //2. construir el objeto de tipo cliente

            Lectura lectura = new Lectura()
            {
                Idmedidor = medidor,
                Fecha = (DateTime)Convert.ChangeType(fecha2, typeof(DateTime)),
                Consumo = valorConsum

            };
            //3. Llamar al DAL
            LecturaModel.AgregarLectura(lectura);
            //4. Mostrar mensajae de exito
            this.mensajeLbl.Text = "Lectura Agregada Exitosamente";
            Response.Redirect("MostrarLecturas.aspx");

        }
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

            string fecha = Calendar1.SelectedDate.ToShortDateString();
        }
    }
}
