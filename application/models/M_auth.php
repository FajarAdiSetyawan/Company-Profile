<?php

defined('BASEPATH') or exit('No direct script access allowed');

class M_auth extends CI_Model
{
  public function login()
  {
    $email = $this->input->post('email');
    $password = $this->input->post('password');

    $user = $this->db->get_where('tb_user', ['email' => $email])->row_array();

    // jika user ada di db
    if ($user) {
      //jika user aktif
      if ($user['is_active'] == 1) {
        if (password_verify($password, $user['password'])) {
          $data = [
            'id_user' => $user['id_user'],
            'email' => $user['email'],
            'role_id' => $user['role_id']
          ];
          $this->session->set_userdata($data);
          $this->session->set_flashdata('success', 'Selamat Datang ' . $user['nama']);
          redirect('dashboard');
        } else {
          $this->session->set_flashdata('error', 'Password Salah');
          redirect('auth');
        }
      } else {
        $this->session->set_flashdata('success', 'Selamat , akun anda berhasil diregistrasi');
        redirect('auth');
      }
    } else {
      $this->session->set_flashdata('warning', 'Akun Tidak Ditemukan');
      redirect('auth');
    }
  }

  public function register()
  {
    $email = $this->input->post('email', true);
    $data = [
      'nama' => htmlspecialchars($this->input->post('nama_lengkap', true)),
      'email' => htmlspecialchars($email),
      'image' => 'default.png',
      'password' => password_hash($this->input->post('password'), PASSWORD_DEFAULT),
      'role_id' => 2,
      'is_active' => 1,
      'date_created' => time()
    ];

    // siapkan token
    $token = base64_encode(random_bytes(32));
    $user_token = [
      'email'         => $email,
      'token'         => $token,
      'date_created'  => time()
    ];

    // QUERY INSERT DATA
    $this->db->insert('tb_user', $data);
    $this->db->insert('tb_user_token', $user_token);

    // $this->_sendEmail($token, 'verify');

    $this->session->set_flashdata('success', 'Selamat , akun anda berhasil diregistrasi ');
    redirect('auth');
  }

  // private function _sendEmail($token, $type)
  // {
  //   $config = [
  //     'protocol'  => 'smtp',
  //     'smtp_host' => 'ssl://smtp.googlemail.com',
  //     'smtp_user' => 'websekolah126b05@gmail.com',
  //     'smtp_pass' => '1sampai8',
  //     'smtp_port' => 465,
  //     'mailtype'  => 'html',
  //     'charset'   => 'utf-8',
  //     'newline'   => "\r\n"
  //   ];
  //   $this->load->library('email', $config);
  //   $this->email->initialize($config);
  //   $this->email->from('websekolah126b05@gmail.com', 'Web Sekolah');
  //   $this->email->to($this->input->post('email'));

  //   if ($type == 'verify') {
  //     $this->email->subject('Verifikasi Akun');
  //     $this->email->message('Click this link to verify you account : <a href="' . base_url() . 'auth/verify?email=' . $this->input->post('email') . '&token=' . urlencode($token) . '">Activate</a>');
  //   } else if ($type == 'forgot') {
  //     $this->email->subject('Reset Password');
  //     $this->email->message('Click this link to reset your password : <a href="' . base_url() . 'auth/resetpassword?email=' . $this->input->post('email') . '&token=' . urlencode($token) . '">Reset Password</a>');
  //   }


  //   if ($this->email->send()) {
  //     return true;
  //   } else {
  //     echo $this->email->print_debugger();
  //     die;
  //   }
  // }

  // public function verify()
  // {
  //   $email = $this->input->get('email');
  //   $token = $this->input->get('token');

  //   $user = $this->db->get_where('tb_user', ['email' => $email])->row_array();

  //   if ($user) {
  //     $user_token = $this->db->get_where('tb_user_token', ['token' => $token])->row_array();

  //     if ($user_token) {
  //       if (time() - $user_token['date_created'] < (60 * 60 * 24)) {
  //         $this->db->set('is_active', 1);
  //         $this->db->where('email', $email);
  //         $this->db->update('tb_user');

  //         $this->db->delete('tb_user_token', ['email' => $email]);

  //         $this->session->set_flashdata('success', 'Selamat , akun anda berhasil diregistrasi');
  //         redirect('auth');
  //       } else {
  //         $this->db->delete('tb_user', ['email' => $email]);
  //         $this->db->delete('tb_user_token', ['email' => $email]);

  //         $$this->session->set_flashdata('error', 'Verifikasi Akun Gagal, Token Kadaluarsa');
  //         redirect('auth');
  //       }
  //     } else {
  //       $this->session->set_flashdata('error', 'Verifikasi Akun Gagal, Token Salah');
  //       redirect('auth');
  //     }
  //   } else {
  //     $this->session->set_flashdata('error', 'Verifikasi Akun Gagal, Email Salah');
  //     redirect('auth');
  //   }
  // }

  public function forgotPassword()
  {
    $email = $this->input->post('email');
    $user = $this->db->get_where('tb_user', ['email' => $email, 'is_active' => 1])->row_array();

    if ($user) {
      $token = base64_encode(random_bytes(32));
      $user_token = [
        'email' => $email,
        'token' => $token,
        'date_created' => time()
      ];

      $this->db->insert('tb_user_token', $user_token);
      // $this->_sendEmail($token, 'forgot');

      $this->session->set_flashdata('success', 'Berhasil, Silahkan Cek Email');
      redirect('auth/forgotpassword');
    } else {
      $this->session->set_flashdata('error', 'Email Belum Terdaftar / Belum Aktif');
      redirect('auth/forgotpassword');
    }
  }

  public function changePassword()
  {
    $password = password_hash($this->input->post('password'), PASSWORD_DEFAULT);
    $email = $this->session->userdata('reset_email');

    $this->db->set('password', $password);
    $this->db->where('email', $email);
    $this->db->update('tb_user');

    $this->session->unset_userdata('reset_email');

    $this->db->delete('tb_user_token', ['email' => $email]);

    $this->session->set_flashdata('success', 'Berhasil, Password telah diganti, silahkan login');
    redirect('auth');
  }
}
