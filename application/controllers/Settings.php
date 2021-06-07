<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Settings extends CI_Controller
{

  public function __construct()
  {
    parent::__construct();
    is_logged_in();
    // validasi form
    $this->load->library('form_validation');
    //load model
    $this->load->model('M_setting');
    //load helper
    $this->load->helper('setting');
  }

  public function index()
  {

    $user = $this->db->get_where('tb_user', ['email' =>
    $this->session->userdata('email')])->row_array();

    $setting = $this->M_setting->daftar();
    $title = $setting->nama_perusahaan;
    $image = $setting->image;


    if ($this->session->userdata('role_id') == '1') {
      // JIKA YANG MASUK ADMIN
      $data = array(
        'title'     => $title,
        'subtitle'  => 'Setting',
        'isi'       => 'back_end/setting/v_settings',
        'user'      => $user,
        'image'     => $image,
        'setting'   => $setting

      );
      $this->load->view('back_end/layout/v_wrapper', $data, false);
    } else {
      // JIKA YANG MASUK USER
      redirect('blocked');
    }
  }

  public function update()
  {
    $user = $this->db->get_where('tb_user', ['email' =>
    $this->session->userdata('email')])->row_array();
    if ($this->session->userdata('role_id') == '1') {
      // JIKA YANG MASUK ADMIN


      $setting = $this->M_setting->daftar();
      $title = $setting->nama_perusahaan;
      $image = $setting->image;
      setting_validation();

      if (!empty($_FILES['image']['name'])) {

        $config['upload_path']   = './assets/img/company/';
        $config['allowed_types'] = 'gif|jpg|png|svg|jpeg';
        $config['max_size']      = '12000'; // KB  
        $this->load->library('upload', $config);
        $this->upload->initialize($config);
        if (!$this->upload->do_upload('image')) {
          // End validasi
          $data = array(
            'title'   => 'Setting',
            'error'   => $this->upload->display_errors(),
            'isi'     => 'back_end/setting/v_settings',
            'user'    => $user,
            'image'   => $image,
            'setting' => $setting
          );
          $this->load->view('back_end/layout/v_wrapper', $data, FALSE);
          // Masuk database
        } else {
          $upload_data            = array('uploads' => $this->upload->data());
          //Hapus gambar
          if ($setting->image != "") {
            unlink('./assets/img/company/' . $setting->image);
          }
          // End hapus
          $data = array(
            'id_setting'    => '1',
            'nama_perusahaan'  => $this->input->post('nama'),
            'alamat'      => $this->input->post('alamat'),
            'no_telepon'  => $this->input->post('no'),
            'profile'  => $this->input->post('profile'),
            'email'  => $this->input->post('email'),
            'visi'  => $this->input->post('visi'),
            'misi'  => $this->input->post('misi'),
            'sejarah'  => $this->input->post('sejarah'),
            'image'    => $upload_data['uploads']['file_name'],
          );
          $this->M_setting->update($data);
          $this->session->set_flashdata('success', 'Berhasil mengupdate data');
          redirect('settings');
        }
      } else {

        $data = array(
          'id_setting'    => '1',
          'nama_perusahaan'  => $this->input->post('nama'),
          'alamat'      => $this->input->post('alamat'),
          'no_telepon'  => $this->input->post('no'),
          'profile'  => $this->input->post('profile'),
          'email'  => $this->input->post('email'),
          'visi'  => $this->input->post('visi'),
          'misi'  => $this->input->post('misi'),
          'sejarah'  => $this->input->post('sejarah'),
        );
        $this->M_setting->update($data);
        $this->session->set_flashdata('success', 'Berhasil mengupdate data');
        redirect('settings');

        $data = array(
          'title'   => 'Setting',
          'isi'     => 'back_end/setting/v_settings',
          'user'    => $user,
          'image'   => $image,
          'setting' => $setting

        );
        $this->load->view('back_end/layout/v_wrapper', $data, false);
      }
    } else {
      // JIKA YANG MASUK USER
      redirect('blocked');
    }
  }
}
