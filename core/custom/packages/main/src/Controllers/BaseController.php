<?php 
namespace EvolutionCMS\Main\Controllers;
class BaseController{
	public $data = [];
	public $evo;
	public function __construct(){
		$this->evo = EvolutionCMS();
		$this->render();
		$this->sendToView();
	}
    public function render()
    {
    }
    public function sendToView()
    {
        $this->evo->addDataToView($this->data);
    }
}