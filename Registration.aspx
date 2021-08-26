<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebApplication1.Registration" %>

<!DOCTYPE html>

<html >
<head runat="server">
    
    <meta charset="utf-8" />
    <link href="StyleSheet1.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <title></title>
    <style>
        .cover {
            background:url("Image/391339.jpg");
            background-repeat: no-repeat;
  
               

        }



    </style>
    </head>
<body class="cover">
    <form id="form1" runat="server">
       <div class="container">
                        <div class="row" style="width:900px;margin-left:15vw " >

                            <div class="col-lg-12 col-md-12 col-sm-12">
                        <div class="panel panel-primary">  
                       <div class="panel-heading" style="background-color:black">
                           <p class="text-center"><strong>Registration Application</strong></p>
                           </div>             
               <div class="panel-body">
                    <marquee><b>Registore Your Name Or Company Name To Get Login ID</b></marquee>
                <div class="well well-lg">
                  <div class="row">

                                             <div class=" col-xs-10 col-md-10 col-sm-10">
                    <div class="row">
                        <div class=" col-xs-8 col-md-8 col-sm-8">
                            <asp:Label ID="Label1" runat="server" Text="Name:-"></asp:Label>
                           
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           
                          <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>

                        &nbsp;</div>
                    </div>
                                                 <br/>
                    <div class="row">
                        <div class=" col-xs-8 col-md-8 col-sm-8">
                           <asp:Label ID="Label2" runat="server" Text="SirName:-"></asp:Label>
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </div>
                    </div>
                                                 <br/>
                    <div class="row">
                        <div class=" col-xs-8 col-md-8 col-sm-8">
                           <asp:Label ID="Label3" runat="server" Text="Select Gender:-"></asp:Label>
                             
                        &nbsp;&nbsp;&nbsp;
                             &nbsp;</div>
                    </div>
                                                 <br/>
                    <div class="row">
                        <div class=" col-xs-8 col-md-8 col-sm-8">
                            <asp:Label ID="Label4" runat="server" Text="Mobile No:-"></asp:Label>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                              </div>
                    </div>
<br/>
                               <div class="row">
                        <div class=" col-xs-8 col-md-8 col-sm-8">
                            <asp:Label ID="Label8" runat="server" Text="EmailId:-"></asp:Label>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                          <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                        </div>
                    </div>
                                                 <br/>

                    <div class="row">
                        <div class=" col-xs-8 col-md-8 col-sm-8">
                            <asp:Label ID="Label5" runat="server" Text="Company Name:-"></asp:Label>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                        </div>
                    </div>
<br/>
                            <div class="row">
                        <div class=" col-xs-8 col-md-8 col-sm-8">
                            <asp:Label ID="Label6" runat="server" Text="Enter Password:-"></asp:Label>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </div>
                    </div>
<br/>
                            <div class="row">
                        <div class=" col-xs-8 col-md-8 col-sm-8">
                            <asp:Label ID="Label7" runat="server" Text="Confirm Password:-"></asp:Label>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>

                        </div>
                    </div>

<br/>

                            <br />
                                 <div class="row">
                                     <div class=" col-xs-10 col-md-10 col-sm-10">
                                            <asp:Button ID="Button1" runat="server" Text="Button" />
                                         </div> 
                                     
                                     
                                     


                                     
                    </div>
                          </div>
                            </div>
                       </div>
                    </div>
                       </div>
                        </div>
                            
                            </div>

                     </div>

           
        <footer class="page-footer center-on-small-only  blue-grey lighten-5  pt-0">
                <div style="background-color: #3ab1e9;">
        <div class="container">
            <br />
            <br />
            <br />

            <!--Grid row-->
            <div class="row py-4 d-flex align-items-center">

                <!--Grid column-->
                <div class="col-md-6 col-lg-5 text-center text-md-left mb-4 mb-md-0">
                  <p class="text-center"><strong style="padding:7px; padding-left:4em; position:relative">ShippingLogistic.com</strong></p>
                </div>
    </div>
            </div>
                    </div>
            
        </footer>
    </form>
        <script src="js/bootstrap.js"></script>

</body>
</html>
