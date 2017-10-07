<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller
{

  function __construct()
  {
    parent::__construct();
    authentication($this);
    secure_bypass_menu($this);
    $this->load->model('model_user');
    $this->load->model('model_user_roles');
  }

  function index()
  {
    $data=dashboard_data($this);
    $data['user'] = $this->model_user->get_user();
    $this->template->load('templates/dashboard_template','dashboard/user/user',$data);
  }

  function input()
  {
    $data=dashboard_data($this);
    if (isset($_POST['submit'])) {
      $this->model_user->input();
      redirect('user');
    } else {
      $this->load->model('model_user_roles');
      $data['user_roles'] = $this->model_user_roles->get_user_roles()->result();
      $this->template->load('templates/dashboard_template','dashboard/user/input',$data);
    }
  }

  function edit()
  {
    $data=dashboard_data($this);
    if (isset($_POST['submit'])) {
      $this->model_user->edit();
      redirect('user');
    } else {
      $param=array("id_user"=>$this->uri->segment(3));
      $this->load->model('model_user_roles');
      $data['user_roles'] = $this->model_user_roles->get_user_roles()->result();
      $data['user'] = $this->model_user->get_user($param)->row_array();
      $this->template->load('templates/dashboard_template','dashboard/user/edit',$data);
    }
  }

  function delete()
  {
    $param=array("id_user"=>$this->uri->segment(3));
    $this->model_user->delete($param);
    redirect ('user');
  }
}
