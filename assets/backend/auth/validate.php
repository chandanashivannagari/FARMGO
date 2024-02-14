<?php
  require('../../../utility/utility.php');
  $username=get_safe_value($con,$_POST['username']);
  $password=get_safe_value($con,$_POST['password']);
  $otp=get_safe_value($con,$_POST['otp']);
  $q="select * from users where email='$username' and status='1'";
  $q2="select * from users where mobile='$username' and status='1'";
  
    $rs=mysqli_query($con,$q);
    $rs2=mysqli_query($con,$q2);
    $nor=mysqli_num_rows($rs);
    $nor2=mysqli_num_rows($rs2);
    //$nor3=mysqli_num_rows($rs3);
    $result=array();
    if ($password == "") {
        $result['status']=0;
        $result['msg']="Enter Password";
      } else if ($username == "") {
        $result['status']=0;
        $result['msg']="Enter Username";
      }
      else if ($otp == "") {
        $result['status']=0;
        $result['msg']="Enter OTP";
      }
      else if($nor==0 && $nor2==0){
        $result['status']=0;
        $result['msg']="Invalid Credentials";
    }

  else{
        if($nor>0){
            $rs=$rs;
        }else{
            $rs=$rs2;
        }
        $row=mysqli_fetch_assoc($rs);
        $dps=$row['password'];
        $dps2=$row['otp'];
        $verify = password_verify($password, $dps);
        $verify2 = password_verify($otp, $dps2);
        if($otp==$dps2){
        if ($verify) {
            $_SESSION['USER_LOGIN']="YES";
            $_SESSION['USER_ID']=$row['id'];
            $result['status']=1;
            $result['msg']="Login Successfull";
            
        } 
      }else {
            $result['status']=2;
            $result['msg']="Something Went Wrong, Check Your OTP Or password";
        }
    }
    if(isset($_SESSION['USER_CART'])){
          foreach($_SESSION['USER_CART'] as $cti){
            add_cart_a_login($con,$cti);
        }
        unset($_SESSION['USER_CART']);
      }
      if(isset($_SESSION['CART_QTY'])){
        unset($_SESSION['CART_QTY']);
      }
    
    echo json_encode($result);
?>