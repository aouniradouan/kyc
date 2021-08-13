<?php
/**
 * filesystems.php
 *
 * Files Systems and path
 *
 * @category   Job Application
 * @package    Joobi
 * @author     Redwan Aouni <aouniradouan@gmail.com>
 * @copyright  2021 - Joobi
 * @version    1.0.0
 * @since      File available since Release 1.0.0
 * NOTE THAT THIS FILE INCLUDE ALL THE MAIN PATH PLEASE DON'T CHANGE ANYTHING UNLESS YOU'RE KNOW WHAT YOU'RE DOING
 */


$FILES_SYSTEMS = [


    // Resources Path
        'public' => [
            'path'      => 'public'
        ],

    // Resources Path
        'resources' => [
            'path'      => 'resources'
        ],


    // View Path
        'view' => [
            'path'      => 'views'
        ],
        

    // Templates Path
        'templates' => [
            'Skyline'       => 'templates/Skyline'
        ],


    // Templates Types eg : Desktop, Panel, Car ect..
        'templates_types' => [
            'Desktop'   => 'desktop',
            'Mobile'    => 'mobile',
            'Tablet'    => 'tablet',
            'Tv'        => 'tv'
        ],


    // Storage / Upload and Caching path if we use cache
        'storage' => [
            'upload'    =>  [
                "web"   =>  "storage/upload/web",
                "user"  =>  [
                    "cv"    => "storage/upload/user/cv",
                    "certificate"    => "storage/upload/user/certificate",
                    "achievement"    => "storage/upload/user/achievement",
                ],
            ],
            'cache'     =>  'storage/cache',
            'temp'      =>  'storage/temp'
        ]


];


?>