<?php
namespace EvolutionCMS\Main\Controllers;

class SearchController extends BaseController{

	public function render()
	{
		$result = $this->evo->runSnippet('evoSearch',[
			'api' => 1,
			'tvPrefix' => '',
			'tvList' => 'post_mainphoto',
			'show_stat' => 0,
		]);
		$this->data['search_result'] = json_decode($result);
	}
}