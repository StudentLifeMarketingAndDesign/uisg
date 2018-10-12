<?php

class StaffTeamExtension extends SilverStripe\ORM\DataExtension {

	static $db = array(
    
	);

  static $has_one = array(
    'GroupImage' => 'Image',
  );

}