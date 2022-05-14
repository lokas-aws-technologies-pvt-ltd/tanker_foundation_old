<?php
$to = "raghav@lokas.in";
$subject = "New Web Basic";
$txt = "Hello world!";
$headers = "From: test@lokas.info";

mail($to,$subject,$txt,$headers);

echo "Mail sent!";
?>