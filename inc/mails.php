<?php
// claim report email
function claim_report(
    $subject,
    $businessEmail,
    $businessFullName,
    $clientEmail,
    $clientFullName,
    $body
) {

    //mailing claim report
    require_once '../mailer/PHPMailer.php';
    require_once '../mailer/SMTP.php';
    $mail = new PHPMailer(true);
    try {
        $mail->IsSMTP();
        $mail->isHTML(true);
        $mail->SMTPDebug = 0;
        $mail->Debugoutput = 'echo';
        $mail->Host = 'mail.apainsurance.ke';

        $mail->Port = 25;
        $mail->Username = 'apa.website@apollo.co.ke';
        $mail->Password = 'Apa321$321';

        $mail->setFrom('apa.website@apollo.co.ke', 'APA WEBSITE');
        $mail->AddAddress($businessEmail, $businessFullName);
        $mail->addBCC('anthonybaru@gmail.com');
        $mail->addBCC('peter.chege@apollo.co.ke');
        $mail->addBCC('irene.akubania@apainsurance.org');
        $mail->addBCC('juddy.tonui@apollo.co.ke');
        $mail->addBCC('gilbert.njoroge@apollo.co.ke');
        $mail->AddReplyTo($clientEmail, $clientFullName);
        $mail->Subject = $subject;
        $mail->Body = $body;
        $mail->send();
        $mail->ClearAddresses();
        //client response
        $subjectClient = 'CLAIM REPORT ACKNOWLEDGEMENT';
        $bodyClient = 'Dear ' . $clientFullName . ',<br> 
                We acknowledge receipt of your claim notification. 
                Our claims officer will contact you shortly to guide you and advise you accordingly. 
                Please do feel free to contact us via our contact centre number 0709912777 for more queries or clarification.';
        $mail->AddAddress($clientEmail, $clientFullName);
        $mail->AddReplyTo('no-reply@apollo.co.ke', 'APA INSURANCE');
        $mail->Body = $bodyClient;
        $mail->Subject = $subjectClient;
        if ($mail->send()) {
            return 1;
        }
    } catch (Exception $e) {
        return strip_tags($e->errorMessage()); //Pretty error messages from PHPMailer
    } catch (\Exception $e) { //The leading slash means the Global PHP Exception class will be caught
        return $e->getMessage(); //Boring error messages from anything else!
    }
}

// claim life email
function claim_upload_email(
    $subject,
    $businessEmail,
    $businessFullName,
    $clientEmail,
    $clientFullName,
    $body,
    $documents
) {
    require_once '../mailer/PHPMailer.php';
    require_once '../mailer/SMTP.php';
    $mail = new PHPMailer(true);
    try {
        $mail->IsSMTP();
        $mail->isHTML(true);
        $mail->SMTPDebug = 0;
        $mail->Debugoutput = 'echo';
        $mail->Host = 'mail.apainsurance.ke';

        $mail->Port = 25;
        $mail->Username = 'apa.website@apollo.co.ke';
        $mail->Password = 'Apa321$321';

        $mail->setFrom('apa.website@apollo.co.ke', 'APA WEBSITE');
        $mail->AddAddress($businessEmail, $businessFullName);
        $mail->addBCC('anthonybaru@gmail.com');
        $mail->addBCC('peter.chege@apollo.co.ke');
        $mail->addBCC('irene.akubania@apainsurance.org');
        $mail->addBCC('juddy.tonui@apollo.co.ke');
        $mail->addBCC('gilbert.njoroge@apollo.co.ke');
        $mail->AddReplyTo($clientEmail, $clientFullName);
        $mail->Subject = $subject;
        $mail->Body = $body;

        //looping through the available documents
        foreach ($documents as $key => $document) {
            $mail->addAttachment($document, $key);
        }
        $mail->send();
        $mail->ClearAddresses();
        $mail->clearAttachments();
        //client response
        $subjectClient = 'CLAIM DOCUMENT UPLOAD ACKNOWLEDGEMENT';
        $bodyClient = 'Dear ' . $clientFullName . ',<br> 
                We acknowledge receipt of your claim documents. 
                Our claims officer will contact you shortly to guide you and advise you accordingly. 
                Please do feel free to contact us via our contact centre number 0709912777 for more queries or clarification.';
        $mail->AddAddress($clientEmail, $clientFullName);
        $mail->AddReplyTo('no-reply@apollo.co.ke', 'APA INSURANCE');
        $mail->Body = $bodyClient;
        $mail->Subject = $subjectClient;
        if ($mail->send()) {
            return 1;
        }
    } catch (Exception $e) {
        return strip_tags($e->errorMessage()); //Pretty error messages from PHPMailer
    } catch (\Exception $e) { //The leading slash means the Global PHP Exception class will be caught
        return $e->getMessage(); //Boring error messages from anything else!
    }
}

// claim report email
function leads($clientFullName, $clientEmail)
{
    $subject = 'INFORMATION RECEIVED';
    $body = 'Dear ' . $clientFullName . ',<br> 
                Thank you for showing interest in our insurance solutions.  
                As a leading financial services group, we offer an array of affordable tailor made insurance and investment solutions. 
                Our customer experience executive will contact you shortly to expound on the cover selected.';
    //mailing claim report
    require_once '../mailer/PHPMailer.php';
    require_once '../mailer/SMTP.php';
    $mail = new PHPMailer(true);
    try {
        $mail->IsSMTP();
        $mail->isHTML(true);
        $mail->SMTPDebug = 0;
        $mail->Debugoutput = 'echo';
        $mail->Host = 'mail.apainsurance.ke';

        $mail->Port = 25;
        $mail->Username = 'apa.website@apollo.co.ke';
        $mail->Password = 'Apa321$321';

        $mail->setFrom('apa.website@apollo.co.ke', 'APA WEBSITE');
        $mail->AddAddress($clientEmail, $clientFullName);
        $mail->addBCC('anthonybaru@gmail.com');
        $mail->addBCC('peter.chege@apollo.co.ke');
        $mail->addBCC('gilbert.njoroge@apollo.co.ke');
        $mail->AddReplyTo('no-reply@apollo.co.ke', 'APA INSURANCE');
        $mail->Subject = $subject;
        $mail->Body = $body;
        if ($mail->send()) {
            return 1;
        }
    } catch (Exception $e) {
        return strip_tags($e->errorMessage()); //Pretty error messages from PHPMailer
    } catch (\Exception $e) { //The leading slash means the Global PHP Exception class will be caught
        return $e->getMessage(); //Boring error messages from anything else!
    }
}
