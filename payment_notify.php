<?php
// This file handles the PayPal payment notifications

// Insert your database connection or utility file here if needed
// require('utility/utility.php');

// Retrieve the PayPal response
$raw_post_data = file_get_contents('php://input');
$raw_post_array = explode('&', $raw_post_data);
$myPost = array();

foreach ($raw_post_array as $keyval) {
    $keyval = explode('=', $keyval);
    if (count($keyval) == 2) {
        $myPost[$keyval[0]] = urldecode($keyval[1]);
    }
}

// Verify received data with PayPal
$req = 'cmd=_notify-validate';
$get_magic_quotes_exists = false;
if (function_exists('get_magic_quotes_gpc')) {
    $get_magic_quotes_exists = true;
}

foreach ($myPost as $key => $value) {
    if ($get_magic_quotes_exists == true && get_magic_quotes_gpc() == 1) {
        $value = urlencode(stripslashes($value));
    } else {
        $value = urlencode($value);
    }
    $req .= "&$key=$value";
}

// Set PayPal URL
$paypal_url = 'https://www.sandbox.paypal.com/cgi-bin/webscr'; // Change this to the live PayPal URL for production

// Open a connection to PayPal
$ch = curl_init($paypal_url);
if ($ch == false) {
    // Handle connection failure
    exit;
}

// Set curl options
curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
curl_setopt($ch, CURLOPT_POST, 1);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_POSTFIELDS, $req);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 1);
curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 2);
curl_setopt($ch, CURLOPT_FORBID_REUSE, 1);
curl_setopt($ch, CURLOPT_HTTPHEADER, array('Connection: Close'));

// Get the response from PayPal
$res = curl_exec($ch);
curl_close($ch);

// Handle the PayPal response
if (strcmp($res, 'VERIFIED') == 0) {
    // Verified response from PayPal - transaction is valid

    // Do your necessary processing here
    // For example, update your database or perform other actions based on the payment status
    
    // Access specific variables from the PayPal notification
    $payment_status = $_POST['payment_status'];
    $txn_id = $_POST['txn_id'];
    $payer_email = $_POST['payer_email'];
    $item_name = $_POST['item_name'];
    $item_number = $_POST['item_number'];
    $receiver_email = $_POST['receiver_email'];
    // ...and other variables as needed

    // Update your database or perform other actions based on the payment status
    // Example: Update order status in your database

    // You might also log the IPN response for debugging or audit purposes
    // Example: Log IPN response data into a file
    file_put_contents('ipn_log.txt', print_r($_POST, true));
} else if (strcmp($res, 'INVALID') == 0) {
    // Invalid response from PayPal
    // Handle accordingly - log for further investigation, etc.
    // Note: Do not send any response back to PayPal in this case
    // This might indicate a possible attempt at fraud or an incorrect request
}
?>
