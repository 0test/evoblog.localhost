<?php

namespace EvolutionCMS\Main\Controllers;

class BaseController
{
	public $data = [];
	public $evo;
	public function __construct()
	{
		$this->evo = EvolutionCMS();
		$this->render();
		$this->globalElements();
		$this->sendToView();
	}
	public function globalElements(){
		$menu = $this->evo->runSnippet('DLMenu',[
			'parents' => 0,
			'maxDepth' => 1,
			'returnDLObject' => 1
		]);
		$this->data['menu'] = $menu->getDocs();

		$result = $this->evo->runSnippet('DocLister',[
			'parents' => 2,
			'depth' => 1,
			'tvPrefix' => '',
			'tvList' => 'post_mainphoto',
			'total' => 5,
			'orderBy' => 'RAND()',
			'returnDLObject' => 1,
		]);
		$this->data['posts_sidebar'] = $result->getDocs();
	}
	public function render()
	{
	}
	public function getPostsWithTags($dl_params)
	{
		$fixed_params = [
            'parents' => 2,
            'depth' => 1,
            'tvPrefix' => '',
            'tvList' => 'post_mainphoto,post_tags',
            'returnDLObject' => 1,
			'display' => 10,
			'TplPrevP' => '@CODE: <li><a href="[+link+]" class="button previous">&laquo;</a></li>',
			'TplNextP' => '@CODE: <li><a href="[+link+]" class="button  next">&raquo;</a></li>',
			'TplPage' => '@CODE: <li><a class="button" href="[+link+]">[+num+]</a></li>',
			'TplCurrentPage' => '@CODE: <li class=" is-active">[+num+]</li>',
			'TplWrapPaginate' => '@CODE: <ul class="actions special pagination">[+wrap+]</ul>',   
        ];
		$params = array_merge($fixed_params,$dl_params);
		$result = $this->evo->runSnippet('DocLister', $params)->getDocs();

        $tags_ids = null;
        foreach ($result as $document) {
            if ($document['post_tags']) {
                foreach (explode(',', $document['post_tags']) as $tag_id) {
                    $tags_ids[] = $tag_id;
                }
            }
        }
        $tags_ids = array_unique($tags_ids);

        $tags =  $this->evo->runSnippet('DocLister', [
            'idType' => 'documents',
            'documents' => implode(",", $tags_ids),
            'returnDLObject' => 1,
        ]);

        $tags = $tags->getDocs();

        foreach ($result as $document) {
            if ($document['post_tags']) {
                foreach (explode(',', $document['post_tags']) as $tag_id) {
                    $result[$document['id']]['post_tags_custom'][] = $tags[$tag_id];
                }
            } else {
                $result[$document['id']]['post_tags_custom'] = [];
            }
        }	
		return $result;
	}
	public function sendToView()
	{
		$this->evo->addDataToView($this->data);
	}
}
