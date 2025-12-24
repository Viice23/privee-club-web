<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Profile Approved - Privée Club</title>
</head>
<body style="font-family: Arial, sans-serif; background-color:#f9f9f9; padding:20px;">
    <div style="max-width:600px; margin:auto; background:#fff; padding:25px; border-radius:10px; box-shadow:0 2px 10px rgba(0,0,0,0.1);">
        
        <!-- Logo -->
        <div style="text-align:center; margin-bottom:20px;">
            <img src="{{ url('public/assets/images/Frame.png') }}" alt="Privée Club Logo" style="max-width:150px;">
        </div>

        <!-- Title -->
        <h2 style="text-align:center; color:#222; margin-bottom:20px;">Your Profile Has Been Approved!</h2>

        <!-- Greeting -->
        <p style="font-size:16px; color:#333;">Dear {{ $user->profile_name ?? 'Member' }},</p>

        <!-- Message Body -->
        <p style="font-size:16px; color:#555; line-height:1.6;">
            We’re pleased to inform you that your profile on <strong>Privée Club</strong> has been approved! 
        </p>

        <p style="font-size:16px; color:#555; line-height:1.6;">
            Over the next <strong>48 hours</strong>, your profile will be rated by existing members of the opposite gender.  
            You can monitor your voting progress anytime by logging into your Privée Club profile.
        </p>

        <p style="font-size:16px; color:#555; line-height:1.6;">
            While the voting is in progress, feel free to explore the app.  
            However, features such as <strong>Rate</strong>, <strong>Chat</strong>, <strong>Like</strong>, and <strong>Shout</strong> will remain unavailable until the voting phase concludes.
        </p>

        <p style="font-size:16px; color:#555; line-height:1.6;">
            We wish you the best of luck during this period and hope to welcome you soon as a full member of  
            <strong>Privée Club – Denmark’s most exclusive dating app</strong>, reserved for the beautiful.
        </p>

        <!-- Signature -->
        <p style="font-size:16px; color:#333; margin-top:30px;">
            Best regards, <br>
            <strong>Privée Club Team</strong>
        </p>

        <!-- Footer -->
        <hr style="margin:30px 0; border:none; border-top:1px solid #eee;">
        <p style="font-size:13px; color:#888; text-align:center;">
            © {{ date('Y') }} Privée Club. All rights reserved.
        </p>
    </div>
</body>
</html>
