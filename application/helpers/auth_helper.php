<?php

//fungsi validasi untuk register
function register_validation()
{
  $ci = get_instance();
  $ci->form_validation->set_rules('nama_lengkap', 'Username', 'required', [
    'required' =>  'username belum diisi !',
  ]);
  $ci->form_validation->set_rules('email', 'Email', 'required|valid_email|is_unique[tb_user.email]', [
    'required' =>  'email belum diisi !',
    'valid_email'  =>  'format email tidak valid !',
    'is_unique'  =>  'email ini sudah terdaftar !'
  ]);
  $ci->form_validation->set_rules('password', 'Password', 'required|min_length[6]|trim', [
    'required' =>  'password belum diisi !',
    'min_length'  =>  'password terlalu pendek !'
  ]);
  $ci->form_validation->set_rules('password-confirm', 'Konfirmasi Password', 'required|trim|matches[password]', [
    'matches' => 'Password Tidak sama'
  ]);
}

//fungsi validasi untuk login
function login_validation()
{
  $ci = get_instance();
  $ci->form_validation->set_rules('email', 'Email', 'required|valid_email', [
    'required' =>  'email belum diisi !',
    'valid_email'  =>  'format email tidak valid !'
  ]);
  $ci->form_validation->set_rules('password', 'Password', 'required|trim', [
    'required' =>  'password belum diisi !'
  ]);
}

function forgot_validation()
{
  $ci = get_instance();
  $ci->form_validation->set_rules('email', 'Email', 'required|valid_email', [
    'required' =>  'Email belum diisi !',
    'valid_email'  =>  'format email tidak valid !'
  ]);
}


function changepass_validation()
{
  $ci = get_instance();
  $ci->form_validation->set_rules('password', 'Password baru', 'required|min_length[6]|trim', [
    'required' =>  'Password belum diisi !',
    'min_length'  =>  'Password terlalu pendek !'
  ]);
  $ci->form_validation->set_rules('conf-password', 'Password baru', 'required|matches[password]|trim', [
    'required' =>  'Konfirmasi Password belum diisi !',
    'matches' => 'Password Tidak sama'
  ]);
}
