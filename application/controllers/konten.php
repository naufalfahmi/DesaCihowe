<?php

class Konten extends CI_Controller
{

  function __construct()
  {
    parent::__construct();
		authentication($this);
    secure_bypass_menu($this);
    $this->load->model('model_konten');
    $this->load->model('model_kategori_konten');
  }
  function index()
  {
		$data=dashboard_data($this);
    $data['konten']=$this->model_konten->get_konten();
    $this->template->load('templates/dashboard_template','dashboard/konten/konten',$data);
  }

  function input()
  {
		$data=dashboard_data($this);
    if (isset($_POST['submit'])) {
      $this->model_konten->input();
      redirect('konten');
    } else {
      $this->load->model('model_kategori_konten');
      $data['kat_konten'] = $this->model_kategori_konten->get_kategori_konten()->result();
      $this->template->load('templates/dashboard_template','dashboard/konten/input', $data);
    }
  }

  function edit()
  {
    $data=dashboard_data($this);
    if (isset($_POST['submit']))
    {
      $this->model_konten->edit();
      redirect('konten');
    } else
    {
      $param=array("id_konten"=>$this->uri->segment(3));
      $this->load->model('model_kategori_konten');
      $data['kat_konten'] = $this->model_kategori_konten->get_kategori_konten()->result();
      $data['konten'] = $this->model_konten->get_konten($param)->row_array();
      $this->template->load('templates/dashboard_template','dashboard/konten/edit',$data);
    }
  }
  function delete()
  {
    $param=array("id_konten"=>$this->uri->segment(3));
    $this->model_konten->delete($param);
    redirect ('konten');
  }

}
