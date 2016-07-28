<?php
require 'PHPMailer/PHPMailerAutoload.php';

class mailSender{
function mail($email,$message,$header){
	$mail = new PHPMailer;
	// if(isset($_REQUEST['email'])){
		// $email=$_REQUEST['email'];
		// $message=$_REQUEST['message'];
		// $header=$_REQUEST['subject'];

	// $mail->SMTPDebug = 3;                               // Enable verbose debug output

	$mail->isSMTP();                                      // Set mailer to use SMTP
	$mail->Host = 'smtp.office365.com';  // Specify main and backup SMTP servers
	$mail->SMTPAuth = true;                               // Enable SMTP authentication
	$mail->Username = 'daniel.osei@ashesi.edu.gh';                 // SMTP username
	$mail->Password = 'nanaekow10';                           // SMTP password
	$mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
	$mail->Port = 587;                                    // TCP port to connect to

	$mail->setFrom('daniel.osei@ashesi.edu.gh', 'WalkMe');
	$mail->addAddress($email, 'Dan');     // Add a recipient
	//$mail->addAddress('ellen@example.com');               // Name is optional
	//$mail->addReplyTo('info@example.com', 'Information');
	//$mail->addCC('cc@example.com');
	//$mail->addBCC('bcc@example.com');

	//$mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
	//$mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name
	$mail->isHTML(true);                                  // Set email format to HTML

	$mail->Subject = $header;
	$mail->Body    = $message;
	$mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

	$mail->SMTPOptions = array(
	    'ssl' => array(
	        'verify_peer' => false,
	        'verify_peer_name' => false,
	        'allow_self_signed' => true
	    )
	);

	if(!$mail->send()) {
	    echo 0;
	    // echo 'Mailer Error: ' . $mail->ErrorInfo;
	} else {
	    echo 1;
	}
// }
}
}
?>