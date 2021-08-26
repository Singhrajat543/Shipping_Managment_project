<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" Codefile="UserGallary.aspx.cs" Inherits="WebApplication1.UserGallary" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
    <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
        <ItemTemplate>
                    <div class="col-sm-6 col-md-4">
                        <div class="thumbnail">

                            <asp:Image ID="Image1"  Height="300" runat="server" />
                             <div class="table-responsive">
                                    <table class="table table-hover">
                                        <div class="caption">
                                            <tr>
                                                <td><b>ID:</b></td>
                                                <td>
                                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><b>Product:</b></td>
                                                <td>
                                                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

                                                    </td>
                                                 </tr>
                                            <tr>
                                                <td><b>Cantainer</b></td>
                                                <td>
                                                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>

                                                    </td>
                                            </tr>
                                            <tr>
                                                <td><b>Company</b></td>
                                                <td>
                                                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                                      </td>
                                            </tr>
                                            <tr>
                                                <td><b>Name</b></td>
                                                <td>
                                                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                                                     </td>
                                            </tr>
                                             <tr>
                                                <td><b>Booking_Date</b></td>
                                                <td>
                                                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                                    </td>
                                            </tr>
                                             <tr>
                                                <td><b>Weight_in_Ton</b></td>
                                                <td>
                                                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                                                      </td>
                                            </tr>
                                            <tr>
                                                <td><b>PayAmmount</b></td>
                                                <td>
                                                    <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                                                     </td>
                                            </tr>

                                        </div>
                                    </table>
                                </div>
                            </div>
                                <p>

<%--                                    <asp:LinkButton ID="LinkButton2" runat="server" class="btn btn-danger" PostBackUrl='<%#"~/UserAccount/OrderCart.aspx?PID="+Eval("PID") %>'>BUY</asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-primary" PostBackUrl='<%#"~/UserAccount/Usergallery.aspx?PID="+Eval("PID") %>' OnClick="LinkButton1_Click">ADD TO CART</asp:LinkButton>--%>
                                </p>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
    </asp:Repeater>
    


</asp:Content>
