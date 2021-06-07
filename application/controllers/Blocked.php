<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Blocked extends CI_Controller
{

  public function __construct()
  {
    parent::__construct();
    is_logged_in();
    //load model
    $this->load->model('M_dashboard');
    $this->load->model('M_Setting');
  }

  public function index()
  {
    // LOAD FUNCTION DARI MODEL
    $setting = $this->M_Setting->daftar();
    $title = $setting->nama_perusahaan;
    $image = $setting->image;

    // MENGAMBIL DATA SESSION
    $user = $this->db->get_where('tb_user', ['email' => $this->session->userdata('email')])->row_array();

    $data = array(
      'title'     => $title,
      'subtitle'  => '403 Akses Diblock',
      'isi'       => 'back_end/v_blocked',
      'user'      =>  $user,
      'image'     => $image,
    );

    $this->load->view('back_end/v_blocked', $data, false);
  }
}
