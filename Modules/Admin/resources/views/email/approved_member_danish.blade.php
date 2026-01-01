<!DOCTYPE html>
<html lang="da">
<head>
    <meta charset="utf-8">
    <title>Profil godkendt - Privée Club</title>
</head>
<body style="font-family: Arial, sans-serif; background-color:#f9f9f9; padding:20px;">
    <div style="max-width:600px; margin:auto; background:#ffffff; padding:25px; border-radius:10px; box-shadow:0 2px 10px rgba(0,0,0,0.1);">
        
        <!-- Logo -->
        <div style="text-align:center; margin-bottom:20px;">
            <img src="{{ url('assets/images/Frame.png') }}" alt="Privée Club Logo" style="max-width:150px;">
        </div>

        <!-- Title -->
        <h2 style="text-align:center; color:#222; margin-bottom:20px;">Din profil er blevet godkendt!</h2>

        <!-- Greeting -->
        <p style="font-size:16px; color:#333;">Kære {{ $user->profile_name ?? 'Medlem' }},</p>

        <!-- Message -->
        <p style="font-size:16px; color:#555; line-height:1.6;">
            Vi er glade for at kunne meddele, at din profil hos <strong>Privée Club</strong> er blevet godkendt! 
        </p>

        <p style="font-size:16px; color:#555; line-height:1.6;">
            Det betyder, at du nu – i de næste <strong>48 timer</strong> – vil blive vurderet af vores eksisterende medlemmer af det modsatte køn.
        </p>

        <p style="font-size:16px; color:#555; line-height:1.6;">
            Du kan til enhver tid følge udviklingen i voteringen ved at logge ind på din profil hos <strong>Privée Club</strong>.
        </p>

        <p style="font-size:16px; color:#555; line-height:1.6;">
            Mens voteringen står på, er du naturligvis velkommen til at udforske appen – men funktioner som <strong>Rate</strong>, <strong>Skriv</strong>, <strong>Like</strong> og <strong>Shout</strong> er endnu ikke tilgængelige.
        </p>

        <p style="font-size:16px; color:#555; line-height:1.6;">
            Vi ønsker dig al held og lykke de næste 48 timer og håber snart at kunne byde dig velkommen som fuldgyldigt medlem af  
            <strong>Privée Club – Danmarks mest eksklusive datingapp</strong>, forbeholdt de smukke.
        </p>

        <!-- Signature -->
        <p style="font-size:16px; color:#333; margin-top:30px;">
            De bedste hilsner, <br>
            <strong>Privée Club Team</strong>
        </p>

        <!-- Footer -->
        <hr style="margin:30px 0; border:none; border-top:1px solid #eee;">
        <p style="font-size:13px; color:#888; text-align:center;">
            © {{ date('Y') }} Privée Club. Alle rettigheder forbeholdes.
        </p>
    </div>
</body>
</html>
