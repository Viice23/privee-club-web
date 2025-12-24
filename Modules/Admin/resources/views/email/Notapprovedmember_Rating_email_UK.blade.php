    <!DOCTYPE html> 
    <html lang="en"> 
    <head> 
     <meta charset="UTF-8" /> 
     <meta name="viewport" content="width=device-width, initial-scale=1" /> 
     <title>Privée Club – Application Unsuccessful</title> 
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
    <body style="margin:0; padding:0; background-color:#FFFFFF; font-family:Arial, 
    sans-serif;"> 
     <!-- Outer Wrapper --> 
     <table width="100%" cellspacing="0" cellpadding="0" border="0" align="center" 
    style="background-color:#FFFFFF; padding:40px 0;"> 
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
     <table class="content-wrapper" width="600" cellspacing="0" cellpadding="0" 
    border="0" 
     style="background:#FFFFFF; border-radius:12px; padding:40px; border:1px 
    solid #eee;"> 
     <!-- Greeting --> 
     <tr> 
     <td style="font-size:22px; color:#000; paddingbottom:20px;"> 
     Dear {{$user->profile_name}}, 
     </td> 
     </tr> 
     <!-- Body --> 
     <tr> 
     <td style="font-size:15px; line-height:1.7; color:#000;"> 
     Thank you for your interest in <strong>Privée Club</strong>.<br><br> 
     Unfortunately, your application was not successful this time.<br><br> 
     As only <strong>one in five applicants</strong> are accepted, the 
    selection process is highly competitive.<br><br> 
     A number of factors can influence the outcome, including:<br><br> 
     • Wearing sunglasses in your application photo<br> 
     • Having more than one person in the photo<br> 
     • Low-quality images<br> 
     • Missing or incomplete profile description<br><br> 
     We strongly encourage you to apply again. 
     Taking the time to refine your profile and ensure all details are in order 
     will significantly increase your chances of being approved by our 
    members.<br><br> 
     We wish you the very best of success and hope to see your application 
    again soon.<br><br> 
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