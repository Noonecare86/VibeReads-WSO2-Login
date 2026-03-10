<?php
session_start();

$client_id = '4iC5w5A4RhxPKyo4uOm2T20mUYga'; 
// Your Asgardeo Organization Name and Secret Key 
$client_secret = 'Your_Client_Secret'; 
$org_name = 'YOUR_CLIENT_ID';

$redirect_uri = 'http://localhost/WSO2/callback.php';

if (isset($_GET['code'])) {
    $code = $_GET['code'];
    $token_url = "https://api.asgardeo.io/t/{$org_name}/oauth2/token";

    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $token_url);
    curl_setopt($ch, CURLOPT_POST, true);
    curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query([
        'grant_type' => 'authorization_code',
        'code' => $code,
        'redirect_uri' => $redirect_uri,
        'client_id' => $client_id,
        'client_secret' => $client_secret
    ]));
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    
   
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);

    $response = curl_exec($ch);
    
   
    if(curl_errno($ch)){
        echo 'cURL Error: ' . curl_error($ch);
        exit();
    }
    
    curl_close($ch);

    $data = json_decode($response, true);

    if (isset($data['id_token'])) {
        $token_parts = explode(".", $data['id_token']);
        $user_info = json_decode(base64_decode($token_parts[1]), true);

        $_SESSION['user_name'] = $user_info['given_name'] ?? 'Asgardeo User';
        $_SESSION['user_email'] = $user_info['email'] ?? '';
        $_SESSION['user_id'] = $user_info['sub'];

        header("Location: index.php");
        exit();
    } else {
        
        echo "<h3 style='color:red;'>Asgardeo Login Failed! Invalid Token.</h3>";
        echo "<p>Here is the exact error from Asgardeo:</p>";
        echo "<pre style='background:#eee; padding:10px;'>";
        print_r($data);
        echo "</pre>";
    }
} else {
    echo "No authorization code found in URL.";
}
?>