<?php

namespace EvolutionCMS\Main\Controllers;

class TagController extends BaseController
{
	public function render()
	{
		
		$id = $this->evo->documentObject['id'];
		$res = $this->evo->db->select("contentid", $this->evo->getFullTableName('site_tmplvar_contentvalues'), "FIND_IN_SET('" . $id . "',value) AND tmplvarid=4");
		$arr = $this->evo->db->makeArray($res);
		foreach ($arr as $k => $v) {
			$documents[] = ($v['contentid']);
		}
		$documents = implode(",", $documents);



		$result = $this->evo->runSnippet('DocLister', [
			'idType' => 'documents',
			'documents' => $documents,
			'tvPrefix' => '',
			'tvList' => 'post_mainphoto',
			'paginate' => 'pages',
			'display' => 10,
			'returnDLObject' => 1,
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
