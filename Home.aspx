 <%@ Page Language="C#" AutoEventWireup="true" Codefile="Home.aspx.cs" Inherits="WebApplication1.Home" %>

<!DOCTYPE html>

<html >
<head id="Head1" runat="server">
     <meta charset="utf-8" />

    <link href="home.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <link href="local.css" rel="stylesheet" />
    
    
 
    <link href="css/font-awesome.min.css" rel="stylesheet" />
 
    <script src="Jquery/Jquery.js" type="text/javascript" ></script>
    <script src="Jquery/jquery.cycle.all.js" type="text/javascript" ></script>
  <script type="text/javascript">
      $(document).ready(function () {

          $('.carousel').carousel({
              interval: 1900

          });
      }

   )
      $(document).ready(function () {
          $("#MyModal").modal();
      });

  </script>


    <title></title>
      
</head>

  

<body class="cover">

    <form id="form1" runat="server">
       <div>
           <div id="wrapper">
            <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                <div class="navbar-header">
                    <a class="navbar-brand" href="Home1.aspx"></a>
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        </button>
                </div>
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <br />
                    <%--<ul class="nav navbar-nav side-nav">
                    <li class="active"><a href="index.html"><i class="fa fa-bullseye"></i> Dashboard</a></li>
                    <li><a href="portfolio.html"><i class="fa fa-tasks"></i> Portfolio</a></li>
                    <li><a href="blog.html"><i class="fa fa-globe"></i> Blog</a></li>
                    <li><a href="signup.html"><i class="fa fa-list-ol"></i> SignUp</a></li>
                    <li><a href="register.html"><i class="fa fa-font"></i> Register</a></li>
                    <li><a href="timeline.html"><i class="fa fa-font"></i> Timeline</a></li>
                    <li><a href="forms.html"><i class="fa fa-list-ol"></i> Forms</a></li>
                    <li><a href="typography.html"><i class="fa fa-font"></i> Typography</a></li>
                    <li><a href="bootstrap-elements.html"><i class="fa fa-list-ul"></i> Bootstrap Elements</a></li>
                    <li><a href="bootstrap-grid.html"><i class="fa fa-table"></i> Bootstrap Grid</a></li>
                </ul>--%>
                    <ul class="nav navbar-nav navbar-right navbar-user">
                        <a class="navbar-brand" style="margin-right:160px" href="Home.aspx">
                         <span><img alt="logo" height="45"  id="logo" src="Image/logo.png" /></span></a>
                    

                        <li>
                            
                        <a href="../Home.aspx"><span class="glyphicon glyphicon-home"></span>HOME</a></li>
                        <li><a href="Aboutus.aspx">ABOUT US </a></li>
                        <li><a href="UserDetails.aspx">GALLERY</a></li>
                        <li><a href="Route.aspx">RouteCheck</a></li>
                        <li><a href="Yatra.aspx">Services</a></li>
                        <li><a href="TrackProduct.aspx">TrackContainer</a></li>
                        <li><a href="audiopage.aspx">Analysis</a></li>
                        <li><a href="contact.aspx">Admin</a></li>
                         <li><asp:HyperLink ID="HyperLinkcart" runat="server" BackColor="Transparent" Font-Bold="True"
                                    Font-Names="Verdana" Font-Size="12px" ForeColor="White" NavigateUrl="cart.aspx"
                                    Font-Underline="False">Cart( <asp:Label ID="lblcartinc" runat="server"></asp:Label> Item)</asp:HyperLink></li>
                        <asp:Label ID="lbllog" runat="server" Font-Bold="false" Font-Size="Medium" ForeColor="White"></asp:Label>
                        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="false" Font-Size="Medium" ForeColor="White" ></asp:LinkButton>

                        <%-- <li class="dropdown messages-dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> Messages <span class="badge">2</span> <b class="caret"></b></a>
                        <ul class="dropdown-menu">.
                            <li class="dropdown-header">2 New Messages</li>
                            <li class="message-preview">
                                <a href="#">
                                    <span class="avatar"><i class="fa fa-bell"></i></span>
                                    <span class="message">Security alert</span>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li class="message-preview">
                                <a href="#">
                                    <span class="avatar"><i class="fa fa-bell"></i></span>
                                    <span class="message">Security alert</span>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="#">Go to Inbox <span class="badge">2</span></a></li>
                        </ul>
                    </li>
                     <li class="dropdown user-dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Steve Miller<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#"><i class="fa fa-user"></i> Profile</a></li>
                            <li><a href="#"><i class="fa fa-gear"></i> Settings</a></li>
                            <li class="divider"></li>
                            <li><a href="#"><i class="fa fa-power-off"></i> Log Out</a></li>
                        </ul>
                    </li>--%>
                    </ul>
                </div>
            </nav>
        </div>
    <%--<div class="navbar navbar-default navbar-fixed-top navbar-coustom ">
            <div class="container">    
                <div class="navbar-header ">
                    <button type="button" class="navbar-toggle" data-toggle="collapse"data-target=".navbar-collapse" >
                        <span class="sr-only">Toggle Navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        </button>
                    <a class="navbar-brand" href="Home.aspx">
                        <span><img alt="logo" height="45"  id="logo" src="Image/logo.png" /></span></a>
                    </div>
        <div class="navbar-collapse collapse" id="ulheight"  >
            <ul role="button" >

                <li><a>Home</a></li>
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Area <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">AirServices</a></li>
                        <li><a href="#">ShipServices</a></li>
                        <li><a href="#">Distributers</a></li>
                    </ul>
                </li>

                <li><a href="AnalaysisWeb.aspx">Statics of business</a></li>
                <li><a>Track Id</a></li>
                <li><a>Log Out</a></li>
                 <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
            </ul>
           
                </div>
            </div>
        </div>--%>
         
        
      
         
        
      
         
                 
          
    <br/>
   
     <div class="container">
     <div class="page-header">
 <div class="corner-ribbon top-left sticky red shadow">Air</div>
