<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Privée Club – Email Verification</title>
 
  <style>
    /* Mobile responsiveness */
    @media only screen and (max-width: 600px) {
      .content-wrapper {
        width: 90% !important;
        padding: 20px !important;
      }
      .logo {
        width: 200px !important;
      }
    }
</style>
</head>
 
<body style="margin:0; padding:0; background-color:#FFFFFF; font-family:Arial, sans-serif;">
 
  <!-- Outer Wrapper -->
<table width="100%" cellspacing="0" cellpadding="0" border="0" align="center" style="background-color:#FFFFFF; padding:40px 0;">
<tr>
<td align="center">
 
        <!-- LOGO -->
<img 
          class="logo"
          src="{{ url('public/assets/images/Frame.png') }}"
          alt="Privée Club Logo"
          style="width:240px; height:auto; margin-bottom:30px;"
        />
 
        <!-- CONTENT CARD -->
<table class="content-wrapper" width="600" cellspacing="0" cellpadding="0" border="0" 
               style="background:#FFFFFF; border-radius:12px; padding:40px; border:1px solid #eee;">
 
          <!-- Title -->
<tr>
<td style="font-size:22px;color:#000; padding-bottom:20px;">
              Hi {{$user->profile_name}},
</td>
</tr>
 
          <!-- Body -->
<tr>
<td style="font-size:15px; line-height:1.7; color:#000;">
              Thank you for your interest in joining <strong>Privée Club</strong>!<br><br>
 
              To verify your email address, please enter the following 6-digit code in the app to confirm your account:<br><br>
</td>
</tr>
 
          <!-- OTP Code -->
<tr>
<td align="center" style="padding:20px 0;">
<div style="
                font-size:32px; 
                font-weight:bold; 
                letter-spacing:8px; 
                color:#000;
                padding:15px 0;
              ">
              {{$otp}}
</div>
</td>
</tr>
 
          <!-- Footer Text -->
<tr>
<td style="font-size:15px; line-height:1.7; color:#000;">
              Thank you.<br><br>
              Kind regards,<br>
<strong>Privée Club Team</strong>
</td>
</tr>
 
        </table>
 
        <!-- FOOTER -->
<table width="600" cellspacing="0" cellpadding="0" border="0" align="center" style="padding-top:25px;">
<tr>
<td style="font-size:12px; color:#666; text-align:center; line-height:1.5;">
              © 2025 Privée Club. All rights reserved.<br>
              This is an automated message, please do not reply.
</td>
</tr>
</table>
 
      </td>
</tr>
</table>
 
</body>
</html>