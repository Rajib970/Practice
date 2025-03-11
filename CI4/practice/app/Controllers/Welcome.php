<?php

namespace App\Controllers;

class Welcome extends BaseController
{
    public function index(): string
    {
         return view('welcome_message');
        // return 1;
    }

    public function test(){
        echo 1;
    } 
}
