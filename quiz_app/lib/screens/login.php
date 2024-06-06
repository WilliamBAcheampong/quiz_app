<?php    
  session_start();
  echo "Successfully logged in";
  $con = mysqli_connect('localhost', 'root');
  if ($con){
    echo "Successfully signed in";
  }
  else{
    echo "No connection";
  }
  mysqli_select_db($con , 'project');
  $name = $_POST['name'];
  $pass = $_POST['password'];

  $quer = "select * from registration where username = '$name' 
  && password='$password'";
  $result = mysqli_query($con, $quer);
  $num = mysqli_num_rows($result);
  if($num==1)
  {
    $_SESSION['username'] = $name ;
    header('location: user profile');
  }
  else{
    header('location: loginscreen.dart');
  }
?>