<div class="corner-ribbon top-right sticky orange">Shipping</div>
<%--<div class="corner-ribbon bottom-left sticky blue">Air</div>--%>
<div class="corner-ribbon bottom-right sticky green shadow">Road</div>

        
             

       
            <div id="myCoursel" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#myCoursel" data-slide-to="0"></li>
                    <li data-target="#myCoursel" data-slide-to="1"></li>
                    <li data-target="#myCoursel" data-slide-to="2"></li>
                    <li data-target="#myCoursel" data-slide-to="3"></li>
                </ol>
                <div class="carousel" >
                    <div class="carousel-inner" >                       
                        <div class="item active" >
                            <img src="Image/imgonline-com-ua-resize-N5hYquTjPK0L.jpg"  height="500"  class="img-responsive" />
                        </div>
                        <div class="item" >
                            <img src="Image/sailing-boat-1593613_640.jpg" height="500"   class="img-responsive" />
                        </div>
                        <div class="item" id="imglide">
                            <img src="Image/ship.jpg" height="500"  class="img-responsive" />
                        </div> 
                          <div class="item">
                            <img src="Image/airplane-2567150_640.jpg" height="500"  class="img-responsive" />
                        </div> 
                    </div>

                   <%-- <a class="left carousel-control" href="#myCoursel" data-slide="prev">
                        <span class="icon-prev"></span></a>
                    <a class="right carousel-control" href="#myCoursel" data-slide="next">
                        <span class="icon-next"></span></a>--%>
                </div>
            </div>
             </div>
      



           


        
      </div>
    </div>
  
   
    <!-----Tool------->
    

    <nav class="navbar navbar-inverse" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
        
                        <span>  
        <a class="navbar-brand" href="Home.aspx">
                        <img alt="logo" height="45"  id="Img2"  src="Image/logo.png" /></a> </span>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:DropDownList ID="DropDownList1"  runat="server" Height="45px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem Selected="True">ServiceType</asp:ListItem>
            <asp:ListItem>Shipping Container</asp:ListItem>
            <asp:ListItem>Air Container</asp:ListItem>
        </asp:DropDownList>
      

    
          <asp:TextBox ID="TextBox1" runat="server" placeholder="EnterPickUpCity"  Height="45px"></asp:TextBox>
    
      
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Pickup City"></asp:RequiredFieldValidator>
    
      
      </div>
      

     
          <asp:TextBox ID="TextBox2" runat="server" Height="45px" placeholder="EnterDropCity" Width="127px"></asp:TextBox>



       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Drop City"></asp:RequiredFieldValidator>



       <asp:DropDownList ID="DropDownList2" runat="server" placeholder="ContainerType" Height="45px" >
            <asp:ListItem>ContainerType</asp:ListItem>
            <asp:ListItem>Larg_Container</asp:ListItem>
            <asp:ListItem>Meadim_Container</asp:ListItem>
            <asp:ListItem>Extra_Large_Container</asp:ListItem>
            <asp:ListItem>Small_Container</asp:ListItem>
        </asp:DropDownList>
     

        <a>  <asp:Button ID="Button1"  runat="server" style="color:gold" Height="40px"  Text="Next" Width="97px" OnClick="Button1_Click" /></a>
    
        
      

     

    </div>
      
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      </div>
        
              
</nav>
        <hr/>
         <div class="container">
                    <div class="row">

                <img src="Image/Air.jpg" class="img-responsive" alt="Responsive image" style="float:left; width: 279px;" onmouseover= "src='Image/Airlogistic.png'" onmouseout="src='Image/airplane-2567150_640.jpg'" >
                  
                  <h4 ><p class="text-center" ><u>”Third Parties Road Traspotation ”</u></p></h4>
                    
                
                  <p class="row" style="color:white">We have some Third Parties Traspotation Company Which deal With Ground Level On Various Countries
                      Our Road Freight Products offer high quality road transportation, from standard services such as LTL (Less-than-Truck Load), PTL (Part) or
                       FTL (Full-Truck Load) shipments to temperature controlled and highly secured transports.
                      With over 5000 dedicated fleet of vehicles with trained drivers plying every day, we cover 10 lakh kilometers (on an average) in the entire country. We are believed to be the best in catering to any transportation requirement across the country with fast, efficient and express logistics services.

                    Rendering to the needs of clients, we are engaged in offering reliable surface services with seamless connectivity through a
                    dedicated fleet of trucks. The company has carved a niche in the field of surface services, making safe goods transportations
                    from the doorstep to the desired destinations. We believe in maintaining transparency with an advanced track & trace system, which 
                    helps clients in maintaining the movement of goods.
                  </p>
                  </div>
                          
          
             </div>
                          
           
        <br />
        <div class="container">
                        <div class="row">

                         
                <img src="Image/sailing-ship-659758_640.jpg" class="img-responsive" alt="Responsive image" style="float:left; width: 279px;" onmouseover= "src='Image/cargo-seanew.png'" onmouseout="src='Image/sailing-ship-659758_640.jpg'">
                  
                  <h4 ><p class="text-center" ><u>”Third Parties Road Traspotation ”</u></p></h4>
                    
                
                  <p class="row" style="color:white">We have some Third Parties Traspotation Company Which deal With Ground Level On Various Countries
                      Our Road Freight Products offer high quality road transportation, from standard services such as LTL (Less-than-Truck Load), PTL (Part) or
                       FTL (Full-Truck Load) shipments to temperature controlled and highly secured transports.
                      With over 5000 dedicated fleet of vehicles with trained drivers plying every day, we cover 10 lakh kilometers (on an average) in the entire country. We are believed to be the best in catering to any transportation requirement across the country with fast, efficient and express logistics services.

                    Rendering to the needs of clients, we are engaged in offering reliable surface services with seamless connectivity through a
                    dedicated fleet of trucks. The company has carved a niche in the field of surface services, making safe goods transportations
                    from the doorstep to the desired destinations. We believe in maintaining transparency with an advanced track & trace system, which 
                    helps clients in maintaining the movement of goods.
                  </p>
                  </div>
                           
            </div>      
            
          <br />


        <div class="container">
                           <div class="row" >
                  
                <img src="Image/transport.jpg" class="img-responsive" alt="Responsive image" style="float:left; width: 279px;" onmouseover= "src='Image/1.jpg'" onmouseout="src='Image/transport.jpg'">
                  
                  <h4 ><p class="text-center" ><u>Third Parties Road Traspotation </u></p></h4>
                    
                
                  <p class="row" style=" color:white">We have some Third Parties Traspotation Company Which deal With Ground Level On Various Countries
                      Our Road Freight Products offer high quality road transportation, from standard services such as LTL (Less-than-Truck Load), PTL (Part) or
                       FTL (Full-Truck Load) shipments to temperature controlled and highly secured transports.
                      With over 5000 dedicated fleet of vehicles with trained drivers plying every day, we cover 10 lakh kilometers (on an average) in the entire country. We are believed to be the best in catering to any transportation requirement across the country with fast, efficient and express logistics services.

                    Rendering to the needs of clients, we are engaged in offering reliable surface services with seamless connectivity through a
                    dedicated fleet of trucks. The company has carved a niche in the field of surface services, making safe goods transportations
                    from the doorstep to the desired destinations. We believe in maintaining transparency with an advanced track & trace system, which 
                    helps clients in maintaining the movement of goods.
                  </p>
                  </div>
                           </div>
         
          



        



        <!-----marquee------>
