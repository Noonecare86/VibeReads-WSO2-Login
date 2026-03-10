<?php
require_once 'classes\Database.php';
require_once 'classes\User.php';

session_start();

$db = new Database();
$user = new User($db);
$message = [];


if (isset($_POST['login'])) {
    $result = $user->login($_POST['email'], $_POST['password']);
    
    if ($result && $result['user_type'] == 'User') {
        $_SESSION['user_name'] = $result['name'];
        $_SESSION['user_email'] = $result['email'];
        $_SESSION['user_id'] = $result['Id'];
        header('location:index.php');
    } else {
        $message[] = 'Incorrect Email Id or Password!';
    }
}

// WSO2 Asgardeo Login URL
$client_id = 'Your_Client_ID';
$org_name = 'Your_Organization_Name'; 


$redirect_uri = 'Your_Redirect_URI'; // e.g., http://localhost/WSO2/callback.php

$asgardeo_auth_url = "https://api.asgardeo.io/t/{$org_name}/oauth2/authorize" .
            "?response_type=code" .
            "&client_id=" . $client_id .
            "&redirect_uri=" . urlencode($redirect_uri) .
            "&scope=" . urlencode("openid profile email");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/register.css" />
    <title>Login Here - VibeReads</title>
    <style>
       .container form .link{
            text-decoration: none; color:white;  border-radius: 17px; padding: 8px 18px; margin: 0px 10px; background: rgb(0, 0, 0); font-size: 20px;
        }
        .container form .link:hover{
            background: rgb(0, 167, 245);
        }
        .forgot-password {
            text-decoration: none; color: white; border-radius: 17px; padding: 8px 18px; margin: 0px 10px; background: rgb(0, 0, 0); font-size: 16px;
        }
        .forgot-password:hover {
            background: rgb(0, 167, 245);
        }
        .asgardeo-btn {
            background-color: #ff5000;
            color: white;
            text-align: center;
            text-decoration: none;
            display: block;
            border-radius: 5px;
            margin-top: 10px;
            padding: 10px;
            font-size: 16px;
            font-weight: bold;
        }
        .asgardeo-btn:hover {
            background-color: #e64a00;
        }
    </style>
</head>

<body>
    <?php
    //Display error messages if any 
    if(isset($message)){
      foreach($message as $msg){
        echo '
        <div class="message" id="messages"><span>'.$msg.'</span>
        </div>
        ';
      }
    }
    ?>

     <div class="container">
        <form action="" method="post">
            <h3 style="color:white">login to <a href="index.php"><span>Vibe</span><span>Reads</span></a></h3>
            <input type="email" name="email" placeholder="Enter Email Id" required class="text_field">
            <input type="password" name="password" placeholder="Enter password" required class="text_field">
            <input type="submit" value="Login" name="login" class="btn text_field">
            
            <p style="text-align: center; color: white; margin: 15px 0;">OR</p>
            
            <a href="<?php echo $asgardeo_auth_url; ?>" class="asgardeo-btn">Login with WSO2 Asgardeo</a>
          
            <p style="margin-top: 20px;">Don't have an Account? <br> <a class="link" href="Register.php">Sign Up</a><a class="link" href="index.php">Back</a></p>
        </form>
    </div>

    <script>
      //Script to hide the error message after 8 seconds 
      setTimeout(() => {
        const box = document.getElementById('messages');
        if(box) {
            box.style.display = 'none';
        }
      }, 8000);
    </script>
</body>
</html>