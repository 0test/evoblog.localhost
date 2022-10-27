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
			'tvList' => 'post_mainphoto',
			'returnDLObject' => 1,
			'paginate' => 'pages',
			'display' => 1,
			'TplPrevP' => '@CODE: <li><a href="[+link+]" class="button previous">&laquo;</a></li>',
			'TplNextP' => '@CODE: <li><a href="[+link+]" class="button  next">&raquo;</a></li>',
			'TplPage' => '@CODE: <li><a class="button" href="[+link+]">[+num+]</a></li>',
			'TplCurrentPage' => '@CODE: <li class=" is-active">[+num+]</li>',
			'TplWrapPaginate' => '@CODE: <ul class="actions special pagination">[+wrap+]</ul>',
		]);
		$this->data['posts'] = $result->getDocs();
		return $this->data['posts'];
	}
}
