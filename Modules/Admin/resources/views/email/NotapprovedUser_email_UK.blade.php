<!DOCTYPE html> 
<html lang="en"> 
<head> 
 <meta charset="UTF-8" /> 
 <meta name="viewport" content="width=device-width, initial-scale=1" /> 
 <title>Privée Club – Profile Not Approved</title> 
 <style> 
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
 <table width="100%" cellspacing="0" cellpadding="0" border="0" align="center" 
style="background-color:#FFFFFF; padding:40px 0;"> 
 <tr> 
 <td align="center"> 
 <!-- LOGO --> 
 <img 
 class="logo" 
 src="{{ url('assets/images/Frame.png') }}" 
 alt="Privée Club Logo" 
 style="width:240px; height:auto; margin-bottom:30px;" 
 /> 
 <!-- CONTENT CARD --> 
 <table class="content-wrapper" width="600" cellspacing="0" cellpadding="0" border="0" 
 style="background:#FFFFFF; border-radius:12px; padding:40px; border:1px solid #eee;"> 
 <!-- Greeting --> 
 <tr> 
 <td style="font-size:22px; color:#000; padding-bottom:20px;"> 
 Dear {{$user->profile_name}}, 
 </td> 
 </tr> 
 <!-- Body --> 
 <tr> 
 <td style="font-size:15px; line-height:1.7; color:#000;"> 
 Unfortunately, your profile at <strong>Privée Club</strong> has not been approved at this 
time.<br><br> 
 There may be several reasons for this. We encourage you to check if one or more of the 
following reasons could be the cause:<br><br> 
 • Your rating picture deviates too much from your selfie<br> 
 • The information about your age, height, weight, hair color, body type, etc., deviates too 
much from the submitted pictures<br> 
 • Your description of yourself or the person you're seeking is too extreme 
 (racist, religiously offensive, threatening, homophobic, hateful, discriminatory, 
pornographic, etc.)<br> 
 • Your username is too extreme 
 (racist, threatening, homophobic, hateful, discriminatory, pornographic, etc.)<br><br> 
 We encourage you to adjust your profile so that it aligns with our community guidelines 
and apply again.<br><br> 
 We would love for you to be a part of Privée Club.<br><br> 
 Warm regards,<br> 
 <strong>Privée Club Team</strong><br><br> 
 </td> 
 </tr> 
 </table> 
 <!-- FOOTER --> 
 <table width="600" cellspacing="0" cellpadding="0" border="0" align="center" 
style="padding-top:25px;"> 
 <tr> 
 <td style="font-size:12px; color:#666; text-align:center; line-height:1.5;"> 
 © 2025 Privée Club. All rights reserved.<br> 
 This is an automated message — please do not reply. 
 </td> 
 </tr> 
 </table> 
 </td> 
 </tr> 
 </table> 
</body> 
</html> 