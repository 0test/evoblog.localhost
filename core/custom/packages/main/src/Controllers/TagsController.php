<?php

namespace EvolutionCMS\Main\Controllers;

class TagsController extends BaseController
{
	public function render()
	{
		$result = $this->evo->runSnippet('DocLister', [
			'parents' => 3,
			'depth' => 1,
			'returnDLObject' => 1,
			'paginate' => 'pages',
			'display' => 10,
			'TplPrevP' => '@CODE: <li><a href="[+link+]" class="button previous">&laquo;</a></li>',
			'TplNextP' => '@CODE: <li><a href="[+link+]" class="button  next">&raquo;</a></li>',
			'TplPage' => '@CODE: <li><a class="button" href="[+link+]">[+num+]</a></li>',
			'TplCurrentPage' => '@CODE: <li class=" is-active">[+num+]</li>',
			'TplWrapPaginate' => '@CODE: <ul class="actions special pagination">[+wrap+]</ul>',
		]);
		$this->data['tags'] = $result->getDocs();
		return $this->data['tags'];
	}
}
