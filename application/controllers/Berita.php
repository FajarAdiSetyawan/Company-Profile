<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Berita extends CI_Controller
{

  public function __construct()
  {
    parent::__construct();
    is_logged_in();
    // validasi form
    $this->load->library('form_validation');
    //load model
    $this->load->model('M_kategori');
    $this->load->model('M_berita');
    $this->load->model('M_Setting');
    //load helper
    $this->load->helper('berita');
  }

  public function index()
  {
    // load function dari model
    $setting = $this->M_Setting->daftar();
    $title = $setting->nama_perusahaan;
    $image = $setting->image;
    $berita  = $this->M_berita->daftar();

    // mengambil session
    $user = $this->db->get_where('tb_user', ['email' => $this->session->userdata('email')])->row_array();

    $data = array(
      'title'     => $title,
      'subtitle'  => 'Daftar Berita',
      'isi'       => 'back_end/berita/v_daftar',
      'user'      =>  $user,
      'image'     =>  $image,
      'berita'    => $berita
    );

    $this->load->view('back_end/layout/v_wrapper', $data, false);
  }

  public function tambah()
  {
    // RULES VALIDATION
    tambah_validation();

    // 
    if ($this->form_validation->run() ==  false) {
      // LOAD FUNCTION DARI MODEL
      $setting = $this->M_Setting->daftar();
      $title = $setting->nama_perusahaan;
      $image = $setting->image;
      $kategori  = $this->M_kategori->daftarKategoriBerita();

      // MENGAMBIL DATA DARI SESSION
      $user = $this->db->get_where('tb_user', ['email' => $this->session->userdata('email')])->row_array();

      $data = array(
        'title'     => $title,
        'subtitle'  => 'Tulis Berita',
        'isi'       => 'back_end/berita/v_tambah_berita',
        'user'      =>  $user,
        'kategori'  => $kategori,
        'image'     =>  $image,
      );

      $this->load->view('back_end/layout/v_wrapper', $data, false);
    } else {
      $this->M_berita->tambah();
    }
  }

  public function edit($id_berita)
  {
    // LOAD FUNCTION DARI MODEL
    $setting = $this->M_Setting->daftar();
    $title = $setting->nama_perusahaan;
    $image = $setting->image;
    $kategori   = $this->M_kategori->daftarKategoriBerita();
    $berita   = $this->M_berita->detail($id_berita);

    // MENGAMBIL DATA DARI SESSION
    $user = $this->db->get_where('tb_user', ['email' => $this->session->userdata('email')])->row_array();


    // Validasi
    tambah_validation();

    if ($this->form_validation->run()) {


      if (!empty($_FILES['image']['name'])) {

        $config['upload_path']   = './assets/img/berita/';
        $config['allowed_types'] = 'gif|jpg|png|svg|jpeg';
        $config['max_size']      = '12000'; // KB  
        $this->load->library('upload', $config);
        $this->upload->initialize($config);


        if (!$this->upload->do_upload('image')) {
          // JIKA GAMBAR DIGANTI
          // End validasi
          $data = array(
            'title'     => $title,
            'subtitle'  => 'Edit Berita',
            'kategori'  => $kategori,
            'berita'    => $berita,
            'error'     => $this->upload->display_errors(),
            'isi'       => 'back_end/berita/v_edit',
            'user'      => $user,
            'image'     =>  $image,
          );
          $this->load->view('back_end/layout/v_wrapper', $data, FALSE);
          // Masuk database
        } else {
          $upload_data = array('uploads' => $this->upload->data());
          //Hapus gambar
          if ($berita->gambar_berita != "") {
            unlink('./assets/img/berita/' . $berita->gambar_berita);
          }
          // End hapus
          $slug   = url_title($this->input->post('judul'), 'dash', TRUE);

          $data = array(
            'id_berita'     => $id_berita,
            'id_kategori'   => $this->input->post('kategori'),
            'slug_berita'   => $slug,
            'judul_berita'  => $this->input->post('judul'),
            'isi_berita'    => $this->input->post('isi'),
            'jenis_berita'  => $this->input->post('jenis_berita'),
            'status_berita' => $this->input->post('status'),
            'gambar_berita' => $upload_data['uploads']['file_name'],
            'keywords'      => $this->input->post('keywords'),
            'last_modified' => date('Y-m-d'),
          );
          // 
          $this->M_berita->edit($data);
          // SET FLASH DATA
          $this->session->set_flashdata('success', 'Berhasil mengedit data');
          redirect('berita');
        }
      } else {
        // JIKA GAMBAR TIDAK DIGANTI
        $slug   = url_title($this->input->post('judul'), 'dash', TRUE);

        $data = array(
          'id_berita'     => $id_berita,
          'id_kategori'   => $this->input->post('kategori'),
          'slug_berita'   => $slug,
          'judul_berita'  => $this->input->post('judul'),
          'isi_berita'    => $this->input->post('isi'),
          'jenis_berita'  => $this->input->post('jenis_berita'),
          'status_berita' => $this->input->post('status'),
          'keywords'      => $this->input->post('keywords'),
          'last_modified' => date('Y-m-d'),
        );
        $this->M_berita->edit($data);
        $this->session->set_flashdata('success', 'Berhasil mengedit data');
        redirect('berita');
      }
    }
    // End masuk database

    $data = array(
      'title'     => $title,
      'subtitle'  => 'Edit Berita',
      'kategori'  => $kategori,
      'berita'    => $berita,
      'isi'       => 'back_end/berita/v_edit',
      'user'      => $user,
      'image'     =>  $image,
    );
    $this->load->view('back_end/layout/v_wrapper', $data, FALSE);
  }

  public function hapus($id_berita)
  {
    // LOAD FUNCTION DARI MODEL
    $berita = $this->M_berita->detail($id_berita);
    // MENGHAPUS FOTO
    if ($berita->gambar_berita != "") {
      unlink('./assets/img/berita/' . $berita->gambar_berita);
    }
    $data = array(
      'id_berita' => $id_berita,
    );
    $this->M_berita->hapus($data);
  }
}
