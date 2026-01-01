<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Privée Club </title>
        <style>
         @font-face {
         font-family: 'CenturyGothic';
         src: url('font/CenturyGothic.woff2') format('woff2'),
         url('font/gothic.woff') format('woff'),
         url('font/CenturyGothic.ttf') format('truetype');
         font-weight: normal;
         font-style: normal;
         }
         @media (max-width: 480px) {
         .table {
         width: 92% !important;
         }
         }
      </style>
    </head>
    <body style="
      font-size: 17px;
      line-height: 24px;
      color: #000000e0;
      font-family: 'CenturyGothic', sans-serif;
      ">
        <div class="main_container">
            <div class="table" style="
            width: 60%;
            margin: 44px auto;
            border: 1px solid #8080804d;
            border-radius: 8px;
            ">
                <table style="padding: 37px 33px;">
                    <tr>
                        <th>
                            <div>
                                <img src="{{ url('assets/images/Frame.png') }}" alt="logo" style="
                           width: 200px;
                           margin-bottom: 10px;
                           margin-top: 11px;
                           ">
                            </div>
                            <div style="
                        font-size: 20px;
                        margin-bottom: 30px;
                        ">Dear {{ $user->profile_name ?? 'Member' }}</div>
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <div style="
                        margin-bottom: 9px;
                        ">We are thrilled to let you know that your application
                                to <b> Privée Club </b>has been approved!
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="
                        margin-bottom: 9px;
                        ">You’ve just made it through the eye of the needle —
                                with only one in five applicants accepted.
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="
                        margin-bottom: 9px;
                        ">This means you now have full access to all our unique
                                features, including the chance to connect with
                                attractive members for love, flirting, sugar
                                dating, or simply expanding your exclusive
                                network.
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="
                        margin-bottom: 9px;
                        ">Congratulations once again, and welcome to <b>
                                    Privée Club </b> – Denmark’s most exclusive
                                dating app reserved for the beautiful.
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div>
                                <p style="
                           margin-bottom: 0px;
                           ">Warm regards,</p>
                                <p style="
                           margin-top: 0px;
                           "><b>Privée Club Team</b></p>
                            </div>
                        </td>
                    </tr>
                </table>
                <div style="
               text-align: center;
               border-top: 1px solid #8080804d;
               padding: 23px 0px;
               font-size: 16px;
               ">
                    © {{ date('Y') }} Privée Club. All rights reserved.
                </div>
            </div>
        </div>
    </body>
</html>