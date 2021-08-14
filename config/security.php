<?php
if( session_status() != PHP_SESSION_ACTIVE ){
   session_start();
}
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


/**
 * Create the csrf object.
 *
 * @param string  $tokenNamePrefix  Prefix for CSRF token name.
 * @param string  $tokenValuePrefix Prefix for CSRF token value.
 * @param int     $strength         Strength.
 *
 * @throws CsrfException
 */
$csrf = new Atomastic\Csrf\Csrf('Joobi_CSRF','JoobiCSRF',32);

$CSRF_InputNAME         =   $csrf->getTokenName();
$CSRF_InputVALUE        =   $csrf->getTokenValue();

?>