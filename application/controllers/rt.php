<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Rt extends CI_Controller
{

  function __construct()
  {
    parent::__construct();
    authentication($this);
    $this->load->model('model_rt');
    $this->load->model('model_rw');
  }

  function index()
  {
    $data=dashboard_data($this);
    $data['rt'] = $this->model_rt->get_rt();
    $this->template->load('templates/dashboard_template','dashboard/rt/rt',$data);
  }

  function input()
  {
    $data=dashboard_data($this);
    if (isset($_POST['submit'])) {
      $this->model_rt->input();
      redirect('rt');
    } else {
      $this->load->model('model_rw');
      $data['rw'] = $this->model_rw->get_rw()->result();
      $this->template->load('templates/dashboard_template','dashboard/rt/input',$data);
    }
  }

  function edit()
  {
    $data=dashboard_data($this);
    if (isset($_POST['submit'])) {
      $this->model_rt->edit();
      redirect('rt');
    } else {
      $param=array("id_rt"=>$this->uri->segment(3));
      $this->load->model('model_rw');
      $data['rw'] = $this->model_rw->get_rw()->result();
      $data['rt'] = $this->model_rt->get_rt1($param)->row_array();
      $this->template->load('templates/dashboard_template','dashboard/rt/edit',$data);
    }
  }

  function delete()
  {
    $param=array("id_rt"=>$this->uri->segment(3));
    $this->model_rt->delete($param);
    redirect ('rt');
  }
}
