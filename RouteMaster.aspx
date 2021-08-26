<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="RouteMaster.aspx.cs" Inherits="WebApplication1.RouteMaster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
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
                                <td><input id="btnDirections" type="button" class="btnserch" value="GetDirections"onclick="return btnDirections_onclick()"/>
                                    <%--<asp:Button ID="btnDirections" runat="server" value="GetDirections" OnClick="return btnDirections_onclick()" Text="Button" />--%>
                                </td>
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
        <div class="pannel" style="background-color:blueviolet; width: 285px;margin-left:75vw; margin-top:-60vh; padding:3px;padding-left: 4%; display: block; padding: 6px; height: 169px;">
            
                <span class="fl" style="margin-top: 5px; margin-left: 5px; font-weight: bold;background-color:blue; font-size: 14px;">Latest Updates</span>
                                    
                &nbsp;<marquee direction="up" onmouseover="this.stop()" onmouseout="this.start()" style="background-color:white; width: 267px; height: 135px;" scrolldelay="270">
                             
                        <span id="Label1"> <table width="100%" style="background-color:white"><tbody style="background-color:white"><tr><td>
                         <a href="writereaddata/SpecialEAC_Raj_08Jan18_final.pdf" target="blank" style="margin-top:10PX">
                         <b style="font-size:10pt;font-weight:bold;">
                        <font color="Blue"><b>Our  </b>

                        </font></b></a><br></td></tr><tr><td>&nbsp;<br></td></tr><tr><td><a href="writereaddata/VIO_MOM.pdf" target="blank" style="margin-top:10PX"><b style="font-size:10pt;font-weight:bold;"><font color="Blue">
                         <b> Minutes of 1st meeting of Expert Appraisal Committee for projects related to Violation of Environmental Clearance held on 22nd June, 2017</b></font></b></a><br></td></tr><tr><td>&nbsp;<br></td></tr><tr><td>
                         <a href="writereaddata/Form-1A/Agenda/200120186EX2NWQLAgendafor28thEAC(Industry-1).pdf" target="blank" style="margin-top:10PX"><b style="font-size:9pt;font-weight:bold;">
                          <font color="#00000">Next EAC meeting of <b>Industrial Projects - 1 </b>is scheduled to be held on <b>Feb 05, 2018 To Feb 07, 2018</b></font></b></a><br></td></tr><tr><td>
                              <a href="writereaddata/Form-1A/Agenda/20012018CUDW3M5UAgendafor28thEAC(Industry-1).pdf" target="blank" style="margin-top:10PX"><b style="font-size:9pt;font-weight:bold;">
                           <font color="#00000">Next EAC meeting of <b>Industrial Projects - 1 </b>is scheduled to be held on <b>Feb 05, 2018 To Feb 07, 2018</b></font></b></a><br></td></tr><tr><td>
                             <a href="writereaddata/Form-1A/Agenda/02022018BO3FPUNMFinalAgendaof26thEACmeetingheldonFebruary,2018.pdf" target="blank" style="margin-top:10PX"><b style="font-size:9pt;font-weight:bold;">
                             <font color="#00000">Next EAC meeting of <b>Coal Mining </b>is scheduled to be held on <b>Feb 15, 2018 To Feb 16, 2018</b></font></b></a><br></td></tr> </tbody></table></span></marquee>

            
            
        </div>

</asp:Content>
