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
		$this->data['menu'] = json_decode($this->evo->runSnippet('DLMenu',[
			'parents' => 0,
			'maxDepth' => 1,
			'api'=> 1,
		]));
	}
	public function render()
	{
	}
	public function sendToView()
	{
		$this->evo->addDataToView($this->data);
	}
}
