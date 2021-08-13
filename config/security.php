<?php
/**
 * security.php
 *
 * any security methid will be here 
 *
 * @category   Job Application
 * @package    Joobi
 * @author     Redwan Aouni <aouniradouan@gmail.com>
 * @copyright  2021 - Joobi
 * @version    1.0.0
 * @since      File available since Release 1.0.0
 */

use NoCSRF\NoCSRF;
// Creating a new NoCSRF instance, which manages anti-CSRF tokens.
$nocsrf         =   new NoCSRF();
// Get an anti-CSRF token
$CSRF_Token     =   $nocsrf->getToken();

?>