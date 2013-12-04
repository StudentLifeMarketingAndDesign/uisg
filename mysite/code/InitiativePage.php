<?php
class InitiativePage extends Page {

	private static $db = array(
		"HideTextTitle" => "Boolean",
		"InitiativeTitle" => "Text"
	);

	private static $has_one = array(
	
		"MainImage" => "Image"
		
	
	);
	
	//public static $allowed_children = array ("BranchPersonPage");
	
	function getCMSFields() {
		$fields = parent::getCMSFields();
		

		//$fields->removeFieldFromTab('Root.Content.Main', 'Content');
		$fields->addFieldToTab('Root.Main', new UploadField('MainImage','Main Image'));
		$fields->addFieldToTab('Root.Main', new CheckboxField('HideTextTitle','Hide Text Title'));
		$fields->addFieldToTab('Root.Main', new TextField('InitiativeTitle', 'Initiative Title'));
		//$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('Content','Content'));

		return $fields;
	}

	

}
class InitiativePage_Controller extends Page_Controller {

	public static $allowed_actions = array (
	);
	
	
	public function init() {
		parent::init();
	}
}