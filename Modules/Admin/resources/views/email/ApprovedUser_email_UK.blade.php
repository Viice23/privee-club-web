    <!DOCTYPE html>
    <html lang="en">
    <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Privée Club – Profile Approved</title>
     
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
              src="{{ url('assets/images/Frame.png') }}"
              alt="Privée Club Logo"
              style="width:240px; height:auto; margin-bottom:30px;"
            />
     
            <!-- CONTENT CARD (White Background) -->
    <table class="content-wrapper" width="600" cellspacing="0" cellpadding="0" border="0" 
                   style="background:#FFFFFF; border-radius:12px; padding:40px; border:1px solid #eee;">
     
              <!-- Title -->
    <tr>
    <td style="font-size:22px; font-weight:bold; color:#000; padding-bottom:20px;">
                  Dear {{$user->profile_name}},
    </td>
    </tr>
     
              <!-- Body -->
    <tr>
    <td style="font-size:15px; line-height:1.7; color:#000;">
                  We’re pleased to inform you that your profile on <strong>Privée Club</strong> has been approved!<br><br>
     
                  Over the next <strong>48 hours</strong>, you will be rated by our existing members of the opposite gender.
                  You can follow your voting progress anytime by logging into your profile on Privée Club.<br><br>
     
                  While voting is in progress, you are welcome to explore the app — however, features such as
    <strong>Rate, Chat, Like, F·L·U·X Shot, and Shout-Out</strong> will remain unavailable until voting ends.<br><br>
     
                  We wish you the very best over the next 48 hours and hope to welcome you soon as a full member of Privée Club —
                  Denmark’s most exclusive dating app, reserved for the beautiful.<br><br>
     
                  Best regards,<br>
    <strong>The Privée Club Team</strong><br><br>
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