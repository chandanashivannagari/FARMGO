<?php
require('../../../../utility/mailer.php');

 require('../../../../utility/utility.php');

 $id=get_safe_value($con,$_POST['id']);
 $n=1;
 $msg="Wallet created";
    $qyery="update sellers set isapp='$n' where id='$id'";
    $u="select * from sellers where id='$id'";
    $gui = mysqli_fetch_assoc(mysqli_query($con, $u));
    $email=$gui['email'];
    $subject="ACCOUNT VERIFICATION";

    $otp="Your account has been verified successfuly";
    $from_name="EFarmer Systems";
    if(mysqli_query($con,$qyery)){
        mysqli_query($con,"insert into seller_wallet (seller_id,ballance) values('$id','0')");
        mysqli_query($con,"insert into seller_w_msg(s_id,cod,msg,balance,is_new) values('$id','1','$msg','0','1')");
        sendmail( $email,"Admin",$from_name, $subject, $otp);
        echo 1;
        

    }else{
        echo 0;
    }
?>