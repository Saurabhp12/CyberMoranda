<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Verify OTP</title>
</head>
<body style="text-align:center; margin-top:100px; font-family:sans-serif;">
  <h2>Enter OTP</h2>
  <form method="POST" action="verify.php">
    <input type="text" name="otp" placeholder="Enter OTP sent to your device" required><br><br>
    <button type="submit">Verify</button>
  </form>
</body>
</html>