<%--   <div class="container">
	<div class="row">
	   <div class="col-lg-6 ">
		<h2>Marquee Effects</h2>
		 <marquee behavior="alternate" scrollamount="7" direction="up" onmouseover="this.stop();" onmouseout="this.start();" class="m14">
		    
		     <div class="col-lg-12 d14">
		         <div class="col-lg-5"><img src="Image/airplane-2567150_640.jpg "></div>
                 <div class="col-lg-5"><img src="Image/airplane-2567150_640.jpg "></div>
                 <div class="col-lg-5"><img src="Image/airplane-2567150_640.jpg "></div>
                 <div class="col-lg-5"><img src="Image/airplane-2567150_640.jpg "></div>
		         <div class="col-lg-7"><h3>P. Dennis Sambola Jr</h3><br> This is just a demo, which is use as an example, hope you enjoy my first snipp<br><br> <h4 style="text-decoration:blink">Put mouse pointer on me</h4></div>
		         
		     </div>
		      
		 </marquee>
		 </div>
	</div>
</div>--%>

        <!-----marquee------>

       
<div class="container">  
    <%--<div class="row">
     <div class="panel" style="width:100px; margin-left:80vw; margin-top:-110vh ; background-color:	#2d3037" >--%>
        <aside class="row" style="font-size:small; font-style:oblique; color:white; float:right;width:180px; background-color:#000000;margin-top:10vh">
            <h1 style="font-size:larger; color:#000000; background-color:#3ab1e9; font-style:italic ">&nbsp;&nbsp;&nbsp;AboutUS</h1>
            <p> 
              <u style="font-size:medium; color:white " > ShippingLogistic.Com</u>
                <br />
                   We provide  Shipping Chain System For Traspotation of Your Goods
                  Through Air,Shipping and Third party Road Traspotation..  
            </p>
            <hr />
            
            <p>Visit To Our Youtube for more Information </p>
            <script src="https://apis.google.com/js/platform.js"></script>

