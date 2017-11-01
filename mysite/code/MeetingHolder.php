<?php
class MeetingHolder extends Page {

	private static $db = array();
	private static $has_one = array();
	private static $allowed_children = array('MeetingPage');
	
	public function Meetings(){
		$children = $this->Children();
		
		if($children){
			return $children->sort("Date",  "DESC");
		}
		
	}

	public function Children(){
		$children = MeetingPage::get()->filter(array('ParentID' => $this->ID))->sort("Date", "DESC");

		return $children;
	}
	
}
	
class MeetingHolder_Controller extends Page_Controller {

	public static $allowed_actions = array ( "PaginatedPages" );
	
	public function PaginatedPages() { 
		$paginatedList = new PaginatedList(
			MeetingPage::get(), 
			$this->request 
		); 
		return $paginatedList; 
	}
	
	public function init() {
		parent::init();
	}
}

?>