<!DOCTYPE html> 
<html lang="da"> 
<head> 
 <meta charset="UTF-8" /> 
 <meta name="viewport" content="width=device-width, initial-scale=1" /> 
 <title>Privée Club – Profil ikke godkendt</title> 
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
 src="{{ url('assets/images/Frame.png') }}" 
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
 Kære  {{$user->profile_name}}, 
 </td> 
 </tr> 
 <!-- Body --> 
 <tr> 
 <td style="font-size:15px; line-height:1.7; color:#000;"> 
 Din profil hos <strong>Privée Club</strong> er desværre ikke blevet 
godkendt i denne omgang.<br><br> 
 Der kan være flere årsager til dette. 
 Vi opfordrer dig derfor til at tjekke, om én eller flere af følgende grunde 
måtte være årsagen:<br><br> 
 • Dit ratingbillede afviger for meget fra din selfie<br> 
 • Oplysninger om alder, højde, vægt, hårfarve, kropstype m.v. afviger for 
meget fra dine indsendte billeder<br> 
 • Din tekst om dig selv eller den, du søger, er for ekstrem 
 (racistisk, religiøst krænkende, truende, homofobisk, hadsk, 
diskriminerende, pornografisk m.v.)<br> 
 • Dit brugernavn er for ekstremt 
 (racistisk, truende, homofobisk, hadsk, diskriminerende, pornografisk 
m.v.)<br><br> 
 Vi opfordrer dig til at tilpasse din profil, så den lever op til vores 
fællesskabsregler, og derefter ansøge igen.<br><br> 
 Vi vil meget gerne have, at du bliver en del af Privée Club.<br><br> 
 De bedste hilsner,<br> 
 <strong>Privée Club Team</strong><br><br> 
 </td> 
 </tr> 
 </table> 
 <!-- FOOTER --> 
 <table width="600" cellspacing="0" cellpadding="0" border="0" align="center" 
style="padding-top:25px;"> 
 <tr> 
 <td style="font-size:12px; color:#666; text-align:center; line-height:1.5;"> 
 © 2025 Privée Club. Alle rettigheder forbeholdes.<br> 
 Denne besked er automatisk genereret – venligst ikke besvar den. 
 </td> 
 </tr> 
 </table> 
 </td> 
 </tr> 
 </table> 
</body> 
</html>