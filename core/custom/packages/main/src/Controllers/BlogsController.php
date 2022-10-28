<?php

namespace EvolutionCMS\Main\Controllers;

class BlogsController extends BaseController
{
    public function render()
    {
        $result = $this->getPostsWithTags([
            'paginate' => 'pages',
            'display' => 10,      
        ]);
        $this->data['posts'] = $result;
        return $this->data['posts'];
    }
}
