<?php
require('../../../utility/mailer.php');
    require('../../../utility/utility.php');
    $otp=OTP($con);
    
    $id = $_SESSION['USER_ID'];

    $gui = mysqli_fetch_assoc(mysqli_query($con, "select * from users where id='$id'"));

    $email =$gui ['email'];
    $name=$gui ['name'];
    $_SESSION['OTP']=$otp;
    $subject="Use this otp". $otp;
    $from_name="EFarmer Systems";
    sendmail( $email,$name,$from_name, $subject, $otp);
    // echo $otp;
?>