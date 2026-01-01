    <!DOCTYPE html>
    <html lang="da">
    <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Privée Club – Emailbekræftelse</title>
     
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
     
    <!-- CONTENT CARD -->
    <table class="content-wrapper" width="600" cellspacing="0" cellpadding="0" border="0" 
           style="background:#FFFFFF; border-radius:12px; padding:40px; border:1px solid #eee;">
     
      <!-- Title -->
      <tr>
        <td style="font-size:22px;color:#000; padding-bottom:20px;">
          Hej {{$user->profile_name}},
        </td>
      </tr>
     
      <!-- Body -->
      <tr>
        <td style="font-size:15px; line-height:1.7; color:#000;">
          Tak for din interesse i at blive medlem af <strong>Privée Club</strong>!<br><br>
          For at verificere din e-mailadresse bedes du indtaste følgende 6-cifrede kode i appen for at bekræfte din konto:<br><br>
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
          Tak.<br><br>
          Venlig hilsen,<br>
          <strong>Privée Club Team</strong>
        </td>
      </tr>
     
    </table>
     
    <!-- FOOTER -->
    <table width="600" cellspacing="0" cellpadding="0" border="0" align="center" style="padding-top:25px;">
    <tr>
    <td style="font-size:12px; color:#666; text-align:center; line-height:1.5;">
      © 2025 Privée Club. Alle rettigheder forbeholdes.<br>
      Dette er en automatisk besked, svar venligst ikke.
    </td>
    </tr>
    </table>
     
    </td>
    </tr>
    </table>
     
    </body>
    </html>
