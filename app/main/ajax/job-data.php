<?php
require_once dirname(__DIR__, 3) . '/' . 'server.php';

if (isset($_POST['csrf_token']))
{

    if ($nocsrf->verify($_POST['csrf_token']))
    {
        // Valid Token
        if (!empty($_POST['job_id']))
        {
            $JobID = $_POST['job_id'];
            $Jobinfo = $database->fetch("SELECT * FROM jobs WHERE id = ?", $JobID);

            $JobDescription = $Jobinfo['short_description'];
            $Jobsalary = $Jobinfo['salary'];
            $Job_type = $Jobinfo['work_type'];
            $Currency = DEFAULT_CURRENCY;

            echo "
		            <div class='form-group'>
		              <div class='conditions' style='color:#69a7f1;'>
		                  $JobDescription
		              </div>
		            </div>

		            <div class='form-group'>
		              <div class='conditions'>
		                <ul>
		                  <li class='complete'>Work Type : <b> $Job_type </b></li>
		                  <li class='complete'>Salary : <b> $Currency$Jobsalary </b></li>
		                </ul>
		              </div>
		            </div>";

        }
        else
        {

            echo "No Selected Job";

        }

    }
    else
    {
        // Anti-CSRF token is NOT VALID
        echo "System detect a CSRF attack";
    }

}

?>
