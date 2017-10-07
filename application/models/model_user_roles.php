<?php

class Model_user_roles extends CI_Model
{

  function input()
  {
    $data = array('role_name' => $this->input->post('role_name'),
                  'role_desc' => $this->input->post('role_desc'));
    $this->db->insert('user_roles',$data);
  }

  function get_user_roles($param=array())
  {
    if(count($param)<=0)
    {
      return $this->db->get("user_roles");
    }
    else
    {
      return $this->db->get_where("user_roles",$param);
    }
  }

  function edit()
  {
  $data = array('role_name' => $this->input->post('role_name'),
                  'role_desc' => $this->input->post('role_desc'));
    $this->db->where('id_role', $this->input->post('id'));
    $this->db->update('user_roles',$data);
  }

  function delete($param="")
  {
    if($param!="")
    {
      $this->db->where($param);
    }
    $this->db->delete("user_roles");
  }
  
}
