<?php

defined('BASEPATH') or exit('No direct script access allowed');

class M_kategori extends CI_Model
{
  public function daftarKategoriBerita()
  {
    // MENGGAMBIL SEMUA DATA DARI TB_KATEGORI_BERITA
    $this->db->select('*');
    $this->db->from('tb_kategori_berita');
    $this->db->order_by('id_kategori', 'DESC');
    return $this->db->get()->result();
  }

  public function tambahKategoriBerita()
  {
    // MENGGAMBIL DATA DARI INPUTAN
    $name = $this->input->post('name', true);
    $slug = url_title($name, 'dash', true);
    $data = [
      'slug-kategori' => $slug,
      'nama_kategori' => htmlspecialchars($name),
    ];
    // QUERY INSERT DATA
    $this->db->insert('tb_kategori_berita', $data);
    $this->session->set_flashdata('success', 'Berhasil Membuat Kategori ' . $name);
    redirect('kategori/kategoriberita');
  }
  public function editKategoriBerita($kategori)
  { // QUERY UPDATE

    $this->db->set('slug-kategori', $kategori['slug_kategori']);
    $this->db->set('nama_kategori', $kategori['nama_kategori']);
    $this->db->where('id_kategori', $kategori['id_kategori']);
    $this->db->update('tb_kategori_berita', $kategori);

    // FLASH DATA
    $this->session->set_flashdata('success', 'Berhasil mengedit data');
    redirect('kategori/kategoriberita');
  }
  public function hapusKategoriBerita($kategori)
  {
    $this->db->where('id_kategori', $kategori['id_kategori']);
    $this->db->delete('tb_kategori_berita', $kategori);
    // FLASH DATA
    $this->session->set_flashdata('success', 'Berhasil menghapus data');
    redirect('kategori/kategoriberita');
  }


  // KATEGORI STAFF
  public function daftarKategoriStaff()
  {
    $this->db->select('*');
    $this->db->from('tb_kategori_staff');
    $this->db->order_by('id_kategori', 'DESC');
    return $this->db->get()->result();
  }

  public function tambahKategoriStaff()
  {
    $name = $this->input->post('name', true);
    $slug = url_title($name, 'dash', true);
    $data = [
      'slug_kategori' => $slug,
      'nama_kategori' => htmlspecialchars($name),
    ];
    // QUERY INSERT DATA
    $this->db->insert('tb_kategori_staff', $data);
    $this->session->set_flashdata('success', 'Berhasil Membuat Kategori ' . $name);
    redirect('kategori/kategoriStaff');
  }
  public function editKategoriStaff($kategori)
  { // QUERY UPDATE

    $this->db->set('slug_kategori', $kategori['slug_kategori']);
    $this->db->set('nama_kategori', $kategori['nama_kategori']);
    $this->db->where('id_kategori', $kategori['id_kategori']);
    $this->db->update('tb_kategori_staff', $kategori);

    // FLASH DATA
    $this->session->set_flashdata('success', 'Berhasil mengedit data');
    redirect('kategori/kategoriStaff');
  }
  public function hapusKategoriStaff($kategori)
  {
    $this->db->where('id_kategori', $kategori['id_kategori']);
    $this->db->delete('tb_kategori_staff', $kategori); // FLASH DATA
    $this->session->set_flashdata('success', 'Berhasil menghapus data');
    redirect('kategori/kategoriStaff');
  }


  // KATEGORI CLIENT
  public function daftarKategoriClient()
  {
    $this->db->select('*');
    $this->db->from('tb_kategori_client');
    $this->db->order_by('id_kategori', 'DESC');
    return $this->db->get()->result();
  }

  public function tambahKategoriClient()
  {
    $name = $this->input->post('name', true);
    $slug = url_title($name, 'dash', true);
    $data = [
      'slug_kategori' => $slug,
      'nama_kategori' => htmlspecialchars($name),
    ];
    // QUERY INSERT DATA
    $this->db->insert('tb_kategori_client', $data);
    $this->session->set_flashdata('success', 'Berhasil Membuat Kategori ' . $name);
    redirect('kategori/kategoriclient');
  }
  public function editKategoriClient($kategori)
  { // QUERY UPDATE

    $this->db->set('slug_kategori', $kategori['slug_kategori']);
    $this->db->set('nama_kategori', $kategori['nama_kategori']);
    $this->db->where('id_kategori', $kategori['id_kategori']);
    $this->db->update('tb_kategori_client', $kategori);

    // FLASH DATA
    $this->session->set_flashdata('success', 'Berhasil mengedit data');
    redirect('kategori/kategoriclient');
  }
  public function hapusKategoriClient($kategori)
  {
    $this->db->where('id_kategori', $kategori['id_kategori']);
    $this->db->delete('tb_kategori_client', $kategori); // FLASH DATA
    $this->session->set_flashdata('success', 'Berhasil menghapus data');
    redirect('kategori/kategoriclient');
  }
}
