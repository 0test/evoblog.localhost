<?php

namespace EvolutionCMS\Main\Controllers;

class MainController extends BaseController
{
  public function render()
  {
    $result = $this->evo->runSnippet('DocLister', [
      'parents' => 2,
      'depth' => 1,
      'tvPrefix' => '',
      'tvList' => 'post_mainphoto',
      'display' => 10,
      'returnDLObject' => 1,
    ]);
    $this->data['posts'] = $result->getDocs();
    return $this->data['posts'];
  }
}
