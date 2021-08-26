<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" Codefile="ShippingServies.aspx.cs" Inherits="WebApplication1.ShippingServies" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1"  runat="server">
   
    
 <br />
    <br />
   
            <div class="container">
    <div class="row">
        <div class="col-lg-12">
     

    <div class="panel panel-info">
                                    <div class="panel-heading">ShippingServies</div>
                                   
                                        <div class="panel-body">
                                            <label>UPLOAD PHOTOS IN GALLERY</label>
                                            <div class="panel-body" style="background-color:black">
                                                <div class="well well-lg" style="background-color:#411f0e">
                                                    <div class="table-responsive" style="background-color:black">
                                                    <table class="table" style="background-color:black;color:white">

                                                        <tr>
                                                            <td>Customer&nbsp; ID</td>
                                                            <td>
                                                                
                                                                <asp:Label ID="CustomerLbl" runat="server" BackColor="#009933" BorderColor="#00FFCC" BorderStyle="Dashed" BorderWidth="2px" Text="Label" Width="159px"></asp:Label>
                                                                
                                                            </td>
                                                            <td rowspan="8" valign="top">
                                                                <asp:Image ID="Image1" CssClass="form-control img-responsive" alt="Responsive image" runat="server" Width="250px" Height="350px" />
                                                                <center><asp:Label ID="lblProName" runat="server" Text=""></asp:Label></center>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>PRODUCT NAME: </td> 
                                                            <td>
                                                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

                                                                
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Select Cargo Cantainer Type: </td>
                                                            <td>
                                                                <asp:DropDownList ID="DropDownList1" runat="server">
                                                                    <asp:ListItem>Flat Rack Containers</asp:ListItem>
                                                                    <asp:ListItem>Open TopContainers</asp:ListItem>
                                                                    <asp:ListItem>Tunnel Container</asp:ListItem>
                                                                    <asp:ListItem>Side Open Storage Container</asp:ListItem>
                                                                    <asp:ListItem>Refrigerated ISO Containers</asp:ListItem>
                                                                    <asp:ListItem>Insulated or Thermal Containers</asp:ListItem>
                                                                </asp:DropDownList>

                                                                

                                                            </td>
                                                                
                                                        </tr>
                                                       
                                                        <tr>
                                                            <td>Product Picture: </td>
                                                            <td>
                                                                <asp:FileUpload ID="Fileuploadgallery" CssClass="form-control input-sm" runat="server" /><br />
                                                                
                                                                </td>
                                                        </tr>
                                                        <tr>
                                                            <td>PRODUCT DETAILS: 
                                                                <br />
                                                                <br />
                                                                Freight charges In$:<asp:Label ID="Label1" runat="server" CssClass="alert-success" Text="Label"></asp:Label>

                                                                
                                                            </td>
                                                            <td>
                                                           <asp:TextBox ID="txtDetails" CssClass="form-control input-sm" runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox></td>
                                                        </tr>
                                                        <tr>
                                                            <td> &nbsp;Company &amp;&amp;person Name
                                                                <br />
                                                                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;
                                                                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                                                
                                                                
                                                            </td>
                                                           
                                                        
                                                            <td> Weight In Ton<br />
                                                                <asp:TextBox ID="WeightTextBox" placeholder="Weight In Ton" runat="server"></asp:TextBox>

                                                            </td>
                                                              </tr>
                                                            

                                                           
                                                        
                                                        <tr>
                                                        <td> PikUp Date<br />
                                                            <br />
                                                            <br />
                                                            <br />
                                                            <br />
                                                            <br />
                                                            <br />
                                                            <br />
                                                            <asp:Label ID="lblStatus" runat="server" Text="lblStatus"></asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox2" CssClass="form-control input-sm" runat="server"></asp:TextBox>
                                                                <asp:ImageButton ID="ImageButton1" ImageUrl="~/Image/calendar.png" runat="server" Height="19px" Width="24px" OnClick="ImageButton1_Click" />
                                                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" OnSelectionChanged="Calendar1_SelectionChanged" OnDayRender="Calendar1_DayRender" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="125px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="189px">
                                                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                                                            <DayStyle Width="14%" />
                                                            <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                                                            <OtherMonthDayStyle ForeColor="#999999" />
                                                            <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                                                            <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                                                            <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                                                            <TodayDayStyle BackColor="#CCCC99" />
                                                                </asp:Calendar>
                                                                
                                                                
                                                                

                                                        </td>
                                                            </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Button ID="Upload" runat="server" CssClass="btn-primary"  Text="Upload" OnClick="Upload_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                <asp:Button ID="Cancel" runat="server" CssClass="btn-danger" Text="Cancel" />
                                                            </td>
                                                            <td>
                                                                <asp:Button ID="Retrive" CssClass="btn-success" runat="server" Text="Retrive" OnClick="Retrive_Click"   />
                                                                
                                                            </td>
                                                        </tr>

                                                    </table>
                                                        </div>
                                                </div>
                                            </div>
                                        </div>

                                    
                                </div>

            </div>
        </div>
              
        </div>
    
      
   
</asp:Content>
