<?php require_once dirname(__DIR__,1) . '/' . 'server.php'; ?>
<?php require_once dirname(__DIR__,1) . '/' . 'app/classes/jobapp.class.php'; ?>


<?php

	$NationalityList 	= 	$database->query("SELECT country_enNationality,country_code FROM countries WHERE status = ?", 1);
	$CountriesList 		= 	$database->query("SELECT country_enName,country_code FROM countries WHERE status = ?", 1);
	$JobsList 			= 	$database->query("SELECT * FROM jobs WHERE status = ?", 1);



	if ( isset( $_POST['CSRF_TOKEN'] ) ) {

		// Verify anti-CSRF token.
		if ( $nocsrf->verify( $_POST['CSRF_TOKEN'] ) ){
			// Anti-CSRF token is VALID
			$JOB_Job_id 			=	OX_InputSecure( $_POST['Job-id'] );
			$JOB_fname 				=	OX_InputSecure( $_POST['fname'] );
			$JOB_sname 				=	OX_InputSecure( $_POST['sname'] );
			$JOB_Nationality 		=	OX_InputSecure( $_POST['Nationality'] );
			$JOB_Birth_Day 			=	OX_InputSecure( $_POST['Birth-Day'] );
			$JOB_Birth_Month 		=	OX_InputSecure( $_POST['Birth-Month'] );
			$JOB_Birth_year 		=	OX_InputSecure( $_POST['Birth-year'] );
			$JOB_Residence_Country 	=	OX_InputSecure( $_POST['Residence-Country'] );
			$JOB_State 				=	OX_InputSecure( $_POST['State'] );
			$JOB_City 				=	OX_InputSecure( $_POST['City'] );
			$JOB_Zip_Code 			=	OX_InputSecure( $_POST['Zip-Code'] );
			$JOB_email 				=	OX_InputSecure( $_POST['email'] );
			$JOB_phone 				=	OX_InputSecure( $_POST['phone'] );
			$JOB_Work_Experience 	=	OX_InputSecure( $_POST['Work-Experience'] );
			$JOB_Resume 			=	OX_InputSecure( $_POST['Resume'] );
			$JOB_Gender 			=	OX_InputSecure( $_POST['Gender'] );
			// Images
			$JOB_Cv_Img 			=	$_FILES['Cv-Img'];
			$JOB_Certificate_Img 	=	$_FILES['Certificate-Img'];
			$JOB_Achievement_Img  	=	$_FILES['Achievement-Img'];


			$Application = new Joob\Application\JobApplication;
			$Application->Apply($JOB_Job_id, $JOB_fname, $JOB_sname, $JOB_Nationality, $JOB_Birth_Day, $JOB_Birth_Month, $JOB_Birth_year, $JOB_Residence_Country, $JOB_State, $JOB_City, $JOB_Zip_Code, $JOB_email, $JOB_phone, $JOB_Work_Experience, $JOB_Resume, $JOB_Gender, $JOB_Cv_Img, $JOB_Certificate_Img, $JOB_Achievement_Img);


		}else{
			// Anti-CSRF token is NOT VALID
			echo "System detect a CSRF attack";
		}

	}

?>


<?php

$Template 	=	$twig->render("index.blade.html",
	[
		'APP_NAME' 					=>	$APP['APP_NAME'],
		'LOCALE' 					=>	$APP['LOCALE'],
		'TemplateResources' 		=> 	OX_template( DEFAULT_TEMPLATE ),
		'Nationalitylist' 			=> 	$NationalityList,
		'Countrieslist' 			=> 	$CountriesList,
		'Jobslist' 					=> 	$JobsList,
		'CSRF_TOKEN' 				=>	$CSRF_Token,
		'CheckRequestSuccess' 		=> 	isset( $_GET['success'] )
	]
);

echo $Template;


?>
