<?php

defined('BASEPATH') or exit('No direct script access allowed');

class User_login
{
  protected $ci;
  
  public function __construct()
  {
    $this->ci =& get_instance();
    $this->ci->load->model('m_login');
  
  }

  public function login($username, $password)
  {
    $cek = $this->ci->m_login->login($username, $password);
    if($cek){
      username = $cek->username;
      password = $cek->password;
    }
  }
}
