<?php
require('utility/utility.php');

// Assuming $_POST['orderId_user'] is already retrieved properly
if (isset($_POST['orderId_user'])) {
    $order_id = $_POST['orderId_user'];
    $query = "SELECT orders.txnid, orders.final_val, user_address.user_name, user_address.user_mobile, users.email FROM orders, user_address, users WHERE orders.id='$order_id' AND orders.ad_id=user_address.id AND orders.u_id=users.id";
    $row = mysqli_fetch_assoc(mysqli_query($con, $query));
}

$PAYPAL_SANDBOX_URL = "https://www.sandbox.paypal.com/cgi-bin/webscr"; // PayPal Sandbox URL
$PAYPAL_BUSINESS_EMAIL = "sb-8k27227946782@business.example.com";

$txnid = $row['txnid'];
$name = $row['user_name'];
$mobile = $row['user_mobile'];
$email = $row['email'];
$amount = $row['final_val'];

?>
<html>
<head>
  <script>
    function submitPaypalForm() {
      var paypalForm = document.forms.paypalForm;
      paypalForm.submit();
    }
  </script>
</head>
<body onload="submitPaypalForm()">
  <form id="paypalForm" action="<?php echo $PAYPAL_SANDBOX_URL; ?>" method="post" name="paypalForm">
    <input type="hidden" name="business" value="<?php echo $PAYPAL_BUSINESS_EMAIL; ?>">
    <input type="hidden" name="cmd" value="_xclick">
    <input type="hidden" name="currency_code" value="USD">
    <!-- Add necessary PayPal fields with appropriate values -->
    <input type="hidden" name="item_name" value="Product Name">
    <input type="hidden" name="amount" value="<?php echo $amount; ?>">
    <input type="hidden" name="custom" value="<?php echo $txnid; ?>">
    <input type="hidden" name="return" value="http://localhost/farm-go/payment_complete.php">
    <input type="hidden" name="cancel_return" value="http://localhost/farm-go/payment_fail.php">
    <input type="hidden" name="notify_url" value="http://localhost/farm-go/payment_notify.php">
      
    <input type="hidden" name="charset" value="utf-8">
  </form>
</body>
<script type="text/javascript">
  window.onload = function() {
    document.getElementById("paypalForm").submit();
  }
</script>
</html>
