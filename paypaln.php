<?php
// Check if PayPal has sent back transaction details
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Process PayPal transaction details
    $txn_id = $_POST['txn_id']; // Transaction ID
    $payer_email = $_POST['payer_email']; // Payer's email
    $payment_status = $_POST['payment_status']; // Payment status

    // Your further processing logic based on payment status
    if ($payment_status === 'Completed') {
        // Payment is completed, update your database or perform necessary actions
        // For example, mark the order as paid in your system
        // Update your database with the transaction details

        // Example: Update the order status in your database
        // $update_query = "UPDATE orders SET payment_status='Paid' WHERE txnid='$txn_id'";
        // mysqli_query($con, $update_query);

        // Print a success message to the user
        echo "Payment successful! Thank you for your purchase.";
    } else {
        // Payment was not completed, handle accordingly
        echo "Payment not completed.";
    }
} else {
    // Handle if the request is not from PayPal
    echo "Invalid request.";
}
?>
