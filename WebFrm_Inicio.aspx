<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFrm_Inicio.aspx.cs" Inherits="WebChamadas.WebFrm_Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {}
        .auto-style1 {
            font-size: xx-large;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p class="auto-style1" style="margin-left: 40px">
            <strong>Sistema de Recados</strong></p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Id_usuario" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="37px" style="text-align: left" Width="539px">
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="Id_usuario" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Id_usuario" />
                <asp:BoundField DataField="Txt_CPF" HeaderText="Cpf" SortExpression="Txt_CPF" />
                <asp:BoundField DataField="Txt_email" HeaderText="E-mail" SortExpression="Txt_email" />
                <asp:BoundField DataField="Txt_Senha" HeaderText="Senha" SortExpression="Txt_Senha" />
                <asp:CommandField ButtonType="Button" CancelText="" InsertText="Salvar" ShowCancelButton="False" ShowInsertButton="True" >

                <ControlStyle BackColor="#000066" ForeColor="White" />
                <FooterStyle BackColor="#000066" Font-Names="Britannic Bold" ForeColor="White" />
                <HeaderStyle ForeColor="White" />
                <ItemStyle ForeColor="White" />
                </asp:CommandField>
            </Fields>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:DetailsView>
       
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebFrm_Recados.aspx">Recados</asp:HyperLink>
       
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegChamadasConnectionString %>" DeleteCommand="DELETE FROM [Tb_usurios] WHERE [Id_usuario] = @Id_usuario" InsertCommand="INSERT INTO [Tb_usurios] ([Txt_CPF], [Txt_email], [Txt_Senha]) VALUES (@Txt_CPF, @Txt_email, @Txt_Senha)" SelectCommand="SELECT * FROM [Tb_usurios]" UpdateCommand="UPDATE [Tb_usurios] SET [Txt_CPF] = @Txt_CPF, [Txt_email] = @Txt_email, [Txt_Senha] = @Txt_Senha WHERE [Id_usuario] = @Id_usuario">
            <DeleteParameters>
                <asp:Parameter Name="Id_usuario" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Txt_CPF" Type="String" />
                <asp:Parameter Name="Txt_email" Type="String" />
                <asp:Parameter Name="Txt_Senha" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Txt_CPF" Type="String" />
                <asp:Parameter Name="Txt_email" Type="String" />
                <asp:Parameter Name="Txt_Senha" Type="String" />
                <asp:Parameter Name="Id_usuario" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
     <a href="Registos.html">Voltar</a>
</body>
</html>
