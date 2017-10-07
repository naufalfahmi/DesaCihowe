<?php

class Model_rw extends CI_Model
{

  function input()
  {
    $data = array('rw' => $this->input->post('rw'));
    $this->db->insert('rw',$data);
  }

  function get_rw($param=array())
  {
    if(count($param)<=0)
    {
      return $this->db->get("rw");
    }
    else
    {
      return $this->db->get_where("rw",$param);
    }
  }

  function edit()
  {
    $data = array('rw' => $this->input->post('rw'));
    $this->db->where('id_rw', $this->input->post('id'));
    $this->db->update('rw',$data);
  }

  function delete($param="")
  {
    if($param!="")
    {
      $this->db->where($param);
    }
    $this->db->delete("rw");
  }
}
