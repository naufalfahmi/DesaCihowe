<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Rw extends CI_Controller
{

  function __construct()
  {
    parent::__construct();
    $this->load->model('model_rw');
    authentication($this);
    secure_bypass_menu($this);
  }
  function index()
  {
    $data=dashboard_data($this);
    $data['rw'] = $this->model_rw->get_rw();
    $this->template->load('templates/dashboard_template','dashboard/rw/rw',$data);
  }


  function input()
  {
    $data=dashboard_data($this);
    if (isset($_POST['submit'])) {
      $this->model_rw->input();
      redirect('rw');
    } else {
      $param=array("id_rw"=>$this->uri->segment(3));
      $data['rw'] = $this->model_rw->get_rw($param)->row_array();
      $this->template->load('templates/dashboard_template','dashboard/rw/input',$data);
    }
  }

    function edit()
  {
    $data=dashboard_data($this);
    if (isset($_POST['submit'])) {
      $this->model_rw->edit();
      redirect('rw');
    } else {
      $param=array("id_rw"=>$this->uri->segment(3));
      $data['rw'] = $this->model_rw->get_rw($param)->row_array();
      $this->template->load('templates/dashboard_template','dashboard/rw/edit',$data);
    }
  }
  function delete()
  {
    $param=array("id_rw"=>$this->uri->segment(3));
    $this->model_rw->delete($param);
    redirect ('rw');
  }



}
