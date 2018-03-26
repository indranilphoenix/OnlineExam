<%@ Page Title="" Language="C#" MasterPageFile="~/Home/Home.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="Home_ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/bootstrap.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" Runat="Server">

    <div id="contact" class="home-section text-center">
		<div class="heading-contact">
			<div class="container">
                            <div class="row">
				<div class="col-lg-8 col-md-offset-2">
					
                                    <div class="section-heading">
					<div class="wow bounceInDown">
                                            <h2>Email or phone are welcome</h2>
					</div>
					<p class="wow lightSpeedIn">Gentleman, introduce your self and get in touch with me privately</p>
           </div>
					
				</div>
                            </div>
			</div>
		</div>
		<div class="container">

                    <div class="row">
                        <div class="col-lg-8 col-md-offset-2">
                            <div class="form-wrapper marginbot-50">
                                <form id="contact-form" action="everywhere">
                                    <div class="row">
    
                                        <div class="form-group">
                                            <label for="name">
                                                        Name</label>
                                            <input type="text" class="form-control" id="name" placeholder="Enter name" required="required" />
                                        </div>
                                        <div class="form-group">
                                            <label for="email">
                                                Email Address</label>
                                            <input type="email" class="form-control" id="email" placeholder="Enter email" required="required" />
                                        </div>
                                        <div class="form-group">
                                            <label for="subject">
                                                Subject</label>
                                            <select id="subject" name="subject" class="form-control" required="required">
                                                <option value="na" selected="">Choose One:</option>
                                                <option value="service">Friendship request</option>
                                                <option value="product">Prom night invitation</option>
                                            </select>
                                        </div>
          
             
                                        <div class="form-group">
                                            <label for="name">
                                                Message</label>
                                            <asp:TextBox ID="txtMassage" runat="server" TextMode="MultiLine" placeholder="Massage" Columns="108" Rows="10" required="required"></asp:TextBox>
                                        </div>
       
           
                                        <asp:Button ID="btnSend" runat="server" Text="Send" CssClass="btn btn-warning" OnClick="btnSend_Click"></asp:Button>
       
                                    </div>
                                </form>
				
                        </div><br /><br />
                                <div class="text-center">
					<p class="lead"><i class="fa fa-phone"></i> Call me +91 8768604971</p>
                                </div>
                        </div>

                    </div>	

		</div>
	</div>
</asp:Content>

