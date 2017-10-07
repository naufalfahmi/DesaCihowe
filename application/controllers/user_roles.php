<?php

class User_roles extends CI_Controller
{

  function __construct()
  {
    parent::__construct();
		authentication($this);
    secure_bypass_menu($this);
    $this->load->model('model_user_roles');
  }
  function index()
  {
		$data=dashboard_data($this);
    $data['user_roles']=$this->model_user_roles->get_user_roles();
    $this->template->load('templates/dashboard_template','dashboard/user_roles/user_roles',$data);
  }

  function input()
  {
		$data=dashboard_data($this);
    if (isset($_POST['submit'])) {
      $this->model_user_roles->input();
      redirect('user_roles');
    } else {
      $this->template->load('templates/dashboard_template','dashboard/user_roles/input', $data);
    }
  }

  function edit()
  {
    $data=dashboard_data($this);
    if (isset($_POST['submit']))
    {
      $this->model_user_roles->edit();
      redirect('user_roles');
    } else
    {
      $param=array("id_role"=>$this->uri->segment(3));
      $data['user_roles'] = $this->model_user_roles->get_user_roles($param)->row_array();
      $this->template->load('templates/dashboard_template','dashboard/user_roles/edit',$data);
    }
  }
  function delete()
  {
    $param=array("id_role"=>$this->uri->segment(3));
    $this->model_user_roles->delete($param);
    redirect ('user_roles');
  }

}