<div class="g-ytsubscribe" data-channelid="UCUfBoaIrKCXelwyMhcbTgHQ" data-layout="full" data-theme="dark" data-count="default"></div>
            <hr />
            <!---Facebookhtml----->
           <p> Like and Share This Page On Facebook</p>
            <div class="fb-like" data-href="http://localhost:55623/Home.aspx" data-layout="button_count" data-action="like"
                 data-size="small" data-show-faces="true" data-share="true"></div>
              <!---Facebookhtml----->
            <!-----googleplush------>
            <hr />
            <p> Join Our Google+ Comunity</p>
            <!-- Place this tag in your head or just before your close body tag. -->
<script src="https://apis.google.com/js/platform.js" async defer></script>

<!-- Place this tag where you want the widget to render. -->
<div class="g-follow" data-annotation="bubble" data-height="24" data-href="//plus.google.com/112909236342456389266" data-rel="author"></div>
            <!-----googleplush------>



        </aside>
         </div>
    <%--</div>
    
    </div>--%>

        <!---- image Button----->


<div class="container">
    <div class="row">
<div class="panel " style="background-color:#374463">
    <hr />

                               
                                <div class="col-sm">
                                    <div class="textOverImage" data-text="OcenFeriheight,The Services is avalible for International Goods" role="button">
                                    <img src="Image/cargo-seanew.png"  role="button" width="260" height="260" class="img-responsive" alt="Responsive image" />
                                    <h5 class="text-danger">OcenFeriheight</h5>
                                    </div>
                                </div>
                                 
                       
                                <div class="col-sm-">
                                    <div class="textOverImage"data-text="AirFeriheight,The Services is avalible for National As well As International Goods" role="button">
                                    <img src="Image/Airlogistic.png" role="button"  width="260" height="260" class="img-responsive" alt="Responsive image" />
                                    <h5 class="text-primary">AirFeriheight</h5>
                                    </div>
                                </div>
                                 
                            
                                <div class="col-sm">
                                    <div class="textOverImage" data-text="ThirdParty,Transpotation for All international&National Goods Carries Via Port or Airport to Roads" role="button">
                                    <img src="Image/transport.jpg" role="button" width="260" height="260" class="img-responsive" alt="Responsive image" />
                                    <h5 class="text-warning">ThirdParty Road Transpotation</h5>  
                                        </div>      
                                </div> 
                                
                               
                            </div>
    <hr />
                           </div>
    </div>
       

        <!---- image Button----->





