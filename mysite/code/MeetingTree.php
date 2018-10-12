<?php
class MeetingTree extends Page {

	private static $db = array();
	private static $has_one = array();
	private static $allowed_children = array('MeetingPage','MeetingHolder');
	
	public function Meetings(){
		$children = $this->Children();
		
		if($children){
			return $children->sort("Date",  "DESC");
		}
		
	}
	
}


?>