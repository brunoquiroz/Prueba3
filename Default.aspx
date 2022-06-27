<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Prueba3.Default" %>

   
<asp:Content ID="Conten1" ContentPlaceHolderID="Contenido" runat="server">    
    <div class="row">    
        <div class="col-lg-6 mx-auto">
            <div class="mensajes">
                <asp:Label runat="server" ID="mensajeLbl" CssClass="text-success"></asp:Label>
            </div>
            <div class="card">
                <div class="card-header bg-dark text-white">
                 <a href="Default.aspx">Default.aspx</a>
                    <h3>Agregar Medidores</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="nombreTxt">ID Medidor: </label>
                        <asp:TextBox ID="nombreTxt" CssClass="form-control" runat="server" onkeypress ="javascript:return solonumeros(event)">
                        </asp:TextBox>                          
                    </div>                         
                     <div class="form-group">
                        <label for="nivelRbl">Nivel</label>
                        <asp:RadioButtonList runat="server" ID="nivelRbl">
                            <asp:ListItem Selected="True" Value="1" Text="Agua"></asp:ListItem>
                            <asp:ListItem Value="2" Text="Luz"></asp:ListItem>                            
                        </asp:RadioButtonList>
                    </div>                       
                <asp:requiredfieldvalidator id="RequiredFieldValidator1" forecolor="Red" errormessage="Ingresa un Medidor" controltovalidate="nombreTxt" runat="server">
                </asp:requiredfieldvalidator>
                    <div class="form-group">
                        <asp:Button runat="server" ID="agregarBtn" Text="Agregar" CssClass="btn btn-primary" OnClick="agregarBtn_Click"/>
                    </div>
                    <script>
        function solonumeros(e) { 
            var key;
            if (window.event) // IE
            {
                key = e.keyCode;
            }
            else if (e.which) // Netscape/Firefox/Opera
            {
                key = e.which;
            }
 
            if (key < 48 || key > 57) {
                return false;
            }
            return true;
        }
                    </script>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
