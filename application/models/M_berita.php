<?php

defined('BASEPATH') or exit('No direct script access allowed');

class M_berita extends CI_Model
{
  public function daftar()
  {
    // MENGGAMBIL SEMUA DATA DARI TB_BERITA
    $this->db->select('*');
    $this->db->from('tb_berita');
    // MENGGABUNGKAN DATA DARI TABLE TB_USER & TB_BERITA
    $this->db->join('tb_user', 'tb_user.id_user = tb_berita.id_user', 'left');
    // MENGGABUNGKAN DATA DARI TABLE TB_KATEGORI & TB_BERITA
    $this->db->join('tb_kategori_berita', 'tb_kategori_berita.id_kategori = tb_berita.id_kategori', 'left');
    $this->db->order_by('id_berita', 'DESC');
    return $this->db->get()->result();
  }

  public function detail($id_berita)
  {
    // MENGGAMBIL DATA BERDASARKAN ID_BERITA
    $this->db->select('*');
    $this->db->from('tb_berita');
    // MENGGABUNGKAN DATA DARI TABLE TB_USER & TB_BERITA
    $this->db->join('tb_user', 'tb_user.id_user = tb_berita.id_user', 'left');
    // MENGGABUNGKAN DATA DARI TABLE TB_KATEGORI & TB_BERITA
    $this->db->join('tb_kategori_berita', 'tb_kategori_berita.id_kategori = tb_berita.id_kategori', 'left');
    $this->db->where('id_berita', $id_berita);
    return $this->db->get()->row();
  }

  public function tambah()
  {
    // MENGGAMBIL DATA DARI INPUTAN
    $user = $this->session->userdata('id_user');
    $kategori = $this->input->post('kategori');
    $judul = $this->input->post('judul', true);
    $slug = url_title($judul, 'dash', true);
    $isi = $this->input->post('isi', true);
    $status = $this->input->post('status', true);
    $jenis = $this->input->post('jenis_berita', true);
    $keywords = $this->input->post('keywords', true);
    // CEK GAMBAR JIKA ADA GAMBAR AKAN DIUPLOAD 
    // id   // nama gambar
    $uploadImage = $_FILES['image']['name'];
    // var_dump($uploadImage);
    // die;
    if ($uploadImage) {
      // CEK FILE
      $config['allowed_types'] = 'gif|jpg|png';
      $config['max_size'] = '5048';
      $config['upload_path'] = './assets/img/berita/';
      $this->upload->initialize($config);
      // UPLOAD FILE  
      if ($this->upload->do_upload('image')) {
        $gambarBertia = $this->upload->data('file_name');
      } else {
        echo $this->upload->display_errors();
      }
    }
    $data = [
      'id_user'       => $user,
      'id_kategori'   => $kategori,
      'slug_berita'   => htmlspecialchars($slug),
      'judul_berita'  => htmlspecialchars($judul),
      'isi_berita'    => $isi,
      'gambar_berita' => $gambarBertia,
      'status_berita' => $status,
      'jenis_berita'  => $jenis,
      'keywords'      => htmlspecialchars($keywords),
    ];

    $this->db->insert('tb_berita', $data);
    // FLASH DATA
    $this->session->set_flashdata('success', 'Berhasil Membuat Berita');
    redirect('berita');
  }

  public function edit($data)
  {
    // QUERY UPDATE
    $this->db->where('id_berita', $data['id_berita']);
    $this->db->update('tb_berita', $data);
  }

  public function hapus($data)
  {
    // QUERY HAPUS
    $this->db->where('id_berita', $data['id_berita']);
    $this->db->delete('tb_berita', $data); // FLASH DATA
    $this->session->set_flashdata('success', 'Berhasil menghapus data');
    redirect('berita');
  }


  // FRONT END
  // Read data
  public function read($slug_berita)
  {
    // MENGAMBIL DATA BERDASARKAN SLUG_BERITA
    $this->db->select('*');
    $this->db->from('tb_berita');
    // MENGGABUNGKAN DATA DARI TABLE TB_USER & TB_BERITA
    $this->db->join('tb_user', 'tb_user.id_user = tb_berita.id_user', 'left');
    // MENGGABUNGKAN DATA DARI TABLE TB_KATEGORI & TB_BERITA
    $this->db->join('tb_kategori_berita', 'tb_kategori_berita.id_kategori = tb_berita.id_kategori', 'left');
    $this->db->where('slug_berita', $slug_berita);
    return $this->db->get()->row();
  }

  public function recent_berita()
  {
    // MENGGAMBIL SEMUA DATA DARI TABLE TB_BERITA
    $this->db->select('*');
    $this->db->from('tb_berita');
    // MENGGABUNGKAN DATA DARI TABLE TB_USER & TB_BERITA
    $this->db->join('tb_user', 'tb_user.id_user = tb_berita.id_user', 'left');
    // MENGGABUNGKAN DATA DARI TABLE TB_KATEGORI & TB_BERITA
    $this->db->join('tb_kategori_berita', 'tb_kategori_berita.id_kategori = tb_berita.id_kategori', 'left');
    $this->db->order_by('id_berita', 'DESC');
    // DIBATASI 6 DATA 
    $this->db->limit(6);
    return $this->db->get()->result();
  }

  public function lastst_berita()
  {
    $this->db->select('*');
    $this->db->from('tb_berita');
    $this->db->join('tb_user', 'tb_user.id_user = tb_berita.id_user', 'left');
    $this->db->join('tb_kategori_berita', 'tb_kategori_berita.id_kategori = tb_berita.id_kategori', 'left');
    $this->db->order_by('id_berita', 'DESC');
    $this->db->limit(10);
    return $this->db->get()->result();
  }
}
