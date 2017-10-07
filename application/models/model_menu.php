<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_menu extends CI_Model
{
  function get_menu_data($param=array())
  {
    if(count($param)<=0)
    {
      $this->db->order_by("parent","asc");
      return $this->db->get("menu")->result();
    }
    else
    {
      return $this->db->get_where("menu",$param)->result();
    }
  }

  function get_menu_parent_data($parent_id)
  {
    $param=array("id_menu"=>$parent_id);
    return $this->db->get_where("menu",$param)->result();
  }

  function get_menu_konten_data($konten_id)
  {
    $param=array("id_konten"=>$konten_id);
    return $this->db->get_where("konten",$param)->result();
  }

  function input()
  {
    if($this->input->post('page')=="home")
    {
      $parent=$this->input->post('parent_home');
    }
    else {
      $parent=$this->input->post('parent_dashboard');
    }

    if($this->input->post('jenis')=='link')
    {
      $param=array(
        "judul"=>$this->input->post('judul'),
        "page"=>$this->input->post('page'),
        "parent"=>$parent,
        "jenis"=>$this->input->post('jenis'),
        "link"=>$this->input->post('link'),
        "icon"=>$this->input->post('icon')
      );
    }
    else
    {
      $param=array(
        "judul"=>$this->input->post('judul'),
        "page"=>$this->input->post('page'),
        "parent"=>$parent,
        "jenis"=>$this->input->post('jenis'),
        "id_konten"=>$this->input->post('id_konten'),
        "icon"=>$this->input->post('icon')
      );
    }
    $this->db->insert("menu",$param);
  }

  function edit($relate_table,$param_where=array(),$param=array())
  {
    if(count($param_where)<=0 && count($param)<=0)
    {
      if($this->input->post('page')=="home")
      {
        $parent=$this->input->post('parent_home');
      }
      else {
        $parent=$this->input->post('parent_dashboard');
      }

      $param_where=array("id_menu"=>$this->input->post('id'));
      if($this->input->post('jenis')=="link")
      {
        $param=array("judul"=>$this->input->post('judul'),
            "page"=>$this->input->post('page'),
            "parent"=>$parent,
            "jenis"=>$this->input->post('jenis'),
            "id_konten"=>NULL,
            "link"=>$this->input->post('link'),
            "icon"=>$this->input->post('icon')
          );
      }
      else {
        $param=array("judul"=>$this->input->post('judul'),
            "page"=>$this->input->post('page'),
            "parent"=>$parent,
            "jenis"=>$this->input->post('jenis'),
            "id_konten"=>$this->input->post('id_konten'),
            "link"=>NULL,
            "icon"=>$this->input->post('icon')
          );
      }
    }

    if(count($param_where)>0)
    {
      $this->db->where($param_where);
    }

    $this->db->update($relate_table,$param);
  }

  function delete($relate_table,$param=array())
  {
    if(count($param)>0)
    {
      $this->db->where($param);
    }

    $this->db->delete($relate_table);
  }

  function get_konten()
  {
    $sql="
    SELECT * FROM konten,kategori_konten
    WHERE konten.id_kat_konten=kategori_konten.id_kat_konten";
    return $this->db->query($sql);
  }

}
