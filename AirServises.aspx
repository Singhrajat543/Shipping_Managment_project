<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" Codefile="AirServises.aspx.cs" Inherits="WebApplication1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
                                                                
                                                                <asp:Label ID="Label2" runat="server" BackColor="#003300" BorderColor="#003300" BorderStyle="Dashed" ForeColor="#66FF66" Text="Label" Width="143px"></asp:Label>
                                                                
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
                                                                    <asp:ListItem>LD1</asp:ListItem>
                                                                    <asp:ListItem>LD2</asp:ListItem>
                                                                    <asp:ListItem>LD3-45</asp:ListItem>
                                                                    <asp:ListItem>LD7(2 Pallet Variant)</asp:ListItem>
                                                                    <asp:ListItem></asp:ListItem>
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
                                                                Freight charges In$:<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                                            </td>
                                                            <td>
                                                           <asp:TextBox ID="txtDetails" CssClass="form-control input-sm" runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox></td>
                                                        </tr>
                                                        <tr>
                                                            <td> Enter Company/person Name
                                                                <br />
                                                                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                                                /<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                                                                
                                                                
                                                            </td>
                                                           
                                                        
                                                            <td> Weight In per 10 kg<br />
                                                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                                                <br />
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
                                                            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox2" CssClass="form-control input-sm" runat="server"></asp:TextBox>
                                                                <asp:ImageButton ID="ImageButton1" ImageUrl="~/Image/calendar.png" runat="server" Height="19px" Width="24px" OnClick="ImageButton1_Click" />
                                                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" OnSelectionChanged="Calendar1_SelectionChanged1"  DayNameFormat="Shortest"  OnDayRender="Calendar1_DayRender" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="125px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="189px">
                                                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                                                            <DayStyle Width="14%" />
                                                            <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                                                            <OtherMonthDayStyle ForeColor="#999999" />
                                                            <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                                                            <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt"  ForeColor="#333333" Width="1%" />
                                                            <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                                                            <TodayDayStyle BackColor="#CCCC99" />
                                                                </asp:Calendar>
                                                                
                                                                
                                                                

                                                        </td>
                                                            </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Button ID="Upload" runat="server" CssClass="btn-primary" OnClick="Upload_Click" Text="Upload" />
&nbsp;&nbsp;
                                                                <asp:Button ID="Cancel" runat="server" CssClass="btn-danger" Text="Cancel" />
                                                            </td>
                                                            <td>
                                                                <asp:Button ID="Retrive" CssClass="btn-success" runat="server" Text="Retrive" OnClick="Retrive_Click" />
                                                                
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
