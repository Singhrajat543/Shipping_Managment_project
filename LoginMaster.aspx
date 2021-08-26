<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" Codefile="LoginMaster.aspx.cs" Inherits="WebApplication1.LoginMaster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
                    <asp:TextBox ID="TextBox1" CssClass="text1 txtstyle"  placeholder="E-mailId" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TextBox2" CssClass="text2 txtstyle"  placeholder="Password"  TextMode="Password" runat="server"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="SinUp" CssClass="btm1 btnstyle"  OnClick="Button1_Click" />
                    <button type="button" Class="btm2 btnstyle" data-toggle="modal" data-target="#mymodal">Registration</button>
                    <br/>
                    <asp:LinkButton ID="ForrgetPasword" CssClass="btn btn-success btn-block" runat="server" href="forgetpasword.aspx"  >Forgot Password
</asp:LinkButton>
                    <br/>

                                          <div class="text-center"></div>
                            

                            <div class="modal fade" id="mymodal">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-lg-12 col-md-12 col-sm-12">
                                                    <div class="panel panel-success">
                                                        <div class="panel-heading">
                                                           <p class="text-center"><strong>REGISTRATION</strong></p>
                                                        </div>
                                                        <div class="panel-body">
                                                            <div class="well well-lg">
                                                                <div class="row">
                                                                    <div class="col-xs-8 col-md-12 col-sm-12">
                                                                        <label>NAME</label>
                                                                        <asp:TextBox ID="TextName" runat="server" placeholder="NAME" autofocus="" CssClass="form-control input-sm"></asp:TextBox>
                                                                         
                                                                    </div>
                                                                </div>
                                                                <br />
                                                                <div class="row">
                                                                    <div class="col-xs-8 col-md-12 col-sm-12">
                                                                        <label>EMAIL ID</label>
                                                                        <asp:TextBox ID="TxtEmail" runat="server" CssClass="form-control input-sm" placeholder="EMAIL ID" autofocus="" TextMode="Email" ValidationGroup="2"></asp:TextBox>
                                                                        <asp:Label ID="LblAlradyEmail" runat="server" Text="Label"></asp:Label>
                                                                        <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Please enter valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="1" Display="Dynamic"></asp:RegularExpressionValidator>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxtEmail" Display="Dynamic" ErrorMessage="Please enter your email id" ForeColor="Red" ValidationGroup="2"></asp:RequiredFieldValidator>--%>
                                                                    </div>
                                                                </div>
                                                                <br />

                                                                <div class="row">
                                                                    <div class="col-xs-8 col-md-12 col-sm-12" >
                                                                        <label>Select Gender</label>
                                                                        <asp:RadioButtonList ID="RadioButtonList1"  runat="server" RepeatDirection="Horizontal" Height="17px" Width="142px">
                                                                         <asp:ListItem>Male</asp:ListItem>
                                                                         <asp:ListItem>Female</asp:ListItem>
                                                                        </asp:RadioButtonList>
                                                                    </div>
                                                                    </div>
                                                                <br/>
                                                                <div class="row">
                                                                    <div class=" col-xs-8 col-md-12 col-sm-12">
                                                                        <label>MOBILE NO</label>
                                                                        <asp:TextBox ID="Txtmobile" runat="server" CssClass="form-control input-sm" placeholder="MOBILE NO 10 digits" autofocus="" MaxLength="10" TextMode="Phone" ValidationGroup="2"></asp:TextBox>
                                                                       <%-- <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter valid mobile no." ForeColor="Red" ValidationExpression="^((\\+91-?)|0)?[0-9]{10}$" ControlToValidate="Txtmobile" Display="Dynamic" ValidationGroup="1"></asp:RegularExpressionValidator>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Txtmobile" Display="Dynamic" ErrorMessage="Enter your mobile no." ForeColor="Red" ValidationGroup="2"></asp:RequiredFieldValidator>
                                                                    --%></div>
                                                                </div>
                                                                <br />
                                                               <div class="row">
                                                                   <div class="col-xs-8 col-md-12 col-sm-12">
                                                                       <label> Company Name</label>
                                                                    <asp:TextBox ID="TextBox7" placeholder="Company Name"  CssClass="form-control input-sm" runat="server"></asp:TextBox>

                                                                       </div>
                                                                   </div>
                                                                <br/>
                                                                  <div class="row">
                                                                 <div class="col-xs-12 col-md-12 col-sm-12">
                                                                            <label>PINCODE</label>
                                                                            <asp:TextBox ID="Txtpincode" runat="server" CssClass="form-control input-sm" placeholder="PINCODE" MaxLength="6"></asp:TextBox>
                                                                           <%-- <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="Txtpincode" ErrorMessage="Please enter valid code " ForeColor="Red" ValidationExpression="^\d{3}\s?\d{3}$" ValidationGroup="1"></asp:RegularExpressionValidator>--%>
                                                                        </div>
                                                                      </div>
                                                                 
                                                                <div class="row">
                                                                    <div class="col-xs-8 col-md-12 col-sm-12">
                                                                        <label>PASSWORD</label>
                                                                        <asp:TextBox ID="Txtpaswdreg" runat="server" CssClass="form-control input-sm" placeholder="Password" autofocus="" TextMode="Password" ValidationGroup="2"></asp:TextBox>
                                                                       <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Txtpaswdreg" ErrorMessage="Enter the Password" ForeColor="Red" ValidationGroup="2"></asp:RequiredFieldValidator>--%>
                                                                    </div>
                                                                </div>

                                                                <div class="row">
                                                                    <div class="col-xs-8 col-md-12 col-sm-12">
                                                                        <label>CONFIRM PASSWORD</label>
                                                                        <asp:TextBox ID="Txtconpwdreg" runat="server" CssClass="form-control input-sm" placeholder="confirm Password" autofocus="" TextMode="Password" ValidationGroup="2"></asp:TextBox>
                                                                      <%--  <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Txtpaswdreg" ControlToValidate="Txtconpwdreg" Display="Dynamic" ErrorMessage="Enter valid password" ForeColor="Red" ValidationGroup="2"></asp:CompareValidator>--%>
                                                                    </div>
                                                                </div>
                                                                <br />


                                                                <asp:Button ID="Btnregsub" runat="server" class="btn btn-success" OnClick="Btnregsub_Click" Text="SUBMIT"   ValidationGroup="2" />&nbsp&nbsp
                                                               <asp:Button ID="Btnregcancel" runat="server" class="btn btn-danger" Text="CANCEL" />
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                    <div>


                    </div>

                </div>


            </div>  

           </div>
            
        
 </section>
</asp:Content>
