<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ThirdParty.aspx.cs" Inherits="WebApplication1.ThirdParty" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
            <table class="table table-sm table-inverse">
  <thead>
    <tr>
      <th class="bg-danger">#</th>
      <th class="bg-primary">First Name</th>
      <th class="bg-primary">Last Name</th>
     
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row" class="bg-danger">1</th>
      <td class="bg-info">PRODUCT Avalible:</td>
      <td class="bg-warning"><asp:DropDownList ID="DropDownList1" runat="server">
              <asp:ListItem>Avalible</asp:ListItem>
              </asp:DropDownList></td>
     
    </tr>
    <tr>
      <th scope="row" class="bg-danger">2</th>
      <td class="bg-info">Select Truck Type:</td>
      <td class="bg-warning"><asp:DropDownList ID="DropDownList2" runat="server">
           <asp:ListItem>Truck Type</asp:ListItem>
           </asp:DropDownList></td>
     
    </tr>
    <tr>
      <th scope="row" class="bg-danger">3</th>
      <td class="bg-info">Truck Driver: </td>
      <td class="bg-warning"><asp:DropDownList ID="DropDownList3"  runat="server">
           <asp:ListItem>Truck Driver</asp:ListItem>
            </asp:DropDownList></td>
    </tr>
<tr>
<th scope="row" class="bg-danger">4</th>
<td class="bg-info"> PRODUCT DETAILS: </td>
<td class="bg-warning">  <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> </td>


</tr>
<tr>
<th scope="row" class="bg-danger">5</th>
<td class="bg-info">Select Distributer&nbsp; Company:</td>
<td class="bg-warning"><asp:DropDownList ID="DropDownList4" runat="server">
     <asp:ListItem Enabled="False">Distributers</asp:ListItem>
       <asp:ListItem>Truckeys</asp:ListItem>
       <asp:ListItem>DHLF</asp:ListItem>
      <asp:ListItem>RoadKing</asp:ListItem>
       </asp:DropDownList>
</td>

</tr>
<tr>
<th scope="row" class="bg-danger">6</th>
<td class="bg-info bg-success">
 From Port:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
</td>
<td class="bg-warning">
 To Port:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
    <th scope="row" class="bg-danger">7</th>

<td> <asp:Button ID="Button2" CssClass="btn-success" runat="server" Text="Button" /></td>
</tr>

  </tbody>
</table>
                
</asp:Content>



