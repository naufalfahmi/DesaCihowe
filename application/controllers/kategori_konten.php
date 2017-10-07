<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kategori_konten extends CI_Controller
{
  function __construct()
  {
    parent::__construct();
    authentication($this);
    secure_bypass_menu($this);
    $this->load->model("model_kategori_konten");
  }

  function index()
  {
    $data=dashboard_data($this);
    $data['kat_konten']=$this->model_kategori_konten->get_kategori_konten();
    $this->template->load('templates/dashboard_template','dashboard/Kategori_konten/Kategori_konten',$data);
  }

  function input()
  {
    $data=dashboard_data($this);
    if (isset($_POST['submit'])) {
      $this->model_kategori_konten->input();
      redirect('Kategori_konten');
    } else {
      $this->template->load('templates/dashboard_template','dashboard/Kategori_konten/input', $data);
    }
  }

  function edit()
  {
    $data=dashboard_data($this);
    if (isset($_POST['submit']))
    {
      $this->model_kategori_konten->edit();
      redirect('kategori_konten');
    } else
    {
      $param=array("id_kat_konten"=>$this->uri->segment(3));
      $data['kat_konten'] = $this->model_kategori_konten->get_kategori_konten($param)->row_array();
      $this->template->load('templates/dashboard_template','dashboard/kategori_konten/edit',$data);
    }
  }

  function delete()
  {
    $param=array("id_kat_konten"=>$this->uri->segment(3));
    $this->model_kategori_konten->delete($param);
    redirect ('kategori_konten');
  }
}
