<?php

function setting_validation()
{
  $ci = get_instance();
  $ci->form_validation->set_rules('nama', 'Nama', 'required', [
    'required' =>  'Nama Perusahaan belum diisi !',
  ]);
  $ci->form_validation->set_rules('email', 'Email', 'required|valid_email', [
    'required' =>  'email belum diisi !',
    'valid_email'  =>  'format email tidak valid !',
  ]);
  $ci->form_validation->set_rules('alamat', 'alamat', 'required', [
    'required' =>  'Alamat Perusahaan belum diisi !',
  ]);
  $ci->form_validation->set_rules('no', 'no', 'required', [
    'required' =>  'No. Telepon Perusahaan belum diisi !',
  ]);
  $ci->form_validation->set_rules('profile', 'profile', 'required', [
    'required' =>  'Profile Perusahaan belum diisi !',
  ]);
  $ci->form_validation->set_rules('sejarah', 'sejarah', 'required', [
    'required' =>  'Sejarah Perusahaan belum diisi !',
  ]);
  $ci->form_validation->set_rules('visi', 'visi', 'required', [
    'required' =>  'Visi Perusahaan belum diisi !',
  ]);
  $ci->form_validation->set_rules('misi', 'misi', 'required', [
    'required' =>  'Misi Perusahaan belum diisi !',
  ]);
}
