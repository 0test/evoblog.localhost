<?php

namespace EvolutionCMS\Main\Controllers;

class HtmlsitemapController extends BaseController
{
	public function render()
	{
		$sitemap = $this->evo->runSnippet('DLMenu',[
			'parents' => 0,
			'maxDepth' => 3,
		]);
		$this->data['sitemap'] = $sitemap;
	}
}
