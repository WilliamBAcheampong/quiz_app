<?php$dns = 'mysql:host=localhost;dbname=id88133200';
$user = 'id';
$password = 'password';try{
 $db = new PDO ($dns, $user, $pass);
}catch( PDOException $e){
 $error = $e->getMessage();
 echo $error;
}
