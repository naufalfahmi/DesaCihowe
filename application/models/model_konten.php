<?php

class Model_konten extends CI_Model
{

  function input()
  {
    $config['upload_path'] = './assets/img/konten/';
    $config['allowed_types'] = 'gif|jpg|png';
    $this->load->library('upload',$config);
    $this->upload->do_upload();
    $hasil  = $this->upload->data();

    $data = array('judul'     => $this->input->post('judul'),
                  'foto'      => $hasil['file_name'],
                  'isi_deskripsi' => $this->input->post('isi_deskripsi'),
                  'isi'       => $this->input->post('isi'),
                  'id_kat_konten' => $this->input->post('id_kat_konten'));
    $this->db->insert('konten',$data);
  }

  function get_konten($param=array())
  {
    if(count($param)<=0)
    {
      $query = "SELECT
              konten.id_konten,
              konten.judul,
              konten.foto,
              konten.isi_deskripsi,
              konten.isi,
              konten.tgl_dibuat,
              kategori_konten.id_kat_konten,
              kategori_konten.deskripsi
              FROM konten
              INNER JOIN kategori_konten ON konten.id_kat_konten = kategori_konten.id_kat_konten
              ORDER BY konten.id_konten ASC";
    return $this->db->query($query);
    }
    else
    {
      return $this->db->get_where("konten",$param);
    }
  }

  function get_old_foto_name($id)
  {
    $param=array("id_konten"=>$id);
    $data=$this->db->get_where("konten",$param)->result_array();
    foreach ($data as $key)
    {
      $ret=$key['foto'];
    }
    return $ret;
  }

  function edit()
  {
    $config['upload_path'] = './assets/img/konten/';
    $config['allowed_types'] = 'gif|jpg|png';
    $this->load->library('upload',$config);
    $this->upload->do_upload();
    $hasil  = $this->upload->data();

    if($hasil['file_name']!=NULL || $hasil['file_name']!="")
      {
        unlink("assets/img/konten/".$this->input->post('foto'));
        $data = array('judul'     => $this->input->post('judul'),
                  'foto'          => $hasil['file_name'],
                  'isi_deskripsi' => $this->input->post('isi_deskripsi'),
                  'isi'           => $this->input->post('isi'),
                  'id_kat_konten' => $this->input->post('id_kat_konten'));
      }
      else
      {
        $data = array('judul'     => $this->input->post('judul'),
                  'isi_deskripsi' => $this->input->post('isi_deskripsi'),
                  'isi'           => $this->input->post('isi'),
                  'id_kat_konten' => $this->input->post('id_kat_konten'));
      }
    
      if($hasil['file_name']!=NULL || $hasil['file_name']!="")
      {
        unlink("assets/img/konten/".$this->input->post('foto'));
        $data = array('judul'     => $this->input->post('judul'),
                  'foto'          => $hasil['file_name'],
                  'isi_deskripsi' => $this->input->post('isi_deskripsi'),
                  'isi'           => $this->input->post('isi'),
                  'id_kat_konten' => $this->input->post('id_kat_konten'));
      }
      else
      {
        $data = array('judul'     => $this->input->post('judul'),
                  'isi_deskripsi' => $this->input->post('isi_deskripsi'),
                  'isi'           => $this->input->post('isi'),
                  'id_kat_konten' => $this->input->post('id_kat_konten'));
       }
    
    $this->db->where('id_konten', $this->input->post('id'));
    $this->db->update('konten',$data);
  }

  function delete($param="")
  {
    unlink("assets/img/konten/".$this->get_old_foto_name($this->input->post('id')));
    if($param!="")
    {
      $this->db->where($param);
    }
    $this->db->delete("konten");
  }
  
}
