<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{

  public function __construct()
  {
    parent::__construct();
    // validasi form
    $this->load->library('form_validation');
    $this->load->library('email');
    //load model
    $this->load->model('M_Auth');
    $this->load->model('M_Setting');
    //load helper
    $this->load->helper('auth');
  }

  public function index()
  {
    $setting = $this->M_Setting->daftar();
    $title = $setting->nama_perusahaan;
    $image = $setting->image;

    // PENGECEKAN SESSION JIKA ADA SESSION AKAN DIARAHKAN KE DASHBOARD
    if ($this->session->userdata('email')) {
      redirect('dashboard');
    }
    //helper function dari auth_helper
    login_validation();
    if ($this->form_validation->run() == false) {

      $data = array(
        'title'    => $title,
        'subtitle' => 'Login',
        'isi'      => 'v_login',
        'image'    => $image
      );

      $this->load->view('auth/v_login', $data, false);
    } else {
      // validasi success
      $this->M_Auth->login();
    }
  }



  public function register()
  {
    $setting = $this->M_Setting->daftar();
    $title = $setting->nama_perusahaan;
    $image = $setting->image;

    // PENGECEKAN SESSION JIKA ADA SESSION AKAN DIARAHKAN KE DASHBOARD
    if ($this->session->userdata('email')) {
      redirect('dashboard');
    }
    //helper function dari auth_helper
    register_validation();
    if ($this->form_validation->run() == false) {
      $data = array(
        'title'     => $title,
        'subtitle'  => 'Register',
        'isi'       => 'v_register',
        'image'     => $image
      );

      $this->load->view('auth/v_register', $data, false);
    } else {
      $this->M_Auth->register();
    }
  }

  public function verify()
  {
    $this->M_Auth->verify();
  }



  public function forgotpassword()
  {
    $setting = $this->M_Setting->daftar();
    $title = $setting->nama_perusahaan;
    $image = $setting->image;

    // PENGECEKAN SESSION JIKA ADA SESSION AKAN DIARAHKAN KE DASHBOARD
    if ($this->session->userdata('email')) {
      redirect('dashboard');
    }
    forgot_validation();
    if ($this->form_validation->run() == false) {
      $data = array(
        'title'     => $title,
        'subtitle'  => 'Lupa Password',
        'isi'       => 'v_forgotpass',
        'image'     => $image
      );

      $this->load->view('auth/v_forgotpass', $data, false);
    } else {
      $this->M_Auth->forgotPassword();
    }
  }

  public function resetPassword()
  {
    $email = $this->input->get('email');
    $token = $this->input->get('token');

    $user = $this->db->get_where('tb_user', ['email' => $email])->row_array();

    if ($user) {
      $user_token = $this->db->get_where('tb_user_token', ['token' => $token])->row_array();

      if ($user_token) {
        $this->session->set_userdata('reset_email', $email);
        $this->changePassword();
      } else {
        $this->session->set_flashdata('error', 'Reset Password Gagal, Token Salah');
        redirect('auth');
      }
    } else {
      $this->session->set_flashdata('error', 'Reset Password Gagal, Email Belum Terdaftar');
      redirect('auth');
    }
  }

  public function changePassword()
  {
    $setting = $this->M_Setting->daftar();
    $title = $setting->nama_perusahaan;
    $image = $setting->image;

    // PENGECEKAN SESSION JIKA ADA SESSION AKAN DIARAHKAN KE DASHBOARD
    if ($this->session->userdata('email')) {
      redirect('dashboard');
    }

    // helper
    changepass_validation();
    if ($this->form_validation->run() == false) {
      $data = array(
        'title'    => $title,
        'subtitle' => 'Ubah Password',
        'isi'      => 'v_changepass',
        'image'    => $image,
      );

      $this->load->view('auth/v_changepass', $data, false);
    } else {
      $this->M_Auth->changePassword();
    }
  }

  public function logout()
  {
    $this->session->unset_userdata('email');
    $this->session->unset_userdata('role_id');
    $this->session->set_flashdata('success', 'Anda Berhasil Logout');
    redirect('auth');
  }
}
