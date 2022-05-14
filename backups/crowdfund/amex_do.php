<?php

include('VPCPaymentConnection.php');

$conn = new VPCPaymentConnection();

$secureSecret = "14DE3651F0BEFC0EB52C535B32C5A6AF";

$conn->setSecureSecret($secureSecret);

ksort ($_POST);

// add the start of the vpcURL querystring parameters
$vpcURL = 'https://vpos.amxvpos.com/vpcpay';

// This is the title for display
$title  = $_POST['Title'];

unset($_POST["SubButL"]);

// Add VPC post data to the Digital Order
foreach($_POST as $key => $value) {
    if (strlen($value) > 0) {
        $conn->addDigitalOrderField($key, $value);
    }
    
}


// Add original order HTML so that another transaction can be attempted.
$conn->addDigitalOrderField("AgainLink", "");

// Obtain a one-way hash of the Digital Order data and add this to the Digital Order
$secureHash = $conn->hashAllFields();
$conn->addDigitalOrderField("vpc_SecureHash", $secureHash);

// Obtain the redirection URL and redirect the web browser
$vpcURL = $conn->getDigitalOrder($vpcURL);

header("Location: ".$vpcURL);
//echo "<a href=$vpcURL>$vpcURL</a>";                

?>

