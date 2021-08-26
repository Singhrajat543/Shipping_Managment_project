<%@ Page Language="C#" AutoEventWireup="true" Codefile="PymentGetway.aspx.cs" Inherits="WebApplication1.PymentGetway" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

     <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <script src="https://www.paypalobjects.com/api/checkout.js"></script>

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div id="Div1"></div>

  <script>
      paypal.Button.render({
          env: 'production', // Or 'sandbox',

          commit: true, // Show a 'Pay Now' button

          style: {
              color: 'gold',
              size: 'small'
          },

          payment: function (data, actions) {
              /* 
               * Set up the payment here 
               */
          },

          onAuthorize: function (data, actions) {
              /* 
               * Execute the payment here 
               */
          },

          onCancel: function (data, actions) {
              /* 
               * Buyer cancelled the payment 
               */
          },

          onError: function (err) {
              /* 
               * An error occurred during the transaction 
               */
          }
      }, '#paypal-button');
  </script>


    </div>
    </form>
</body>
</html>