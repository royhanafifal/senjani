<?php
defined('BASEPATH') OR exit('No direct script access allowed');

    //Model helper
    function true($data)
    {
        return (object) array(
            'data'=>$data,
            'success'=>true
        );
    }

    function false()
    {
        return (object) array(
            "success" => false
        );
    }
