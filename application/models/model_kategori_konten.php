<?php

class model_kategori_konten extends CI_Model
{

  function input()
  {
    $param=array("deskripsi"=>$this->input->post("deskripsi"));
    $this->db->insert("Kategori_konten",$param);
  }

  function get_kategori_konten($param=array())
  {
    if(count($param)<=0)
    {
      return $this->db->get("kategori_konten");
    }
    else
    {
      return $this->db->get_where("kategori_konten",$param);
    }
  }

  function edit()
  {
    $data = array('deskripsi' => $this->input->post('deskripsi'));
    $this->db->where('id_kat_konten', $this->input->post('id'));
    $this->db->update('kategori_konten',$data);
  }

  function delete($param="")
  {
    if($param!="")
    {
      $this->db->where($param);
    }
    $this->db->delete("kategori_konten");
  }
}
