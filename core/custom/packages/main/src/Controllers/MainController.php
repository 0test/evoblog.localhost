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
      'tvList' => 'post_mainphoto,post_tags',
      'display' => 10,
      'returnDLObject' => 1,
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
