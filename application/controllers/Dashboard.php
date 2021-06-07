<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends CI_Controller
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
      'subtitle'  => 'Dashboard',
      'isi'       => 'back_end/dashboard/v_home',
      'user'      =>  $user,
      'image'     => $image,
    );

    $this->load->view('back_end/layout/v_wrapper', $data, false);
  }
}
