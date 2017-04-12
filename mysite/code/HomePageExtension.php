<?php

class HomePageExtension extends DataExtension {

	private static $db = array (


	);
	private static $has_one = array (
		'FeaturedInitiative' => 'SiteTree'
	);
	public function updateCMSFields(FieldList $f) {




		$dropdown = new DropdownField('FeaturedInitiativeID', 'Featured Initiative', InitiativePage::get()->sort('Title ASC')->map());
		$dropdown->setEmptyString('(No Featured Initiative)');



		$f->addFieldToTab('Root.Main', $dropdown, 'BackgroundFeatures');
		$f->addFieldToTab('Root.Main', new LabelField('When no featured initiative is selected, the two latest news posts are shown instead. '), 'BackgroundFeatures');


		$f->removeByName("HomePageFeature");
		$f->removeByName("HomePageHeroFeature");
	}

	public function AnnouncementBlog(){
		$newsHolder = Blog::get()->filter(array('ID' => 133))->First();
		return $newsHolder;
	}

	// public function LatestNewsPosts(){
	// 	$newsHolder = Blog::get()->filter(array('ID' => 133))->First();
	// 	return $newsHolder->getBlogPosts()->Limit(2);
	// }

}