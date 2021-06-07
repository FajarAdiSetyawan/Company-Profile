<?php

defined('BASEPATH') or exit('No direct script access allowed');

class client extends CI_Controller
{

  public function __construct()
  {
    parent::__construct();
    is_logged_in();
    // validasi form
    $this->load->library('form_validation');
    //load model
    $this->load->model('M_kategori');
    $this->load->model('M_Setting');
    $this->load->model('M_client');
    //load helper
    $this->load->helper('client');
  }

  public function index()
  {
    // LOAD FUNCTION DARI MODEL
    $setting = $this->M_Setting->daftar();
    $title = $setting->nama_perusahaan;
    $image = $setting->image;
    $client  = $this->M_client->daftar();

    // MENGAMBIL DATA SESSION
    $user = $this->db->get_where('tb_user', ['email' => $this->session->userdata('email')])->row_array();

    $data = array(
      'title'     => $title,
      'subtitle'  => 'Daftar client',
      'isi'       => 'back_end/client/v_daftar',
      'user'      =>  $user,
      'client'    => $client,
      'image'     => $image,
    );

    $this->load->view('back_end/layout/v_wrapper', $data, false);
  }

  public function tambahclient()
  {
    addclient_validation();
    if ($this->form_validation->run() ==  false) {
      // LOAD FUNCTION DARI MODEL
      $setting = $this->M_Setting->daftar();
      $title = $setting->nama_perusahaan;
      $image = $setting->image;
      $kategori  = $this->M_kategori->daftarKategoriclient();

      // MENGAMBIL DATA SESSION
      $user = $this->db->get_where('tb_user', ['email' => $this->session->userdata('email')])->row_array();

      $data = array(
        'title'     => $title,
        'subtitle'  => 'Tambah client',
        'isi'       => 'back_end/client/v_tambah',
        'user'      =>  $user,
        'kategori'  =>  $kategori,
        'image'     => $image,

      );

      $this->load->view('back_end/layout/v_wrapper', $data, false);
    } else {
      $this->M_client->tambah();
    }
  }

  public function edit($id_client)
  {
    // LOAD FUNCTION DARI MODEL
    $setting = $this->M_Setting->daftar();
    $title = $setting->nama_perusahaan;
    $image = $setting->image;
    $kategori   = $this->M_kategori->daftarKategoriclient();
    $client   = $this->M_client->detail($id_client);

    // MENGAMBIL DATA SESSION
    $user = $this->db->get_where('tb_user', ['email' => $this->session->userdata('email')])->row_array();


    // Validasi
    editclient_validation();

    if ($this->form_validation->run()) {

      if (!empty($_FILES['image']['name'])) {
        // JIKA GAMBAR DIGANTI

        $config['upload_path']   = './assets/img/client/';
        $config['allowed_types'] = 'gif|jpg|png|svg|jpeg';
        $config['max_size']      = '5000'; // KB  
        $this->load->library('upload', $config);
        $this->upload->initialize($config);
        if (!$this->upload->do_upload('image')) {
          // End validasi
          $data = array(
            'title'     => $title,
            'subtitle'  => 'Edit client',
            'kategori'  => $kategori,
            'client'    => $client,
            'error'     => $this->upload->display_errors(),
            'isi'       => 'back_end/client/v_edit',
            'user'      => $user,
            'image'     => $image,
          );
          $this->load->view('back_end/layout/v_wrapper', $data, FALSE);
          // Masuk database
        } else {
          $upload_data = array('uploads' => $this->upload->data());
          //Hapus gambar
          if ($client->gambar_client != "") {
            unlink('./assets/img/client/' . $client->gambar_client);
          }
          // End hapus

          $data = array(
            'id_client'     => $id_client,
            'jenis_client'  => $this->input->post('jenis'),
            'nama_client'   => $this->input->post('name'),
            'email_client'  => $this->input->post('email'),
            'alamat'        => $this->input->post('alamat'),
            'no_telepon'    => $this->input->post('no'),
            'website'       => $this->input->post('website'),
            'gambar_client' => $upload_data['uploads']['file_name'],
            'publish'       => $this->input->post('status'),
            'last_modified' => date('Y-m-d'),
          );

          $this->M_client->edit($data);
          $this->session->set_flashdata('success', 'Berhasil mengedit data');
          redirect('client');
        }
      } else {
        // JIKA GAMBAR TIDAK DIGANTI
        $data = array(
          'id_client'     => $id_client,
          'jenis_client'  => $this->input->post('jenis'),
          'nama_client'   => $this->input->post('name'),
          'email_client'  => $this->input->post('email'),
          'alamat'        => $this->input->post('alamat'),
          'no_telepon'    => $this->input->post('no'),
          'website'       => $this->input->post('website'),
          'publish'       => $this->input->post('status'),
          'last_modified' => date('Y-m-d'),
        );
        // var_dump($data);
        // die;
        $this->M_client->edit($data);
        $this->session->set_flashdata('success', 'Berhasil mengedit data');
        redirect('client');
      }
    }
    // End masuk database

    $data = array(
      'title'     => $title,
      'subtitle'  => 'Edit client',
      'kategori'  => $kategori,
      'client'    => $client,
      'isi'       => 'back_end/client/v_edit',
      'user'      => $user,
      'image'     =>  $image,
    );
    $this->load->view('back_end/layout/v_wrapper', $data, FALSE);
  }

  public function hapus($id_client)
  {
    $client = $this->M_client->detail($id_client);
    // MENGHAPUS FOTO
    if ($client->gambar_client != "") {
      unlink('./assets/img/client/' . $client->gambar_client);
    }
    $data = array(
      'id_client' => $id_client,
    );
    $this->M_client->hapus($data);
  }
}
