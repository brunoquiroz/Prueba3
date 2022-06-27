using Modelos;
using Modelos.DAL;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prueba3
{
    public partial class Default : Page
    {
        private static IMedidorModel MedidorModel = MedidorDalMetodos.GetInstancia();
        /// <summary>
        /// Este metodo se ejecuta 
        /// - Cuando es una peticion GET (!PostBack)
        /// - cunado es una peticion POST (PostBack
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {

        }





        protected void agregarBtn_Click(object sender, EventArgs e)
        {


            string id = this.nombreTxt.Text.Trim();
            int nivel = Convert.ToInt32(this.nivelRbl.SelectedValue);

            List<Medidor> a = MedidorModel.Buscar(this.nombreTxt.Text.Trim());



            if (a.Count == 0)
            {

                Medidor medidor = new Medidor()
                {
                    Id = id,
                    Nivel = nivel,

                };




                MedidorModel.AgregarMedidor(medidor);
                this.mensajeLbl.Text = "Medidor Agregar Exitosamente";
                Response.Redirect("VerMedidores.aspx");


            }
            else
            {

                ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('El medidor ya exite');", true);


            }

        }


    }





}