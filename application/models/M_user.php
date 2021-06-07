<?php

defined('BASEPATH') or exit('No direct script access allowed');

class M_user extends CI_Model
{
  public function editProfile()
  {
    $data['user'] = $this->db->get_where('tb_user', ['email' =>
    $this->session->userdata('email')])->row_array();
    // MENGIRIM NAMA & EMAIL
    $nama = $this->input->post('nama');
    $email = $this->input->post('email');

    // CEK GAMBAR JIKA ADA GAMBAR AKAN DIUPLOAD 
    $uploadImage = $_FILES['image']['name'];
    // var_dump($uploadImage);
    // die;
    if ($uploadImage) {
      // CEK FILE
      $config['allowed_types'] = 'gif|jpg|png';
      $config['max_size'] = '2048';
      $config['upload_path'] = './assets/img/profile/';
      $this->upload->initialize($config);
      // UPLOAD FILE  
      if ($this->upload->do_upload('image')) {
        $gambarLama = $data['user']['image'];
        if ($gambarLama != 'default.png') {
          unlink(FCPATH . 'assets/img/profile/' . $gambarLama);
        }
        $gambarBaru = $this->upload->data('file_name');
        $this->db->set('image', $gambarBaru);
        echo $gambarBaru;
      } else {
        echo $this->upload->display_errors();
      }
    }
    // QUERY UPDATE
    $this->db->set('nama', $nama);
    $this->db->where('email', $email);
    $this->db->update('tb_user');

    // FLASH DATA
    $this->session->set_flashdata('success', 'Berhasil mengedit data');
    redirect('user/profile');
  }

  public function changePassword()
  {
    $data['user'] = $this->db->get_where('tb_user', ['email' =>
    $this->session->userdata('email')])->row_array();

    // MENGGAMBIL DATA DARI INPUTAN
    $password = $this->input->post('password');
    $passwordBaru = $this->input->post('newpassword');

    if (!password_verify($password, $data['user']['password'])) {
      // JIKA PASSWORD TIDAK SAMA DENGAN DATA USER
      $this->session->set_flashdata('message', '
          <div class="alert alert-danger alert-has-icon">
            <div class="alert-icon"><i class="far fa-lightbulb"></i></div>
            <div class="alert-body">
              <div class="alert-title">Password Salah !!!</div>
            </div>
          </div>');
      redirect('user/changepassword');
    } else {
      if ($password == $passwordBaru) {
        // JIKA PASSWORD BARU SAMA DENGAN PASSWORD LAMA
        $this->session->set_flashdata('message', '
            <div class="alert alert-danger alert-has-icon">
              <div class="alert-icon"><i class="far fa-lightbulb"></i></div>
                <div class="alert-body">
                <div class="alert-title">Password Baru Tidak Boleh sama dengan Password Lama !!!</div>
              </div>
            </div>');
        redirect('user/changepassword');
      } else {
        // password sudah ok
        $password_hash = password_hash($passwordBaru, PASSWORD_DEFAULT);
        $this->db->set('password', $password_hash);
        $this->db->where('email', $this->session->userdata('email'));
        $this->db->update('tb_user');

        $this->session->set_flashdata('success', 'Berhasil, Mengganti Password');
        redirect('user/profile');
      }
    }
  }

  public function daftarUser()
  {
    // MENGGAMBIL SEMUA DATA DARI TABEL TB_USER
    $this->db->select('*');
    $this->db->from('tb_user');
    $this->db->order_by('id_user', 'DESC');
    return $this->db->get()->result();
  }

  public function addUser()
  {
    // MENGGAMBIL DATA DARI INPUTAN
    $email = $this->input->post('email', true);
    $name = $this->input->post('name', true);
    $role_id = $this->input->post('role_id', true);
    $is_active = $this->input->post('is_active', true);
    $data = [
      'nama' => htmlspecialchars($name),
      'email' => htmlspecialchars($email),
      'image' => 'default.png',
      'password' => password_hash($this->input->post('password'), PASSWORD_DEFAULT),
      'role_id' => htmlspecialchars($role_id),
      'is_active' => htmlspecialchars($is_active),
      'date_created' => time()
    ];
    // QUERY INSERT DATA
    $this->db->insert('tb_user', $data);
    $this->session->set_flashdata('success', 'Berhasil Membuat akun ' . $name);
    redirect('user/daftar_user');
  }

  public function editUser($user)
  { // QUERY UPDATE
    $this->db->set('is_active', $user['is_active']);
    $this->db->set('role_id', $user['role_id']);
    $this->db->where('id_user', $user['id_user']);
    $this->db->update('tb_user', $user);

    // FLASH DATA
    $this->session->set_flashdata('success', 'Berhasil mengedit data');
    redirect('user/daftar_user');
  }

  public function hapus($user)
  {
    $this->db->where('id_user', $user['id_user']);
    $this->db->delete('tb_user', $user); // FLASH DATA
    $this->session->set_flashdata('success', 'Berhasil menghapus data');
    redirect('user/daftar_user');
  }
}
