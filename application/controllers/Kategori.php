<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Kategori extends CI_Controller
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
  }

  public function kategoriBerita()
  {
    // LOAD FUNCTION DARI MODEL
    $setting = $this->M_Setting->daftar();
    $title = $setting->nama_perusahaan;
    $image = $setting->image;
    $kategori  = $this->M_kategori->daftarKategoriBerita();

    // MENGGAMBIL DATA DARI SESSION
    $user = $this->db->get_where('tb_user', ['email' => $this->session->userdata('email')])->row_array();

    $data = array(
      'title'     => $title,
      'subtitle'  => 'Daftar Kategori Berita',
      'isi'       => 'back_end/kategori/v_kategori_berita',
      'user'      =>  $user,
      'image'     =>  $image,
      'kategori'  => $kategori
    );

    $this->load->view('back_end/layout/v_wrapper', $data, false);
  }

  public function tambahKategoriBerita()
  {
    // FORM VALIDASI
    $this->form_validation->set_rules('name', 'Nama', 'required|trim|is_unique[tb_kategori_berita.nama_kategori]', [
      'required'  => 'Nama Kategori belum diisi !',
      'is_unique' => 'Kategori Sudah Ada'
    ]);

    if ($this->form_validation->run() ==  false) {
      // LOAD FUNCTION DARI MODEL
      $setting = $this->M_Setting->daftar();
      $title = $setting->nama_perusahaan;
      $image = $setting->image;
      $kategori  = $this->M_kategori->daftarKategoriBerita();


      $user = $this->db->get_where('tb_user', ['email' => $this->session->userdata('email')])->row_array();

      $data = array(
        'title'     => $title,
        'subtitle'  => 'Daftar Kategori Berita',
        'isi'       => 'back_end/kategori/v_kategori_berita',
        'user'      =>  $user,
        'image'     =>  $image,
        'kategori'  => $kategori
      );

      $this->load->view('back_end/layout/v_wrapper', $data, false);
    } else {
      $this->M_kategori->tambahKategoriBerita();
    }
  }
  public function editKategoriBerita($id_kategori)
  {
    $this->form_validation->set_rules('name', 'Nama', 'required|trim|is_unique[tb_kategori_berita.nama_kategori]', [
      'required'  => 'Nama Kategori belum diisi !',
      'is_unique' => 'Kategori Sudah Ada'
    ]);
    $name = $this->input->post('name', true);
    $slug = url_title($name, 'dash', true);
    $kategori = array(
      'id_kategori' => $id_kategori,
      'slug-kategori' => $slug,
      'nama_kategori' => $name
    );

    if ($this->form_validation->run() ==  false) {
      // LOAD FUNCTION DARI MODEL
      $setting = $this->M_Setting->daftar();
      $title = $setting->nama_perusahaan;
      $image = $setting->image;
      $kategori  = $this->M_kategori->daftarKategoriBerita();


      $user = $this->db->get_where('tb_user', ['email' => $this->session->userdata('email')])->row_array();

      $data = array(
        'title'     => $title,
        'subtitle'  => 'Daftar Kategori Berita',
        'isi'       => 'back_end/kategori/v_kategori_berita',
        'user'      =>  $user,
        'image'     =>  $image,
        'kategori'  => $kategori
      );

      $this->load->view('back_end/layout/v_wrapper', $data, false);
    } else {
      $this->M_kategori->editKategoriBerita($kategori);
    }
  }
  public function hapusKategoriBerita($id_kategori)
  {
    $kategori = array(
      'id_kategori' => $id_kategori,
    );
    $this->M_kategori->hapusKategoriBerita($kategori);
  }


  // KATEGORI STAFF
  public function kategoriStaff()
  {
    // LOAD FUNCTION DARI MODEL
    $setting = $this->M_Setting->daftar();
    $title = $setting->nama_perusahaan;
    $image = $setting->image;
    $kategori  = $this->M_kategori->daftarKategoriStaff();

    $user = $this->db->get_where('tb_user', ['email' => $this->session->userdata('email')])->row_array();
    // CEK YANG ROLE YANG MASUK
    if ($this->session->userdata('role_id') == '1') {
      // JIKA YANG MASUK ADMIN
      $data = array(
        'title'     => $title,
        'subtitle'  => 'Daftar Kategori Staff',
        'isi'       => 'back_end/kategori/v_kategori_staff',
        'user'      =>  $user,
        'image'     =>  $image,
        'kategori'  => $kategori
      );

      $this->load->view('back_end/layout/v_wrapper', $data, false);
    } else {
      // JIKA YANG MASUK USER
      redirect('blocked');
    }
  }

  public function tambahKategoriStaff()
  {
    $this->form_validation->set_rules('name', 'Nama', 'required|trim|is_unique[tb_kategori_berita.nama_kategori]', [
      'required'  => 'Nama Kategori belum diisi !',
      'is_unique' => 'Kategori Sudah Ada'
    ]);

    if ($this->form_validation->run() ==  false) {
      // LOAD FUNCTION DARI MODEL
      $setting = $this->M_Setting->daftar();
      $title = $setting->nama_perusahaan;
      $image = $setting->image;
      $kategori  = $this->M_kategori->daftarKategoriStaff();


      $user = $this->db->get_where('tb_user', ['email' => $this->session->userdata('email')])->row_array();
      // CEK YANG ROLE YANG MASUK
      if ($this->session->userdata('role_id') == '1') {
        // JIKA YANG MASUK ADMIN
        $data = array(
          'title'     => $title,
          'subtitle'  => 'Daftar Kategori',
          'isi'       => 'back_end/kategori/v_kategori_staff',
          'user'      =>  $user,
          'image'     =>  $image,
          'kategori'  => $kategori
        );

        $this->load->view('back_end/layout/v_wrapper', $data, false);
      } else {
        // JIKA YANG MASUK USER
        redirect('blocked');
      }
    } else {
      $this->M_kategori->tambahKategoriStaff();
    }
  }
  public function editKategoriStaff($id_kategori)
  {
    $this->form_validation->set_rules('name', 'Nama', 'required|trim|is_unique[tb_kategori_staff.nama_kategori]', [
      'required'  => 'Nama Kategori belum diisi !',
      'is_unique' => 'Kategori Sudah Ada'
    ]);
    $name = $this->input->post('name', true);
    $slug = url_title($name, 'dash', true);
    $kategori = array(
      'id_kategori' => $id_kategori,
      'slug_kategori' => $slug,
      'nama_kategori' => $name
    );

    if ($this->form_validation->run() ==  false) {
      $setting = $this->M_Setting->daftar();
      $title = $setting->nama_perusahaan;
      $image = $setting->image;
      $user = $this->db->get_where('tb_user', ['email' => $this->session->userdata('email')])->row_array();
      $kategori  = $this->M_kategori->daftarKategoriStaff();

      if ($this->session->userdata('role_id') == '1') {
        // JIKA YANG MASUK ADMIN
        $data = array(
          'title'     => $title,
          'subtitle'  => 'Daftar Kategori',
          'isi'       => 'back_end/kategori/v_kategori_staff',
          'user'      =>  $user,
          'image'     =>  $image,
          'kategori'  => $kategori
        );

        $this->load->view('back_end/layout/v_wrapper', $data, false);
      } else {
        // JIKA YANG MASUK USER
        redirect('blocked');
      }
    } else {
      $this->M_kategori->editKategoriStaff($kategori);
    }
  }
  public function hapusKategoriStaff($id_kategori)
  {
    $user = $this->db->get_where('tb_user', ['email' => $this->session->userdata('email')])->row_array();
    // CEK YANG ROLE YANG MASUK
    if ($this->session->userdata('role_id') == '1') {
      // JIKA YANG MASUK ADMIN
      $kategori = array(
        'id_kategori' => $id_kategori,
      );
      $this->M_kategori->hapusKategoriStaff($kategori);
    } else {
      // JIKA YANG MASUK USER
      redirect('blocked');
    }
  }


  // KATEGORI CLIENT
  public function kategoriClient()
  {

    $setting = $this->M_Setting->daftar();
    $title = $setting->nama_perusahaan;
    $image = $setting->image;
    $user = $this->db->get_where('tb_user', ['email' => $this->session->userdata('email')])->row_array();
    $kategori  = $this->M_kategori->daftarKategoriClient();

    $data = array(
      'title'     => $title,
      'subtitle'  => 'Daftar Kategori Client',
      'isi'       => 'back_end/kategori/v_kategori_client',
      'user'      =>  $user,
      'image'     =>  $image,
      'kategori'  => $kategori
    );

    $this->load->view('back_end/layout/v_wrapper', $data, false);
  }

  public function tambahKategoriClient()
  {
    $this->form_validation->set_rules('name', 'Nama', 'required|trim|is_unique[tb_kategori_client.nama_kategori]', [
      'required'  => 'Nama Kategori belum diisi !',
      'is_unique' => 'Kategori Sudah Ada'
    ]);

    if ($this->form_validation->run() ==  false) {
      $setting = $this->M_Setting->daftar();
      $title = $setting->nama_perusahaan;
      $image = $setting->image;
      $user = $this->db->get_where('tb_user', ['email' => $this->session->userdata('email')])->row_array();
      $kategori  = $this->M_kategori->daftarKategoriClient();

      $data = array(
        'title'     => $title,
        'subtitle'  => 'Daftar Kategori',
        'isi'       => 'back_end/kategori/v_kategori_client',
        'user'      =>  $user,
        'image'     =>  $image,
        'kategori'  => $kategori
      );

      $this->load->view('back_end/layout/v_wrapper', $data, false);
    } else {
      $this->M_kategori->tambahKategoriClient();
    }
  }
  public function editKategoriClient($id_kategori)
  {
    $this->form_validation->set_rules('name', 'Nama', 'required|trim|is_unique[tb_kategori_staff.nama_kategori]', [
      'required'  => 'Nama Kategori belum diisi !',
      'is_unique' => 'Kategori Sudah Ada'
    ]);
    $name = $this->input->post('name', true);
    $slug = url_title($name, 'dash', true);
    $kategori = array(
      'id_kategori' => $id_kategori,
      'slug_kategori' => $slug,
      'nama_kategori' => $name
    );

    if ($this->form_validation->run() ==  false) {
      $setting = $this->M_Setting->daftar();
      $title = $setting->nama_perusahaan;
      $image = $setting->image;
      $user = $this->db->get_where('tb_user', ['email' => $this->session->userdata('email')])->row_array();
      $kategori  = $this->M_kategori->daftarKategoriClient();

      $data = array(
        'title'     => $title,
        'subtitle'  => 'Daftar Kategori',
        'isi'       => 'back_end/kategori/v_kategori_client',
        'user'      =>  $user,
        'image'     =>  $image,
        'kategori'  => $kategori
      );

      $this->load->view('back_end/layout/v_wrapper', $data, false);
    } else {
      $this->M_kategori->editKategoriClient($kategori);
    }
  }
  public function hapusKategoriClient($id_kategori)
  {
    $kategori = array(
      'id_kategori' => $id_kategori,
    );
    $this->M_kategori->hapusKategoriClient($kategori);
  }
}
