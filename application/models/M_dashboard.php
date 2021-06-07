<?php

defined('BASEPATH') or exit('No direct script access allowed');

class M_dashboard extends CI_Model
{
  public function __construct()
  {
    parent::__construct();
    $this->load->database();
  }

  // Total user
  public function user()
  {
    // MENGHITUNG JUMLAH DATA DARI TABLE TB_USER 
    $this->db->select('COUNT(*) AS total');
    $this->db->from('tb_user');
    $query = $this->db->get();
    return $query->row();
  }

  // Total berita
  public function berita()
  {
    $this->db->select('COUNT(*) AS total');
    $this->db->from('tb_berita');
    $query = $this->db->get();
    return $query->row();
  }

  // Total berita
  public function layanan()
  {
    $this->db->select('COUNT(*) AS total');
    $this->db->from('tb_layanan');
    $query = $this->db->get();
    return $query->row();
  }

  // Total client
  public function client()
  {
    $this->db->select('COUNT(*) AS total');
    $this->db->from('tb_client');
    $query = $this->db->get();
    return $query->row();
  }

  // Total staff
  public function staff()
  {
    $this->db->select('COUNT(*) AS total');
    $this->db->from('tb_staff');
    $query = $this->db->get();
    return $query->row();
  }

  // Total portfolio
  public function portfolio()
  {
    $this->db->select('COUNT(*) AS total');
    $this->db->from('tb_portfolio');
    $query = $this->db->get();
    return $query->row();
  }
}
