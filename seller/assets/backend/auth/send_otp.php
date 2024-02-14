<?php
require('../../../../utility/mailer.php');
    require('../../../../utility/utility.php');


    $randomString = bin2hex(random_bytes(4)); // 4 bytes will generate an 8-character hex string

    // Hash the generated random string
    $hashedString = password_hash($randomString, PASSWORD_DEFAULT);

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // $otp=OTP($con);
    $email = $_POST['email'];
   // $id = $_SESSION['USER_ID'];
   $q="UPDATE sellers SET otp = '$randomString' WHERE email = '$email';  ";
   mysqli_query($con,$q);


   // $gui = mysqli_fetch_assoc(mysqli_query($con, "select * from users where email='$email'"));

    //$email =$gui ['email'];
    $name=$gui ['name'];
    $_SESSION['OTP']=$otp;
    $subject="Use this otp". $otp;
    $from_name="EFarmer Systems::";
    sendmail( $email,$email,$from_name, $subject, $randomString);
    // echo $otp;
}
?>
