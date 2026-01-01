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
                        ">Kære {{ $user->profile_name ?? 'Member' }}</div>
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <div style="
                        margin-bottom: 9px;
                        ">Vi er glade for at kunne meddele, at din
                                ansøgning hos <b> Privée Club </b>er blevet
                                godkendt!
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="
                        margin-bottom: 9px;
                        ">Du har netop klaret det gennem nåleøjet — kun
                                én ud af fem ansøgere bliver accepteret.
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="
                        margin-bottom: 9px;
                        ">Dette betyder, at du nu har fuld adgang til
                                alle vores unikke funktioner, inklusive
                                muligheden for at connecte med attraktive
                                medlemmer for kærlighed, flirt, sugardating
                                eller blot udvide dit eksklusive netværk.
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="
                        margin-bottom: 9px;
                        ">Tillykke endnu en gang, og velkommen til <b>
                                    Privée Club </b> – Danmarks mest eksklusive
                                datingapp, reserveret for de smukke.
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div>
                                <p style="
                           margin-bottom: 0px;
                           ">De bedste hilsner,</p>
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