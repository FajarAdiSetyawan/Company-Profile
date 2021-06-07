<?php

function tambah_validation()
{
  $ci = get_instance();
  $ci->form_validation->set_rules('judul', 'Judul', 'required', [
    'required' =>  'Judul belum diisi !',
  ]);
  $ci->form_validation->set_rules('website', 'website', 'required', [
    'required' =>  'website belum diisi !',
  ]);
  $ci->form_validation->set_rules('testimoni', 'testimoni berita', 'required', [
    'required' =>  'testimoni portfolio belum diisi !',
  ]);
  $ci->form_validation->set_rules('isi', 'Isi portfolio', 'required', [
    'required' =>  'Isi portfolio belum diisi !',
  ]);
}
