<?php

function tambah_validation()
{
  $ci = get_instance();
  $ci->form_validation->set_rules('judul', 'Judul', 'required', [
    'required' =>  'Judul belum diisi !',
  ]);
  $ci->form_validation->set_rules('keywords', 'Keywords', 'required', [
    'required' =>  'Keywords belum diisi !',
  ]);
  $ci->form_validation->set_rules('isi', 'Isi berita', 'required', [
    'required' =>  'Isi Berita belum diisi !',
  ]);
}
