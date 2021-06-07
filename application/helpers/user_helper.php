<?php

function changepassword_validation()
{
  $ci = get_instance();
  $ci->form_validation->set_rules('password', 'Password', 'required|trim', [
    'required' =>  'Password belum diisi !',
  ]);
  $ci->form_validation->set_rules('newpassword', 'Password baru', 'required|min_length[6]|trim', [
    'required' =>  'Password Baru belum diisi !',
    'min_length'  =>  'Password terlalu pendek !'
  ]);
  $ci->form_validation->set_rules('confirm-password', 'Password baru', 'required|matches[newpassword]|trim', [
    'required' =>  'Konfirmasi Password Baru belum diisi !',
    'matches' => 'Password Tidak sama'
  ]);
}
function addUser_validation()
{
  $ci = get_instance();
  $ci->form_validation->set_rules('name', 'Name', 'required|trim', [
    'required' =>  'Nama belum diisi !',
  ]);
  $ci->form_validation->set_rules('email', 'Email', 'required|valid_email|is_unique[tb_user.email]|trim', [
    'required' =>  'email belum diisi !',
    'valid_email'  =>  'format email tidak valid !',
    'is_unique'  =>  'email ini sudah terdaftar !'
  ]);
  $ci->form_validation->set_rules('password', 'Password', 'required|min_length[6]|trim', [
    'required' =>  'password belum diisi !',
    'min_length'  =>  'password terlalu pendek !'
  ]);
}
