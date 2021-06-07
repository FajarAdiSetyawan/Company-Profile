<?php

defined('BASEPATH') or exit('No direct script access allowed');

class portfolio extends CI_Controller
{

  public function __construct()
  {
    parent::__construct();
    is_logged_in();
    // validasi form
    $this->load->library('form_validation');
    //load model
    $this->load->model('M_layanan');
    $this->load->model('M_Setting');
    $this->load->model('M_portfolio');
    $this->load->model('M_client');
    //load helper
    $this->load->helper('portfolio');
  }

  public function index()
  {
    $setting = $this->M_Setting->daftar();
    $title = $setting->nama_perusahaan;
    $image = $setting->image;
    $user = $this->db->get_where('tb_user', ['email' => $this->session->userdata('email')])->row_array();
    $portfolio  = $this->M_portfolio->daftar();

    $data = array(
      'title'     => $title,
      'subtitle'  => 'Daftar portfolio',
      'isi'       => 'back_end/portfolio/v_daftar',
      'user'      =>  $user,
      'image'     =>  $image,
      'portfolio' => $portfolio
    );

    $this->load->view('back_end/layout/v_wrapper', $data, false);
  }

  public function tambah()
  {
    tambah_validation();
    if ($this->form_validation->run() ==  false) {
      $setting = $this->M_Setting->daftar();
      $title = $setting->nama_perusahaan;
      $image = $setting->image;
      $user = $this->db->get_where('tb_user', ['email' => $this->session->userdata('email')])->row_array();
      $layanan  = $this->M_layanan->daftar();
      $client = $this->M_client->daftar();

      $data = array(
        'title'     => $title,
        'subtitle'  => 'Tambah Portfolio',
        'isi'       => 'back_end/portfolio/v_tambah',
        'user'      =>  $user,
        'image'     =>  $image,
        'layanan'   =>  $layanan,
        'client'    =>  $client,
      );

      $this->load->view('back_end/layout/v_wrapper', $data, false);
    } else {
      $this->M_portfolio->tambah();
    }
  }

  public function edit($id_portfolio)
  {
    $setting = $this->M_Setting->daftar();
    $title = $setting->nama_perusahaan;
    $image = $setting->image;
    $layanan = $this->M_layanan->daftar();
    $portfolio   = $this->M_portfolio->detail($id_portfolio);
    $user = $this->db->get_where('tb_user', ['email' => $this->session->userdata('email')])->row_array();
    $client = $this->M_client->daftar();

    // Validasi
    tambah_validation();

    if ($this->form_validation->run()) {

      if (!empty($_FILES['image']['name'])) {

        $config['upload_path']   = './assets/img/portfolio/';
        $config['allowed_types'] = 'gif|jpg|png|svg|jpeg';
        $config['max_size']      = '5000'; // KB  
        $this->load->library('upload', $config);
        $this->upload->initialize($config);
        if (!$this->upload->do_upload('image')) {
          // End validasi
          $data = array(
            'title'     => $title,
            'subtitle'  => 'Edit portfolio',
            'layanan'  => $layanan,
            'portfolio' => $portfolio,
            'error'     => $this->upload->display_errors(),
            'isi'       => 'back_end/portfolio/v_edit',
            'user'      => $user,
            'client'    =>  $client,
            'image'     =>  $image,
          );
          $this->load->view('back_end/layout/v_wrapper', $data, FALSE);
          // Masuk database
        } else {
          $upload_data = array('uploads' => $this->upload->data());
          //Hapus gambar
          if ($portfolio->gambar_portfolio != "") {
            unlink('./assets/img/portfolio/' . $portfolio->gambar_portfolio);
          }
          // End hapus
          $judul = $this->input->post('judul', true);
          $slug = url_title($judul, 'dash', true);

          $data = array(
            'id_portfolio'      => $id_portfolio,
            'nama_layanan'      => $this->input->post('layanan'),
            'id_client'         => $this->input->post('client'),
            'judul_portfolio'   => $judul,
            'slug_portfolio'    => $slug,
            'isi_portfolio'     => $this->input->post('isi'),
            'website_portfolio' => $this->input->post('website', true),
            'gambar_portfolio'  => $upload_data['uploads']['file_name'],
            'status_portfolio'  => $this->input->post('status'),
            'testimoni'         => $this->input->post('testimoni'),
            'last_modified'     => date('Y-m-d'),
            'date_project'      => $this->input->post('date'),
          );

          $this->M_portfolio->edit($data);
          $this->session->set_flashdata('success', 'Berhasil mengedit data');
          redirect('portfolio');
        }
      } else {
        $judul = $this->input->post('judul', true);
        $slug = url_title($judul, 'dash', true);

        $data = array(
          'id_portfolio'      => $id_portfolio,
          'nama_layanan'        => $this->input->post('layanan'),
          'id_client'         => $this->input->post('client'),
          'judul_portfolio'   => $judul,
          'slug_portfolio'    => $slug,
          'isi_portfolio'     => $this->input->post('isi'),
          'website_portfolio' => $this->input->post('website'),
          'status_portfolio'  => $this->input->post('status'),
          'testimoni'         => $this->input->post('testimoni'),
          'last_modified'     => date('Y-m-d'),
          'date_project'      => $this->input->post('date'),
        );
        // var_dump($data);
        // die;
        $this->M_portfolio->edit($data);
        $this->session->set_flashdata('success', 'Berhasil mengedit data');
        redirect('portfolio');
      }
    }
    // End masuk database

    $data = array(
      'title'     => $title,
      'subtitle'  => 'Edit portfolio',
      'layanan'   => $layanan,
      'portfolio' => $portfolio,
      'isi'       => 'back_end/portfolio/v_edit',
      'user'      => $user,
      'client'    =>  $client,
      'image'     =>  $image,
    );
    $this->load->view('back_end/layout/v_wrapper', $data, FALSE);
  }

  public function hapus($id_portfolio)
  {
    $portfolio = $this->M_portfolio->detail($id_portfolio);
    // MENGHAPUS FOTO
    if ($portfolio->gambar_portfolio != "") {
      unlink('./assets/img/portfolio/' . $portfolio->gambar_portfolio);
    }
    $data = array(
      'id_portfolio' => $id_portfolio,
    );
    $this->M_portfolio->hapus($data);
  }
}
