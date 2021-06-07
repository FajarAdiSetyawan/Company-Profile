<?php

defined('BASEPATH') or exit('No direct script access allowed');

class M_setting extends CI_Model
{
  public function daftar()
  {
    // MENGGABIL SEMUA DATA DARI TABLE TB_SETTING
    $this->db->select('*');
    $this->db->from('tb_setting');
    $this->db->order_by('id_setting', 'desc');
    return $this->db->get()->row();
  }

  public function update($data)
  {
    $this->db->where('id_setting', $data['id_setting']);
    $this->db->update('tb_setting', $data);
  }
}
