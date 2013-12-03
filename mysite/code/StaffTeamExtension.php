<?php



class StaffTeamExtension extends DataExtension {

	static $db = array(
	
	);

    static $has_one = array(
        'GroupImage' => 'Image',
  
    );
    
    public function getCMSFields() {
      $this->extend('updateCMSFields', $fields);
      
      return $fields;
    }


    public function updateCMSFields(FieldList $fields) {
      $fields->addFieldToTab("Root.Main", new UploadField('GroupImage', 'Staff Team Image'), 'Content');


  }



}