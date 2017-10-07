<?php

class Model_rt extends CI_Model
{

  function get_rt1($param=array())
  {
    if(count($param)<=0)
    {
      $query = "
      SELECT
      rt.*,
      rw.*
      FROM rt
      INNER JOIN rw ON rt.id_rw = rw.id_rw
      ORDER BY rt.id_rt ASC";

    return $this->db->query($query);
    }
    else
    {
      return $this->db->get_where("rt",$param);
    }
  }

  function get_rt($id_rt="")
  {
    $sql="
    SELECT
      rt.*,
      rw.*
      FROM rt
      INNER JOIN rw ON rt.id_rw = rw.id_rw ";
    if($id_rt!="")
    {
      $sql.=" AND rt.id_rt=".$id_rt;
    }
    return $this->db->query($sql);
  }

    function get_rw($id_rt="")
  {
    $sql="
    SELECT
      rt.*,
      rw.*
      FROM rt
      INNER JOIN rw ON rt.id_rw = rw.id_rw";
    if($id_rt!="")
    {
      $sql.=" AND rt.id_rw=".$id_rt;
    }
    return $this->db->query($sql);
  }


  function input()
  {
    $data = array('judul'          => $this->input->post('judul'),
                  'isi'             => $this->input->post('isi'),
                  'icon'           => $this->input->post('icon'),
                  'id_rw'  => $this->input->post('id_rw'));
    $this->db->insert('rt',$data);
  }

  function edit()
  {
      $data = array('judul'          => $this->input->post('judul'),
                    'isi'            => $this->input->post('isi'),
                    'icon'           => $this->input->post('icon'),
                    'id_rw'          => $this->input->post('id_rw'));
    $this->db->where('id_rt', $this->input->post('id'));
    $this->db->update('rt',$data);
  }

  function delete($param="")
  {
    if($param!="")
    {
      $this->db->where($param);
    }
      $this->db->delete('rt');
  }
}
