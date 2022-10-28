<?php

namespace EvolutionCMS\Main\Controllers;

class PostController extends BaseController
{
	public function render()
	{
		$this->data['tags'] = null;
		$tags_array= $this->evo->documentObject['post_tags'];
		if($tags_array && $tags_array[1]){
			$result = $this->evo->runSnippet('DocLister', [
				'idType' => 'documents',
				'documents' => $tags_array[1],
				'tvPrefix' => '',
				'returnDLObject' => 1,
			]);
			$this->data['tags'] = $result->getDocs();
		}
		return $this->data['tags'];
	}
}