<%--
        <!--Footer-->
<footer class="page-footer center-on-small-only  blue-grey lighten-5  pt-0"  >

    <div style="background-color: #3ab1e9;">
        <div class="container">
            <!--Grid row-->
            <div class="row py-4 d-flex align-items-center">

                <!--Grid column-->
                <div class="col-md-6 col-lg-5 text-center text-md-left mb-4 mb-md-0">
                    <h6 class="mb-0 white-text">Get connected with us on social networks!</h6>
                </div>
                <!--Grid column-->

                <!--Grid column-->
                <div class="col-md-6 col-lg-7 text-center text-md-right">
                    

                    <button onclick="topFunction()" id="myBtn"  title="Go to top" style="color:#3ab1e9">

                         <span class="glyphicon glyphicon-chevron-up"></span>
                    </button>

                </div>
                <!--Grid column-->

            </div>
            <!--Grid row-->
        </div>
    </div>

    <!--Footer Links-->
    <div class="container mt-5 mb-4 text-center text-md-left">
        <div class="row mt-3">

            <!--First column-->
            <div class="col-md-3 col-lg-4 col-xl-3 mb-r">
                <h6 class="title font-bold"><strong>Company name</strong></h6>
                <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;"/>
                <p style="color:white; font-family:Dotum ">
                    ShippingLogistic is Mannaging Shipping ,Air & Road Transport Chain 
                </p>
            </div>
            <!--/.First column-->

            <!--Second column-->
            <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-r">
                <h6 class="title font-bold"><strong>Products</strong></h6>
                <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;"/>
                <p><a href="#!">MDBootstrap</a></p>
                <p><a href="#!">MDWordPress</a></p>
                <p><a href="#!">BrandFlow</a></p>
                <p><a href="#!">Bootstrap Angular</a></p>
            </div>
            <!--/.Second column-->

            <!--Third column-->
            <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-r">
                <h6 class="title font-bold"><strong>Useful links</strong></h6>
                <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;"/>
                <p><a href="#!">Your Account</a></p>
                <p><a href="#!">Become an Affiliate</a></p>
                <p><a href="#!">Shipping Rates</a></p>
                <p><a href="#!">Help</a></p>
            </div>
            <!--/.Third column-->

            <!--Fourth column-->
            <div class="col-md-4 col-lg-3 col-xl-3">
                <h6 class="title font-bold"><strong>Contact</strong></h6>
                <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;"/>
                <p style="color:white; font-family:Dotum "><i class="fa fa-home mr-3"></i> New York, NY 10012, US</p>
                <p style="color:white; font-family:Dotum "><i class="fa fa-envelope mr-3"></i> info@example.com</p>
                <p style="color:white; font-family:Dotum "><i class="fa fa-phone mr-3"></i> + 01 234 567 88</p>
                <p style="color:white; font-family:Dotum "><i class="fa fa-print mr-3"></i> + 01 234 567 89</p>
            </div>
            <!--/.Fourth column-->

        </div>
    </div>
    <!--/.Footer Links-->

    <!-- Copyright-->
    <div class="footer-copyright">
        <div class="container-fluid">
                         © 2017 Copyright: <a href="https://www.MDBootstrap.com"><strong> MDBootstrap.com</strong></a>
        </div>
    </div>
    <!--/.Copyright -->
    
</footer>
<!--/.Footer-->
                --%>
        <!---chat--->
           

        <!--Start of Tawk.to Script-->
<script type="text/javascript">
    var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date();
    (function () {
        var s1 = document.createElement("script"), s0 = document.getElementsByTagName("script")[0];
        s1.async = true;
        s1.src = 'https://embed.tawk.to/5a3fd8a4bbdfe97b137fd219/default';
        s1.charset = 'UTF-8';
        s1.setAttribute('crossorigin', '*');
        s0.parentNode.insertBefore(s1, s0);
    })();
</script>
<!--End of Tawk.to Script-->
        <!---- chat--->


  
            </form>


    <!-----Tool------->

  
    
    <!---facebookjavaScript ---->
   <div id="fb-root"></div>
<script>(function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = 'https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.11';
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
    <!---facebookjavaScript---->


    <script src="js/npm.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>
