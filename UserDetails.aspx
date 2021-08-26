<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" Codefile="UserDetails.aspx.cs" Inherits="WebApplication1.UserDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br/>
    <br/>
        <br />
    <br />
    <div class="container">
        <br/>
<%--  OnTextChanged="txtsearch_TextChanged"--%>
        <div>
            <asp:TextBox ID="txtsearch" CssClass="form-control" runat="server" AutoPostBack="True" OnTextChanged="txtsearch_TextChanged"
                placeholder="Search Products by Customer_ID , ServicesType, ProductName ETC or by Name,Weight,Company or by Price"></asp:TextBox>


            <br/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnsearch" CssClass="btn btn-success" runat="server" Text="Search" OnClick="btnsearch_Click" Width="276px" />
            <asp:Label ID="Label6" runat="server" Text="Label" Visible="false" ></asp:Label>
        <br/>
        </div>
        <br/>

      <%--  <div class="card" style="width: 18rem;">
  <%--<img class="card-img-top" src="..." alt="Card image cap">
<asp:Image ID="Image1"  class="card-img-top" runat="server" Width="250px" Height="350px" />
            
  <div class="card-body">
      <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item">
      <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></li>
    <li class="list-group-item">
      <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></li>
    <li class="list-group-item">
      <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></li>
  </ul>
  <div class="card-body">
    <a href="#" class="card-link">Card link</a>
    <a href="#" class="card-link">Another link</a>
  </div>
</div>
      --%>  
        
        <div>
            <asp:Repeater ID="Repeater1" runat="server"  >
<ItemTemplate >
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
  <asp:image ID="Image1" runat="server" ImageUrl ="UserDetails.aspx?ImageID=1"/>

<asp:image ID="Image2" runat="server" ImageUrl ="UserDetails.aspx?ImageID=2"/>

<asp:image ID="Image3" runat="server" ImageUrl ="UserDetails.aspx?ImageID=3"/>


                        <div class="caption">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <div class="caption">
                                        <tr>
                                            <td><b>ID:</b></td>
                                            <td>
                                                <asp:Label ID="Label9" runat="server" Text='<%#Eval("Customer_ID")%>'></asp:Label>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td><b>ServiceType</b></td>
                                            <td>
                                                <asp:Label ID="Label8" runat="server" Text='<%#Eval("ServiceTypes")%>'></asp:Label>

                                            </td>
                                        </tr>
                                        
                                        <tr>
                                            <td><b>Product:</b></td>
                                            <td>
                                                <asp:Label ID="lblSize" runat="server" Text='<%#Eval("PRODUCT_NAME")%>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><b>Cantainer</b></td>
                                            <td>
                                                <asp:Label ID="lblPrice" runat="server" Text='<%#Eval("Cargo_Cantainer")%>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><b>PRODUCT_DETAILS</b></td>
                                            <td>
                                                <asp:Label ID="Label7" runat="server" Text='<%#Eval(" PRODUCT_DETAILS ")%>'></asp:Label>
                                              
                                            </td>
                                        </tr>
                                        
                                        <tr>
                                            <td><b>Company</b></td>
                                            <td>
                                                <asp:Label ID="Label1" runat="server" Text='<%#Eval("Company")%>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><b>Name</b></td>
                                            <td>
                                                <asp:Label ID="Label2" runat="server" Text='<%#Eval("Name")%>'></asp:Label>
                                            </td>
                     </tr>
                                        <tr>
                                            <td><b>Booking_Date</b></td>
                                            <td>
                                                <asp:Label ID="Label3" runat="server" Text='<%#Eval("PikUp_Date")%>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><b>Weight_in_Ton</b></td>
                                            <td>
                                                <asp:Label ID="Label4" runat="server" Text='<%#Eval("Weights")%>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><b>PayAmmount</b></td>
                                            <td>
                                                <asp:Label ID="Label5" runat="server" Text='<%#Eval("Freight_Charges")%>'></asp:Label>
                                            </td>
                                        </tr>

                                    </div>
                                </table>
                            </div>
                            <p>

                                  <%-- <asp:LinkButton ID="LinkButton2" runat="server" class="btn btn-danger" PostBackUrl='<%#"~/UserAccount/OrderCart.aspx?PID="+Eval("PID") %>'>BUY</asp:LinkButton>--%>
                                    <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-primary" Text="Wherhouse" Width="100px"  PostBackUrl='<%#"~/UserDetails.aspx?PRODUCT_DETAILS="+Eval("PRODUCT_DETAILS") %>' OnClick="LinkButton1_Click"></asp:LinkButton>


                            </p>
                        </div>
                    </div>
                </div>
                </ItemTemplate>
                </asp:Repeater>
        </div>
    </div>



</asp:Content>
