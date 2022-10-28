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
        $result = $this->getPostsWithTags([
			'idType' => 'documents',
			'documents' => $documents,
			'paginate' => 'pages',     
        ]);
		$this->data['posts'] = $result;
		return $this->data['posts'];
	}
}
