<?php



namespace Joob\Application;

/* =============================================================================================================================*/
/* =============================================================================================================================*/

/**
 * jobapp.class.php
 *
 * Job Application class and functions
 *
 * @category   Job Application
 * @package    Joobi
 * @author     Redwan Aouni <aouniradouan@gmail.com>
 * @copyright  2021 - Joobi
 * @version    1.0.0
 * @since      File available since Release 1.0.0
 */

/* =============================================================================================================================*/
/* =============================================================================================================================*/



class JobApplication {






    /**
     * Application Function
     *
     * This function insert the Application Data to the database
     *
     * @param   String      $JOB_Job_id                     Job ID 
     * @param   String      $JOB_fname                      Job Applyer FirstName
     * @param   String      $JOB_sname                      Job Applyer Last/Second Name
     * @param   String      $JOB_Nationality                Job Applyer Nationality
     * @param   String      $JOB_Birth_Day                  Job Applyer Birthday
     * @param   String      $JOB_Birth_Month                Job Applyer Birthmonth
     * @param   String      $JOB_Birth_year                 Job Applyer Birthyear
     * @param   String      $JOB_Residence_Country          Job Applyer Residence Country
     * @param   String      $JOB_State                      Job Applyer State
     * @param   String      $JOB_City                       Job Applyer City
     * @param   String      $JOB_Zip_Code                   Job Applyer Zip Code
     * @param   String      $JOB_email                      Job Applyer E-mail
     * @param   String      $JOB_phone                      Job Applyer Phone Number
     * @param   String      $JOB_Work_Experience            Job Applyer Work Experience
     * @param   String      $JOB_Resume                     Job Applyer Resume
     * @param   String      $JOB_Gender                     Job Applyer Gender
     *
     * @param   File        $CvDoc                          Job Applyer CV
     * @param   File        $CertificateDoc                 Job Applyer Certificates
     * @param   File        $AchievementDoc                 Job Applyer Achievements
     * 
     * @return  String      $response                       Response if the payment succeced or not
     *
     * @author Redwan Aouni <aouniradouan@gmail.com>
     */

    public function Apply($JOB_id, $JOB_fname, $JOB_sname, $JOB_Nationality, $JOB_Birth_Day, $JOB_Birth_Month, $JOB_Birth_year, $JOB_Residence_Country, $JOB_State, $JOB_City, $JOB_Zip_Code, $JOB_email, $JOB_phone, $JOB_Work_Experience, $JOB_Resume, $JOB_Gender,$CvDoc, $CertificateDoc, $AchievementDoc){

        global $database;


        $DocumentsUpload    =   $this->UploadDocuments($CvDoc, $CertificateDoc, $AchievementDoc);
        $cvPath             =   $DocumentsUpload['cvPath'];
        $CertificatePath    =   $DocumentsUpload['CertificatePath'];
        $AchievementPath    =   $DocumentsUpload['AchievementPath'];


        $database->query('INSERT INTO applications', [
            'unique_id'         =>  $this->GenerteCode(),
            'job_id'            =>  $JOB_id,
            'fname'             =>  $JOB_fname,
            'sname'             =>  $JOB_sname,
            'nationality'       =>  $JOB_Nationality,
            'birth_day'         =>  $JOB_Birth_Day,
            'birth_month'       =>  $JOB_Birth_Month,
            'birth_year'        =>  $JOB_Birth_year,
            'residence_country' =>  $JOB_Residence_Country,
            'state'             =>  $JOB_State,
            'city'              =>  $JOB_City,
            'postal_code'       =>  $JOB_Zip_Code,
            'email'             =>  $JOB_email,
            'phone'             =>  $JOB_phone,
            "expierence"        =>  $JOB_Work_Experience,
            'resume'            =>  $JOB_Resume,
            'gender'            =>  $JOB_Gender,
            'cv_img'            =>  $cvPath,
            'certificate_img'   =>  $CertificatePath,
            'achievement_img'   =>  $AchievementPath,
            'status'            =>  1


        ]);

        $Response   =   1;

        if ($Response == 1) {
            header("Location: $_SERVER[PHP_SELF]?success=1");
        }else{

        }

        

    }




    /**
     * Document Uploader function
     *
     * This function upload and store the ûser document or images in server
     *
     * @param   File        $Cv                          Job Applyer CV
     * @param   File        $Certificate                 Job Applyer Certificates
     * @param   File        $Achievement                 Job Applyer Achievements
     * 
     * @return  Array                                    return complete storage directory in the server of every uploaded file
     *
     * @author Redwan Aouni <aouniradouan@gmail.com>
     */

    private function UploadDocuments($Cv, $Certificate, $Achievement){
        global $FILES_SYSTEMS;

        $CVDocument             = OX_Uploader($Cv, $FILES_SYSTEMS['storage']['upload']['user']['cv'], $this->GenerteCode() );        
        $CertificateDocument    = OX_Uploader($Certificate, $FILES_SYSTEMS['storage']['upload']['user']['certificate'], $this->GenerteCode() );
        $AchievementDocument    = OX_Uploader($Achievement, $FILES_SYSTEMS['storage']['upload']['user']['achievement'], $this->GenerteCode() );        
        
        return [
            "cvPath"             => $CVDocument['CompletePath'],
            "CertificatePath"    => $CertificateDocument['CompletePath'],
            "AchievementPath"    => $AchievementDocument['CompletePath'],

        ];


    }


    /**
     * Random code Function
     *
     * Generate a Randomcode
     * @return  INTG
     * @author Redwan Aouni <aouniradouan@gmail.com>
     */
    private function GenerteCode(){
        return OX_RandomNumber();
    }



}


?>