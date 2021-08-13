<?php

/**
 * database.php
 *
 * Database Access
 *
 * @category   Job Application
 * @package    Joobi
 * @author     Redwan Aouni <aouniradouan@gmail.com>
 * @copyright  2021 - Joobi
 * @version    1.0.0
 * @since      File available since Release 1.0.0
 */



$DATABASE     =    [

    'default' => 'mysql',

    'connections' => [

        'mysql' => [
            'driver' => 'mysql',
            'url' => null,
            'dsn' => 'mysql:host=localhost;dbname=kyc',
            'host' => 'localhost',
            'port' => '3306',
            'database' => 'wallet',
            'username' => 'radouan',
            'password' => 'root',
            'prefix'   => ''
        ]

    ]


];

$DefaultDriver      =   $DATABASE['default'];

$database           =   new Nette\Database\Connection($DATABASE['connections'][$DefaultDriver]['dsn'], $DATABASE['connections'][$DefaultDriver]['username'], $DATABASE['connections'][$DefaultDriver]['password']);
