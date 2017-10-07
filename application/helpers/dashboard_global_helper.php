<?php
defined('BASEPATH') OR exit('No direct script access allowed');


function authentication($context)
{
    // !IMPORTANT FOR DASHBOARD LOGIN !
    if($context->session->userdata('status')!="login")
    {
      echo "<script>
      alert('Silahkan Login terlebih dahalu !');
      window.location.href='".base_url('login')."';
      </script>";
    }
    $context->load->model("model_home");
    // !IMPORTANT FOR DASHBOARD LOGIN!

}

function dashboard_data($context)
{
  // !IMPORTANT FOR DASHBOARD TEMPLATE!
  $data['nip']=$context->session->userdata('nip');
  $data['id_role']=$context->session->userdata('id_role');
  $data['nama']=$context->session->userdata('nama');
  $data['role_name']=$context->session->userdata('role_name');
  $data['tgl_dibuat']=$context->session->userdata('tgl_dibuat');
  $data['foto']=$context->session->userdata('foto');
  $data['jenis_kelamin']=$context->session->userdata('jenis_kelamin');
  $data['parent_menu']= $context->model_home->get_menu_parent("dashboard");
  // !IMPORTANT FOR DASHBOARD TEMPLATE!

  return $data;
}

function secure_bypass_menu($context)
{
  $context->load->model("model_navigation_roles");
  if($context->model_navigation_roles->secure_menu($context)->num_rows()>0)
  {
    return true;
  }
  else
  {
    echo "<script>
    alert('Maaf anda tidak di izinkan menggunakan fitur ini.');
    window.location.href='".base_url('dashboard')."';
    </script>";
    return false;
  }
}

function do_create_log($context,$did)
{
  $context->load->model("model_dashboard");
  $context->model_dashboard->create_log($context,$did);
}
