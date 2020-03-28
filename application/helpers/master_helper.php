<?php
defined('BASEPATH') OR exit('No direct script access allowed');

function post($params)
{
    if(!empty($_POST[$params])){
        return $_POST[$params];
    }else{
        error('Silahkan mengisi kolom '.$params.' terlebih dahulu');
    }
}

function get($params)
{
    if(!empty($_GET[$params])){
        return $_GET[$params];
    }else{
        error('Silahkan mengisi kolom '.$params.' terlebih dahulu');
    }
}

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