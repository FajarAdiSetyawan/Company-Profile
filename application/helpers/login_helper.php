<?php

function is_logged_in()
{

  $ci = get_instance();

  if (!$ci->session->userdata('email')) {
    $ci->session->set_flashdata('warning', 'Anda Harus Masuk Terlebih Dulu');
    redirect('auth');
  }
}
