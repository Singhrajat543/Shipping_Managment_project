<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" Codefile="TrackProduct.aspx.cs" Inherits="WebApplication1.TrackProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            height: 129px;
        }
        .auto-style3 {
            width: 381px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>

    <table border="1" class="auto-style2">
        <tr>
            <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enter Your TrackID:&nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="38px" Width="194px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" CssClass="btn-success" Text="Track" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;Your TransPotation is in Way at &nbsp;<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;And System Has been Track .It Nearerst To&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
    <br/>
    <br/>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84"  BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Current_Track" HeaderText="Current_Track" SortExpression="Current_Track" />
            <asp:BoundField DataField="Current_Tracking_Tome" HeaderText="Current_Tracking_Tome" SortExpression="Current_Tracking_Tome" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
</asp:GridView>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Shiping_ProjectConnectionString2 %>" SelectCommand="SELECT * FROM [Track_Update]"></asp:SqlDataSource>
    <br/>
    <br/>

</asp:Content>
