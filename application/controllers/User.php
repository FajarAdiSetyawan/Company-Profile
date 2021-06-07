<?php

defined('BASEPATH') or exit('No direct script access allowed');

class User extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();
    is_logged_in();
    // validasi form
    $this->load->library('form_validation');
    //load model
    $this->load->model('M_user');
    $this->load->model('M_setting');
    //load helper
    $this->load->helper('user');
  }

  public function profile()
  {
    // MENGAMBIL DATA DARI SESSION
    $user = $this->db->get_where('tb_user', ['email' =>
    $this->session->userdata('email')])->row_array();
    // LOAD FUNCTION DARI MODEL
    $setting = $this->M_setting->daftar();
    $title = $setting->nama_perusahaan;
    $image = $setting->image;
    $data = array(
      'title'     => $title,
      'subtitle'  => 'Profile',
      'isi'       => 'back_end/user/v_profile',
      'user'      => $user,
      'image'     => $image,
    );

    $this->load->view('back_end/layout/v_wrapper', $data, false);
  }

  public function edit()
  {
    // FORM VALIDATON
    $this->form_validation->set_rules('nama', 'Nama', 'required|trim');


    if ($this->form_validation->run() ==  false) {
    } else {
      $this->M_user->editProfile();
    }
  }

  public function changepassword()
  {
    // MENGAMBIL DATA DARI SESSION
    $user = $this->db->get_where('tb_user', ['email' =>
    $this->session->userdata('email')])->row_array();

    $setting = $this->M_setting->daftar();
    $title = $setting->nama_perusahaan;
    $image = $setting->image;

    $data = array(
      'title'     => $title,
      'subtitle'  => 'Ubah Password',
      'isi'       => 'back_end/user/v_change_password',
      'user'      => $user,
      'image'     => $image,
    );

    // RULES 
    changepassword_validation();

    if ($this->form_validation->run() ==  false) {

      $this->load->view('back_end/layout/v_wrapper', $data, false);
    } else {
      $this->M_user->changePassword();
    }
  }


  public function blocked()
  {
    $setting = $this->M_setting->daftar();
    $title = $setting->nama_perusahaan;
    $image = $setting->image;

    $data = array(
      'title'     => $title,
      'subtitle'  => 'Akses Di Tolak',
      'isi'       => 'v_login',
      'image'     => $image,
    );

    $this->load->view('back_end/layout/v_wrapper', $data, false);
  }

  public function daftar_user()
  {
    // CEK YANG ROLE YANG MASUK
    if ($this->session->userdata('role_id') == '1') {
      // JIKA YANG MASUK ADMIN

      $user = $this->db->get_where('tb_user', ['email' => $this->session->userdata('email')])->row_array();

      $users = $this->M_user->daftarUser();

      $setting = $this->M_setting->daftar();
      $title = $setting->nama_perusahaan;
      $image = $setting->image;

      $data = array(
        'title'     => $title,
        'subtitle'  => 'Daftar User',
        'isi'       => 'back_end/user/v_daftar_user',
        'user'      => $user,
        'image'     => $image,
        'users'     => $users
      );

      $this->load->view('back_end/layout/v_wrapper', $data, false);
    } else {
      // JIKA YANG MASUK USER
      redirect('blocked');
    }
  }

  public function addUser()
  {
    // CEK YANG ROLE YANG MASUK
    if ($this->session->userdata('role_id') == '1') {
      // JIKA YANG MASUK ADMIN

      // RULES 
      addUser_validation();
      if ($this->form_validation->run() ==  false) {
        $user = $this->db->get_where('tb_user', ['email' => $this->session->userdata('email')])->row_array();

        $users = $this->M_user->daftarUser();

        $setting = $this->M_setting->daftar();
        $title = $setting->nama_perusahaan;
        $image = $setting->image;

        $data = array(
          'title'     => $title,
          'subtitle'  => 'Daftar User',
          'isi'       => 'back_end/user/v_daftar_user',
          'user'      => $user,
          'image'     => $image,
          'users'     => $users
        );

        $this->load->view('back_end/layout/v_wrapper', $data, false);
      } else {
        $this->M_user->addUser();
      }
    } else {
      // JIKA YANG MASUK USER
      redirect('blocked');
    }
  }
  public function editUser($id_user)
  {
    $user = array(
      'id_user' => $id_user,
      'role_id' => $this->input->post('role_id'),
      'is_active' => $this->input->post('is_active')
    );
    // CEK YANG ROLE YANG MASUK
    if ($this->session->userdata('role_id') == '1') {
      // JIKA YANG MASUK ADMIN
      $this->M_user->editUser($user);
    } else {
      // JIKA YANG MASUK USER
      redirect('blocked');
    }
  }

  public function hapus($id_user)
  {
    $user = array(
      'id_user' => $id_user,
    );

    if ($this->session->userdata('role_id') == '1') {
      // JIKA YANG MASUK ADMIN
      $this->M_user->hapus($user);
    } else {
      // JIKA YANG MASUK USER
      redirect('blocked');
    }
  }
}
