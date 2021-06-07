<?php

defined('BASEPATH') or exit('No direct script access allowed');

class My404 extends CI_Controller
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
      'subtitle'  => '404 Halaman Tidak Ditemukan',
      'isi'       => 'back_end/v_error_404',
      'user'      =>  $user,
      'image'     => $image,
    );

    $this->load->view('back_end/v_error_404', $data, false);
  }
}
