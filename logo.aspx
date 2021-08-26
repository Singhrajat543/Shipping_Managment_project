<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="logo.aspx.cs" Inherits="WebApplication1.logo" %>

<!DOCTYPE html>

<html >
<head runat="server">

    <meta charset="utf-8" />
    <link href="StyleSheet1.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />


    <script type="text/javascript">
        window.onload = function () {
            document.getElementById("audio_mp3").play();
        }
    </script>
 
    
<title> Login </title>
</head>

<body>
    <form id="form1"  runat="server">
        <div><audio id="audio_mp3" src="Audio/Audio.mp3" ></audio></div>
        <section class="cover">
            
             <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-primary">  
                       <div class="panel-heading">
                           <p class="text-center"><strong  style="font-family:'Arabic Typesetting';font-size:250%">ShippingLogistic</strong></p>
                           </div>             
               <div class="panel-body">
                    <marquee><b style="font-family:'Arabic Typesetting';text-shadow:red; font-size:150%">pls Login in ShippingLogistic.com or Registore for New Login ID </b></marquee>
                   </div>
                            </div>
                        </div>
                 </div>
                  
            
        <div>
            <asp:Image ID="Image1" ImageUrl="~/Image/arrow.png" runat="server" />
            <div class="elements">
                <div class="intro">
                    <asp:Label ID="Label1" CssClass="lbl" runat="server" Text="login"></asp:Label>
                    <asp:TextBox ID="TextBox1" CssClass="text1 txtstyle"  placeholder="username" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TextBox2" CssClass="text2 txtstyle"  placeholder="Password"  TextMode="Password" runat="server"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="SinUp" CssClass="btm1 btnstyle" />
                    <asp:Button ID="Button2" runat="server" Text="Registore"  CssClass="btm2 btnstyle" OnClick="Button2_Click" />

                    <div>


                    </div>

                </div>


            </div>  

           </div>
            
        
        </section>
    </form>
    <script src="js/bootstrap.js"></script>
</body>
</html>
