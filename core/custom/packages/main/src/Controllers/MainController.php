<?php

namespace EvolutionCMS\Main\Controllers;

class MainController extends BaseController
{
    public function render()
    {
        $result = $this->getPostsWithTags([
            'display' => 5,
        ]);
        $this->data['posts'] = $result;
        return $this->data['posts'];
    }
}
