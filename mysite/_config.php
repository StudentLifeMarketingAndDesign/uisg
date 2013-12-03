<?php

global $project;
$project = 'mysite';

global $databaseConfig;
$databaseConfig = array(
	"type" => 'MySQLDatabase',
	"server" => 'localhost',
	"username" => 'root',
	"password" => 'omega',
	"database" => 'uisg',
	"path" => '',
);

MySQLDatabase::set_connection_charset('utf8');

// Set the current theme. More themes can be downloaded from
// http://www.silverstripe.org/themes/
SSViewer::set_theme('simple');

// Set the site locale
i18n::set_locale('en_US');
FulltextSearchable::enable();
// Enable nested URLs for this site (e.g. page/sub-page/)
if (class_exists('SiteTree')) SiteTree::enable_nested_urls();
DataObject::add_extension('StaffTeam', 'StaffTeamExtension');

<<<<<<< HEAD
<<<<<<< HEAD
Security::setDefaultAdmin('admin','password');

Director::set_environment_type("dev");
=======
Director::set_environment_type("live");
>>>>>>> 3c7783584cc2e6de8f8747a7db50f356e95420ff
=======
Director::set_environment_type("live");
>>>>>>> 3c7783584cc2e6de8f8747a7db50f356e95420ff
