<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="IngresarLectura.aspx.cs" Inherits="Prueba3.IngresarLectura" %>
<asp:Content ID="Conten1" ContentPlaceHolderID="Contenido" runat="server">

    <div class="row">   
        <div class="col-lg-6 mx-auto">
            <div class="mensajes">
                <asp:Label runat="server" ID="mensajeLbl" CssClass="text-success"></asp:Label>
            </div>
            <div class="card">
                <div class="card-header bg-dark text-white">
                <a href="AgregarLetura.aspx"></a>
                    <h3>Ingresar Lectura</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="idmedidor">Medidor: </label>
                        <asp:DropDownList runat="server" ID="dropdown"  CssClass="form-control">
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label for="nombreTxt">Fecha: </label>
                        <asp:Calendar ID = "Calendar1" runat = "server" SelectionMode="DayWeekMonth"
                            onselectionchanged="Calendar1_SelectionChanged" >
                            </asp:Calendar>                      
                    </div>
                    <div class="form-group">
                        <label for="nombreTxt">Hora: </label>
                        <asp:TextBox ID="hora" CssClass="form-control" runat="server"></asp:TextBox> 
                    </div>
                     <asp:requiredfieldvalidator id="RequiredFieldValidator2" forecolor="Red" errormessage="Ingresa hora" controltovalidate="hora" runat="server">
                </asp:requiredfieldvalidator>
                    <div class="form-group">
                        <label for="nombreTxt">Minutos: </label>
                        <asp:TextBox ID="minutos" CssClass="form-control" runat="server"></asp:TextBox> 
                    </div>
                     <asp:requiredfieldvalidator id="RequiredFieldValidator3" forecolor="Red" errormessage="Ingresa un Minutos" controltovalidate="minutos" runat="server">
                </asp:requiredfieldvalidator>
                    <div class="form-group">
                        <label for="nombreTxt">Valor de consumo: </label>
                        <asp:TextBox ID="valorConsum" CssClass="form-control" runat="server"></asp:TextBox> 
                    </div>
                     <asp:requiredfieldvalidator id="RequiredFieldValidator4" forecolor="Red" errormessage="Ingresa valor lectura" controltovalidate="valorConsum" runat="server">
                </asp:requiredfieldvalidator>         
                    <asp:rangevalidator errormessage="Favor ingresar un numero valido" forecolor="Red" controltovalidate="valorConsum" minimumvalue="1" maximumvalue="600" runat="server">
            </asp:rangevalidator>
                    <asp:rangevalidator errormessage="Formato de la fecha mal ingresado" forecolor="Red" controltovalidate="hora" minimumvalue="0" maximumvalue="24" runat="server">
            </asp:rangevalidator>
                    <asp:rangevalidator errormessage="Por favor ingresar Minutos Validos" forecolor="Red" controltovalidate="minutos" minimumvalue="0" maximumvalue="59" runat="server">
            </asp:rangevalidator>
                    <div class="form-group">
                        <asp:Button runat="server" ID="agregarBtn" Text="Agregar" CssClass="btn btn-primary" OnClick="agregarBtn_Click"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

