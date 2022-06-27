<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="VerMedidores.aspx.cs" Inherits="Prueba3.VerMedidores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">
    <div class="row">
        <div class="col-lg-6 mx-auto">
            <div class="card">
                <div class="card-header bg-danger text-white">
                    <h3>Ver Medidores</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for ="nivelDdl"> Filtrar por Nivel: </label>
                        <asp:DropDownList AutoPostBack="true" onSelectedIndexChanged="nivelDdl_SelectedIndexChanged" runat="server" ID="nivelDdl">
                            <asp:ListItem Value="1" Text="Agua"></asp:ListItem>
                            <asp:ListItem Value="2" Text="Luz"></asp:ListItem>
                        </asp:DropDownList>
                    </div> 
                    <asp:GridView CssClass="table table-hover table-bordered mt-5" 
                        OnRowCommand="grillaMedidores_RowCommand"
                        EmptyDataText="No hay Medidores" ShowHeader="true"
                        AutoGenerateColumns="false" runat="server" ID="grillaMedidores">
                       <Columns>
                           <asp:BoundField DataField="Id" HeaderText="Id Medidor" />                        
                           <asp:BoundField DataField="NivelTxt" HeaderText="Tipo de Medidor" />                          
                       </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
   
</asp:Content>

