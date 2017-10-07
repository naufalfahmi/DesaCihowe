<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Slider extends CI_Controller
{
  function __construct()
  {
    parent::__construct();
    authentication($this);
    secure_bypass_menu($this);
    $this->load->model("model_slider");
  }

  function index()
  {
    $data=dashboard_data($this);
    $data['data_slider']=$this->model_slider->get_slider_data();
    $this->template->load('templates/dashboard_template','dashboard/slider/slider',$data);
  }

  function input()
  {
    $data=dashboard_data($this);
    if(isset($_POST['submit']))
    {
      $this->model_slider->input();
      redirect (base_url('slider'));
    }
    else
    {
      $this->template->load('templates/dashboard_template','dashboard/slider/input',$data);
    }
  }

  function edit()
  {
    $data=dashboard_data($this);
    if(isset($_POST['submit']))
    {
      $this->model_slider->edit();
      redirect(base_url('slider'));
    }
    else
    {
      $id_slider=$this->uri->segment(3);
      $param=array("id_slider"=>$id_slider);
      $data['data_slider']=$this->model_slider->get_slider_data($param)->row_array();
      $data['status'] = $this->model_slider->get_slider_data()->result();
      $this->template->load('templates/dashboard_template','dashboard/slider/edit',$data);
    }
  }

  function delete()
  {
    $this->model_slider->delete();
    redirect(base_url('slider'));
  }
}
