<%@ Page Language="C#" AutoEventWireup="true" Codefile="Route.aspx.cs" Inherits="WebApplication1.Route"%>


<!DOCTYPE html>

<html >
<head id="Head1" runat="server">
    <meta charset="utf-8" />

        <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/StyleSheet.css" rel="stylesheet" />
    <link href="css/local.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />


   <%-- <link href="home.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="local.css" rel="stylesheet" />--%>

    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 321px;
        }
        .auto-style2 {
            width: 131px;
        }
        .auto-style3 {
            width: 104px;
        }
    </style>
</head>
<body>
        <form id="form1" runat="server">

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

                         <%--<li class="dropdown messages-dropdown">
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
                    </li>--%>
                     <%--<li class="dropdown user-dropdown">
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
   <hr/>
            <hr/>
        <div>
            <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false&amp;key=AIzaSyAJcfV6zTGHoPY91ePLNlC0KugH8YpVpxE"></script>
            <script type="text/javascript">
                var directionsDisplay;
                var directionsService = new google.maps.DirectionsService();

                function InitializeMap() {
                    directionsDisplay = new google.maps.DirectionsRenderer();
                    var latlng = new google.maps.LatLng(18.9499, 72.9512);
                    var myOptions =
                    {
                        zoom: 14,
                        center: latlng,
                        mapTypeId: google.maps.MapTypeId.HYBRID
                    };
                    var map = new google.maps.Map(document.getElementById("Gmap"), myOptions);

                    directionsDisplay.setMap(map);
                    directionsDisplay.setPanel(document.getElementById('directionpanel'));

                    var control = document.getElementById('control');
                    control.style.display = 'block';


                }



                function calcRoute() {

                    var start = document.getElementById('startvalue').value;
                    var end = document.getElementById('endvalue').value;
                    var request = {
                        origin: start,
                        destination: end,
                        travelMode: google.maps.DirectionsTravelMode.DRIVING
                    };
                    directionsService.route(request, function (response, status) {
                        if (status == google.maps.DirectionsStatus.OK) {
                            directionsDisplay.setDirections(response);
                        }
                    });

                }



                function btnDirections_onclick() {
                    calcRoute();
                }

                window.onload = InitializeMap;
            </script>
            <div class=" row">
            <table class="table table-sm" id="control">
                <tr>
                    <td class="auto-style1">
                        <table style="width: 473px">
                            <tr>
                                <td>From:</td>
                                <td class="auto-style2">
                                    <asp:TextBox ID="startvalue" runat="server"></asp:TextBox></td>
                                <%--<input id="startvalue" type="text" style="width: 305px" /></td>--%>
                                <td>To:</td>
                                <%--<td><input id="endvalue" type="text" style="width: 301px" />--%>

                                <td class="auto-style3">
                                    <asp:TextBox ID="endvalue" runat="server"></asp:TextBox></td>
                                <td><input id="btnDirections" type="button" class="btnserch" value="GetDirections"onclick="return btnDirections_onclick()"/></td>
                            </td>
                    
                </tr>
                <tr>
                    <td align="right">
                        &nbsp;</td>
                </tr>
            </table>
                </div>



            </td>
</tr>
            <tr>
                <td valign="top" class="auto-style1">
                    <div id="directionpanel" style="height: 236px; overflow: auto; width: 463px;"></div>
                </td>
                <td valign="top">
                    <div id="Gmap" style="height: 244px; width: 498px"></div>
                </td>
            </tr>
            </table>
        </div>
        <hr/>
            <hr/>
            <hr/>
        <hr/>
        <marquee onmouseover="this.stop()" style="font-size:50px; font-family:'Arabic Typesetting';font-size:18px">Check Your International Route </marquee>
       <hr/>
        <div class="panel">
            <table>
                <td>
                    <iframe src="https://www.google.com/maps/d/embed?mid=1ebqbMtW3od-4FCzmUVSNqpBGF6EIDBbF" style="height: 344px; width: 981px; margin-top: 15px"></iframe>
                </td>
                <tr>
                    <td>&nbsp;</td>
                </tr>

            </table>
        </div>
        <div class="pannel" style="background-color:blueviolet; width: 285px;margin-left:75vw; margin-top:-60vh; padding: 3px;padding-left: 4%; display: block; padding: 6px; height: 169px;">
            
                <span class="fl" style="margin-top: 5px; margin-left: 5px; font-weight: bold;background-color:blue; font-size: 14px;">Latest Updates</span>
                                    
                &nbsp;<marquee direction="up" onmouseover="this.stop()" onmouseout="this.start()" style="background-color:white; width: 267px; height: 135px;" scrolldelay="270">
                             
                        <span id="Label1"> <table width="100%" style="background-color:white"><tbody style="background-color:white"><tr><td>
                         <a href="writereaddata/SpecialEAC_Raj_08Jan18_final.pdf" target="blank" style="margin-top:10PX">
                         <b style="font-size:10pt;font-weight:bold;">
                        <font color="Blue"><b>Our Route Will Be Change<b> For Some Airiheight and Shippment <b>.Coustomer Are Requested to Plese Daily Check your <b>Email For changes  </b>

                        </font></b></a><br></td></tr><tr><td>&nbsp;<br></td></tr><tr><td><a href="writereaddata/VIO_MOM.pdf" target="blank" style="margin-top:10PX"><b style="font-size:10pt;font-weight:bold;"><font color="Blue">
                         <b> Minutes of 1st meeting of Expert Appraisal Committee for projects related to Violation of Environmental Clearance held on 22nd June, 2017</b></font></b></a><br></td></tr><tr><td>&nbsp;<br></td></tr><tr><td>
                         <a href="writereaddata/Form-1A/Agenda/200120186EX2NWQLAgendafor28thEAC(Industry-1).pdf" target="blank" style="margin-top:10PX"><b style="font-size:9pt;font-weight:bold;">
                          <font color="#00000">Next EAC meeting of <b>Industrial Projects - 1 </b>is scheduled to be held on <b>Feb 05, 2018 To Feb 07, 2018</b></font></b></a><br></td></tr><tr><td>
                              <a href="writereaddata/Form-1A/Agenda/20012018CUDW3M5UAgendafor28thEAC(Industry-1).pdf" target="blank" style="margin-top:10PX"><b style="font-size:9pt;font-weight:bold;">
                           <font color="#00000">Next EAC meeting of <b>Industrial Projects - 1 </b>is scheduled to be held on <b>Feb 05, 2018 To Feb 07, 2018</b></font></b></a><br></td></tr><tr><td>
                             <a href="writereaddata/Form-1A/Agenda/02022018BO3FPUNMFinalAgendaof26thEACmeetingheldonFebruary,2018.pdf" target="blank" style="margin-top:10PX"><b style="font-size:9pt;font-weight:bold;">
                             <font color="#00000">Next EAC meeting of <b>Coal Mining </b>is scheduled to be held on <b>Feb 15, 2018 To Feb 16, 2018</b></font></b></a><br></td></tr> </tbody></table></span></marquee>

            
            
        </div>

    </form>
    <script src="js/npm.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>
