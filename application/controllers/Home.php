<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();
    //load model
    $this->load->model('M_berita');
    $this->load->model('M_kategori');
    $this->load->model('M_layanan');
    $this->load->model('M_Setting');
    $this->load->model('M_staff');
    $this->load->model('M_portfolio');
    $this->load->model('M_client');
    $this->load->model('M_dashboard');
  }

  public function index()
  {
    // LOAD FUNCTION DARI MODEL
    $berita = $this->M_berita->recent_berita();
    $layanan = $this->M_layanan->daftar();
    $setting = $this->M_Setting->daftar();
    $staff  = $this->M_staff->daftar();
    $portfolio = $this->M_portfolio->daftar();
    $client  = $this->M_client->daftar();
    $title = $setting->nama_perusahaan;
    $image = $setting->image;

    $data = array(
      'title'     => $title,
      'isi'       => 'front-end/v_home',
      'layanan'   => $layanan,
      'setting'   => $setting,
      'berita'    => $berita,
      'staff'     => $staff,
      'portfolio' => $portfolio,
      'client'    => $client,
      'image'     => $image,
    );

    $this->load->view('front-end/layout/v_wrapper', $data, false);
  }

  public function blog()
  {

    // LOAD FUNCTION DARI MODEL
    $berita = $this->M_berita->daftar();
    $lastst_berita = $this->M_berita->lastst_berita();
    $kategori = $this->M_kategori->daftarKategoriBerita();
    $layanan = $this->M_layanan->daftar();
    $setting = $this->M_Setting->daftar();
    $title = $setting->nama_perusahaan;
    $image = $setting->image;

    $data = array(
      'title'         => $title,
      'subtitle'      => 'Blog',
      'isi'           => 'front-end/v_blog',
      'berita'        => $berita,
      'kategori'      => $kategori,
      'lastst_berita' => $lastst_berita,
      'layanan'       => $layanan,
      'setting'       => $setting,
      'image'         => $image,
    );

    $this->load->view('front-end/layout/v_wrapper', $data, false);
  }

  public function detail($slug_berita)
  {
    // LOAD FUNCTION DARI MODEL
    $lastst_berita = $this->M_berita->lastst_berita();
    $berita = $this->M_berita->read($slug_berita);
    $layanan = $this->M_layanan->daftar();
    $kategori = $this->M_kategori->daftarKategoriBerita();
    $setting = $this->M_Setting->daftar();
    $title = $setting->nama_perusahaan;
    $image = $setting->image;

    $data = array(
      'title'         => $berita->judul_berita,
      'isi'           => 'front-end/v_blog_detail',
      'layanan'       => $layanan,
      'berita'        => $berita,
      'kategori'      => $kategori,
      'lastst_berita' => $lastst_berita,
      'setting'       => $setting,
      'image'         => $image,
    );

    $this->load->view('front-end/layout/v_wrapper', $data, false);
  }

  public function detailLayanan($slug_layanan)
  {

    // LOAD FUNCTION DARI MODEL
    $detail = $this->M_layanan->read($slug_layanan);
    $layanan = $this->M_layanan->daftar();
    $setting = $this->M_Setting->daftar();
    $title = $setting->nama_perusahaan;
    $image = $setting->image;

    $data = array(
      'title'   => $detail->judul_layanan,
      'isi'     => 'front-end/v_layanan_detail',
      'layanan' => $layanan,
      'detail'  => $detail,
      'setting' => $setting,
      'image'   => $image,
    );

    $this->load->view('front-end/layout/v_wrapper', $data, false);
  }

  public function portfolioDetail($slug_portfolio)
  {

    // LOAD FUNCTION DARI MODEL
    $berita = $this->M_berita->recent_berita();
    $layanan = $this->M_layanan->daftar();
    $setting = $this->M_Setting->daftar();
    $title = $setting->nama_perusahaan;
    $image = $setting->image;
    $staff  = $this->M_staff->daftar();
    $portfolio = $this->M_portfolio->read($slug_portfolio);

    $data = array(
      'title'     =>  $portfolio->judul_portfolio,
      'isi'       => 'front-end/v_portfolio_detail',
      'layanan'   => $layanan,
      'setting'   => $setting,
      'berita'    => $berita,
      'staff'     => $staff,
      'portfolio' => $portfolio,
      'image'     => $image,

    );

    $this->load->view('front-end/layout/v_wrapper', $data, false);
  }
}
