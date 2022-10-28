<?php

namespace EvolutionCMS\Main\Controllers;

class BlogsController extends BaseController
{
	public function render()
	{
		$result = $this->evo->runSnippet('DocLister', [
			'parents' => 2,
			'depth' => 1,
			'tvPrefix' => '',
			'tvList' => 'post_mainphoto,post_tags',
			'returnDLObject' => 1,
			'paginate' => 'pages',
			'display' => 10,
			'TplPrevP' => '@CODE: <li><a href="[+link+]" class="button previous">&laquo;</a></li>',
			'TplNextP' => '@CODE: <li><a href="[+link+]" class="button  next">&raquo;</a></li>',
			'TplPage' => '@CODE: <li><a class="button" href="[+link+]">[+num+]</a></li>',
			'TplCurrentPage' => '@CODE: <li class=" is-active">[+num+]</li>',
			'TplWrapPaginate' => '@CODE: <ul class="actions special pagination">[+wrap+]</ul>',
		]);

		$result = $result->getDocs();
		$tags_ids = null;
	
		foreach($result as $document){
		  if( $document['post_tags'] ){
			foreach(explode(',',$document['post_tags']) as $tag_id){
			  $tags_ids[] = $tag_id;
			}
		  }
		}
		$tags_ids = array_unique( $tags_ids);
		
		$tags =  $this->evo->runSnippet('DocLister', [
		  'idType' => 'documents',
		  'documents' => implode(",",$tags_ids),
		  'returnDLObject' => 1,
		]);
	
		$tags = $tags->getDocs();
		foreach($result as $document){
		  if( $document['post_tags'] ){
			foreach(explode(',',$document['post_tags']) as $tag_id){
			  $result[$document['id']]['post_tags_custom'][] = $tags[$tag_id];
			}
		  }
		  else{
			$result[$document['id']]['post_tags_custom'] = [];
		  }
		}
		$this->data['posts'] = $result;
		return $this->data['posts'];
	}
}
