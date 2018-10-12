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


?>