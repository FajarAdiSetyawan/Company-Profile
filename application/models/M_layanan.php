<?php

defined('BASEPATH') or exit('No direct script access allowed');

class M_layanan extends CI_Model
{
  public function daftar()
  {
    $this->db->select('*');
    $this->db->from('tb_layanan');
    $this->db->join('tb_user', 'tb_user.id_user = tb_layanan.id_user', 'left');
    $this->db->order_by('id_layanan', 'desc');
    return $this->db->get()->result();
  }


  public function detail($id_layanan)
  {
    $this->db->select('*');
    $this->db->from('tb_layanan');
    $this->db->join('tb_user', 'tb_user.id_user = tb_layanan.id_user', 'left');
    $this->db->where('id_layanan', $id_layanan);
    return $this->db->get()->row();
  }


  public function tambah()
  {
    $user = $this->session->userdata('id_user');
    $judul = $this->input->post('judul', true);
    $slug = url_title($judul, 'dash', true);
    $status = $this->input->post('status', true);
    $isi = $this->input->post('isi', true);
    // CEK GAMBAR JIKA ADA GAMBAR AKAN DIUPLOAD 
    // id   // nama gambar
    $uploadImage = $_FILES['image']['name'];
    // var_dump($uploadImage);
    // die;
    if ($uploadImage) {
      // CEK FILE
      $config['allowed_types'] = 'gif|jpg|png';
      $config['max_size'] = '5048';
      $config['upload_path'] = './assets/img/layanan/';
      $this->upload->initialize($config);
      // UPLOAD FILE  
      if ($this->upload->do_upload('image')) {
        $gambarlayanan = $this->upload->data('file_name');
      } else {
        echo $this->upload->display_errors();
      }
    }
    $data = [
      'id_user'       => $user,
      'slug_layanan'   => htmlspecialchars($slug),
      'judul_layanan'  => htmlspecialchars($judul),
      'isi_layanan'    => $isi,
      'gambar_layanan' => $gambarlayanan,
      'status_layanan' => $status,
    ];

    $this->db->insert('tb_layanan', $data);
    $this->session->set_flashdata('success', 'Berhasil Membuat Layanan');
    redirect('layanan');
  }


  public function edit($data)
  {
    $this->db->where('id_layanan', $data['id_layanan']);
    $this->db->update('tb_layanan', $data);
  }

  public function hapus($data)
  {
    $this->db->where('id_layanan', $data['id_layanan']);
    $this->db->delete('tb_layanan', $data); // FLASH DATA
    $this->session->set_flashdata('success', 'Berhasil menghapus data');
    redirect('layanan');
  }


  public function read($slug_layanan)
  {

    $this->db->select('*');
    $this->db->from('tb_layanan');
    $this->db->where('slug_layanan', $slug_layanan);
    return $this->db->get()->row();
  }
}
