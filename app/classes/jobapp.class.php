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
     * @param   Array      $JobsDATA                     Application Data
     * 
     * @return  String      $response                    Response is 1 / 0
     *
     * @author Redwan Aouni <aouniradouan@gmail.com>
     */

    public function Apply(array $JobsDATA){

        global $database;

        // Get Data from $JOBDATA Array
        $JOB_Job_id            =  $JobsDATA['JOB_Job_id'];
        $JOB_fname             =  $JobsDATA['JOB_fname'];
        $JOB_sname             =  $JobsDATA['JOB_sname'];
        $JOB_Nationality       =  $JobsDATA['JOB_Nationality'];
        $JOB_Birth_Day         =  $JobsDATA['JOB_Birth_Day'];
        $JOB_Birth_Month       =  $JobsDATA['JOB_Birth_Month'];
        $JOB_Birth_year        =  $JobsDATA['JOB_Birth_year'];
        $JOB_Residence_Country =  $JobsDATA['JOB_Residence_Country'];
        $JOB_State             =  $JobsDATA['JOB_State'];
        $JOB_City              =  $JobsDATA['JOB_City'];
        $JOB_Zip_Code          =  $JobsDATA['JOB_Zip_Code'];
        $JOB_email             =  $JobsDATA['JOB_email'];
        $JOB_phone             =  $JobsDATA['JOB_phone'];
        $JOB_Work_Experience   =  $JobsDATA['JOB_Work_Experience'];
        $JOB_Resume            =  $JobsDATA['JOB_Resume'];
        $JOB_Gender            =  $JobsDATA['JOB_Gender'];
        $JOB_Cv_Img            =  $JobsDATA['JOB_Cv_Img'];
        $JOB_Certificate_Img   =  $JobsDATA['JOB_Certificate_Img'];
        $JOB_Achievement_Img   =  $JobsDATA['JOB_Achievement_Img'];



        $DocumentsUpload    =   $this->UploadDocuments($JOB_Cv_Img, $JOB_Certificate_Img, $JOB_Achievement_Img);
        $cvPath             =   $DocumentsUpload['cvPath'];
        $CertificatePath    =   $DocumentsUpload['CertificatePath'];
        $AchievementPath    =   $DocumentsUpload['AchievementPath'];


        $database->query('INSERT INTO applications', [
            'unique_id'         =>  $this->GenerteCode(),
            'job_id'            =>  $JOB_Job_id,
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

            echo "<script type='text/javascript'>window.location.replace(' $_SERVER[PHP_SELF]?success=1 ');</script>";
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
        global $FILES_SYSTEMS,$APP;

        $CVDocument             = OX_Uploader($Cv, $FILES_SYSTEMS['storage']['upload']['user']['cv'], $this->GenerteCode() );        
        $CertificateDocument    = OX_Uploader($Certificate, $FILES_SYSTEMS['storage']['upload']['user']['certificate'], $this->GenerteCode() );
        $AchievementDocument    = OX_Uploader($Achievement, $FILES_SYSTEMS['storage']['upload']['user']['achievement'], $this->GenerteCode() );        
        
        return [
            "cvPath"             => $APP['APP_URL']. '/' .$CVDocument['CompletePath'],
            "CertificatePath"    => $APP['APP_URL']. '/' .$CertificateDocument['CompletePath'],
            "AchievementPath"    => $APP['APP_URL']. '/' .$AchievementDocument['CompletePath'],

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