<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Menu extends CI_Controller
{
  function __construct()
  {
    parent::__construct();
    authentication($this);
    secure_bypass_menu($this);
    $this->load->model("model_menu");
    $this->load->model("model_home");
  }

  function index()
  {
    $data=dashboard_data($this);
    $data['menu_data']=$this->model_menu->get_menu_data();
    $this->template->load('templates/dashboard_template','dashboard/menu/menu',$data);
  }

  function input()
  {
    $data=dashboard_data($this);
    if (isset($_POST['submit']))
    {
      $this->model_menu->input();
      redirect('menu');
    } else
    {
      $data['data_konten']=$this->model_menu->get_konten()->result();
      $data['parent_menu']=$this->model_home->get_menu_parent("dashboard");
      $data['parent_menu_home']=$this->model_home->get_menu_parent("home");
      $this->template->load('templates/dashboard_template','dashboard/menu/input',$data);
    }
  }

  function edit()
  {
    $data=dashboard_data($this);
    if (isset($_POST['submit']))
    {
      $param=array("id_menu"=>$this->input->post('id'));
      $data= $this->model_menu->get_menu_data($param);
      foreach ($data as $d )
      {
        $old_page=$d->page;
        $old_id_parent=$d->parent;
      }

      //if dashboard parent menu change page, then all child did it too
      if($old_page!=$this->input->post('page') && $old_id_parent==0)
      {
        $pwhere=array("parent"=>$this->input->post('id'));
        $pdata=array("page"=>$this->input->post('page'));
        $this->model_menu->edit("menu",$pwhere,$pdata);
      }

      $this->model_menu->edit("menu");

      redirect('menu');
    } else
    {
      $data['data_konten']=$this->model_menu->get_konten()->result();
      $param=array("id_menu"=>$this->uri->segment(3));
      $data['parent_menu']=$this->model_home->get_menu_parent("dashboard");
      $data['parent_menu_home']=$this->model_home->get_menu_parent("home");
      $data['menu_data'] = $this->model_menu->get_menu_data($param);
      $data['much_child']= $this->model_home->get_count_child($this->uri->segment(3));
      $this->template->load('templates/dashboard_template','dashboard/menu/edit',$data);
    }
  }

  function delete()
  {
    $param=array("id_menu"=>$this->uri->segment(3));
    $this->model_menu->delete("user_nav",$param);

    $param=array("parent"=>$this->uri->segment(3));
    $this->model_menu->delete("menu",$param);

    $param=array("id_menu"=>$this->uri->segment(3));
    $this->model_menu->delete("menu",$param);
    redirect ('menu');
  }
}
