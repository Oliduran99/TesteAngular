<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFrm_Recados.aspx.cs" Inherits="WebChamadas.WebFrm_Recados" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <p class="auto-style2" style="margin-left: 40px">
            <strong><span class="auto-style1">Cadastro de Recados </span></strong>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Width="110px"></asp:TextBox>
        </p>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Id_Cadastro" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical" style="text-align: left" Width="855px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="Id_Cadastro" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id_Cadastro" />
                <asp:BoundField DataField="Id_usuario" HeaderText="Id" SortExpression="Id_usuario" Visible="False" />
                <asp:BoundField DataField="Txt_Nome" HeaderText="Nome" SortExpression="Txt_Nome" />
                <asp:BoundField DataField="Num_Telefone" HeaderText="Telefone" SortExpression="Num_Telefone" />
                <asp:BoundField DataField="Int_Prioridade" HeaderText="Prioridade" SortExpression="Int_Prioridade" />
                <asp:BoundField DataField="Txt_Messagem" HeaderText="Messagem" SortExpression="Txt_Messagem" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RegChamadasConnectionString %>" DeleteCommand="DELETE FROM [Tb_Cadastro] WHERE [Id_Cadastro] = @Id_Cadastro" InsertCommand="INSERT INTO [Tb_Cadastro] ([Id_usuario], [Txt_Nome], [Num_Telefone], [Int_Prioridade], [Txt_Messagem], [Dt_Data]) VALUES (@Id_usuario, @Txt_Nome, @Num_Telefone, @Int_Prioridade, @Txt_Messagem, @Dt_Data)" SelectCommand="SELECT * FROM [Tb_Cadastro]" UpdateCommand="UPDATE [Tb_Cadastro] SET [Id_usuario] = @Id_usuario, [Txt_Nome] = @Txt_Nome, [Num_Telefone] = @Num_Telefone, [Int_Prioridade] = @Int_Prioridade, [Txt_Messagem] = @Txt_Messagem, [Dt_Data] = @Dt_Data WHERE [Id_Cadastro] = @Id_Cadastro">
            <DeleteParameters>
                <asp:Parameter Name="Id_Cadastro" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id_usuario" Type="Int32" />
                <asp:Parameter Name="Txt_Nome" Type="String" />
                <asp:Parameter Name="Num_Telefone" Type="String" />
                <asp:Parameter Name="Int_Prioridade" Type="Int32" />
                <asp:Parameter Name="Txt_Messagem" Type="String" />
                <asp:Parameter DbType="Date" Name="Dt_Data" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Id_usuario" Type="Int32" />
                <asp:Parameter Name="Txt_Nome" Type="String" />
                <asp:Parameter Name="Num_Telefone" Type="String" />
                <asp:Parameter Name="Int_Prioridade" Type="Int32" />
                <asp:Parameter Name="Txt_Messagem" Type="String" />
                <asp:Parameter DbType="Date" Name="Dt_Data" />
                <asp:Parameter Name="Id_Cadastro" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Id_Cadastro" DataSourceID="SqlDataSource2" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" Width="507px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="Txt_Nome" HeaderText="Nome" SortExpression="Txt_Nome" />
                <asp:BoundField DataField="Num_Telefone" HeaderText="Telefone" SortExpression="Num_Telefone" />
                <asp:BoundField DataField="Int_Prioridade" HeaderText="Prioridade" SortExpression="Int_Prioridade" />
                <asp:BoundField DataField="Txt_Messagem" HeaderText="Messagem" SortExpression="Txt_Messagem" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" ButtonType="Button" >
                <ControlStyle BackColor="#000099" ForeColor="White" />
                <FooterStyle Font-Names="Bauhaus 93" ForeColor="White" />
                <HeaderStyle ForeColor="White" />
                <ItemStyle ForeColor="White" />
                </asp:CommandField>
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebFrm_Inicio.aspx">Voltar</asp:HyperLink>
    </form>
</body>
</html>
