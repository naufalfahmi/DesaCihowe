<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Navigation_roles extends CI_Controller
{
  function __construct()
  {
    parent::__construct();
    authentication($this);
    secure_bypass_menu($this);
    $this->load->model("model_navigation_roles");
    $this->load->model("model_menu");
  }

  function index()
  {
    $data=dashboard_data($this);
    $data['data_nav']=$this->model_navigation_roles->get_user_nav()->result();
    $this->template->load('templates/dashboard_template','dashboard/user_nav/user_nav.php',$data);
  }

  function delete()
  {
    $data=dashboard_data($this);
    $this->model_navigation_roles->delete($this->uri->segment(3));
    redirect('navigation_roles');
  }

  function input()
  {
    $data=dashboard_data($this);
    if (isset($_POST['submit'])) {
      $this->model_navigation_roles->input();
      redirect('navigation_roles');
    } else {
      $data['data_roles']=$this->model_navigation_roles->get_role_name()->result();
      $this->template->load('templates/dashboard_template','dashboard/user_nav/input', $data);
    }
  }

  function getDataMenu()
  {
    $id_role=$this->input->post('id_role');
    if($id_role!=0)
    {
      $role_menu=$this->model_navigation_roles->get_menu_data_by_role($id_role)->result();
      $data_menu=$this->model_menu->get_menu_data();
      $i=0;
      if(count($role_menu)>0)
      {
        foreach($role_menu as $d)
        {

          if($d->isDuplicate!=$id_role)
          {
            if($d->parent_name!=NULL)
            {
              $data.='<option value="'.$d->id_menu.'">'.$d->parent_name.' > '.$d->judul.'</option>';
            }
            else
            {
              $data.='<option value="'.$d->id_menu.'">'.$d->judul.'</option>';
            }
          }

          if($i==count($role_menu)-1)
          {
            foreach($data_menu as $m)
            {
              $much_bound=$this->model_navigation_roles->check_menu_nav_bound($m->id_menu)->row_array();
              if($much_bound['much_nav']<=0)
              {
                $param=array("id_menu"=>$m->id_menu);
                $is_menu_home=$this->model_menu->get_menu_data($param);
                foreach($is_menu_home as $h)
                {
                  $page=$h->page;
                }


                if($page=="dashboard")
                {
                  if($much_bound['parent_name']!=NULL)
                  {
                    $data.='<option value="'.$m->id_menu.'">'.$much_bound['parent_name'].' > '.$m->judul.'</option>';
                  }
                  else
                  {
                    $data.='<option value="'.$m->id_menu.'">'.$m->judul.'</option>';
                  }
                }

              }
            }
          }
          $i++;
        }
      }
      else
      {
        foreach($data_menu as $m)
        {
          $much_bound=$this->model_navigation_roles->check_menu_nav_bound($m->id_menu)->row_array();
          if($much_bound['much_nav']<=0)
          {
            if($much_bound['parent_name']!=NULL)
            {
              $data.='<option value="'.$m->id_menu.'">'.$much_bound['parent_name'].' > '.$m->judul.'</option>';
            }
            else
            {
              $data.='<option value="'.$m->id_menu.'">'.$m->judul.'</option>';
            }
          }
        }
      }

    }
    else
    {
      $data='';
    }
    echo $data;
  }



}
