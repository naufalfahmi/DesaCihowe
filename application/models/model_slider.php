<?php

class Model_slider extends CI_Model
{

  function get_slider_data($param=array())
  {
    if(count($param)>0)
    {
      return $this->db->get_where("slider",$param);
    }
    else {
      return $this->db->get("slider");
    }
  }

  function input()
  {
    $config['upload_path'] = './assets/img/slider/';
    $config['allowed_types'] = 'gif|jpg|png|jpeg';
    $this->load->library('upload',$config);
    $this->upload->do_upload();
    $hasil  = $this->upload->data();

    $data = array('judul'          => $this->input->post('judul'),
                  'isi'            => $this->input->post('isi'),
                  'slider_desc'    => $this->input->post('slider_desc'),
                  'status'         => $this->input->post('status'),
                  'foto'           => $hasil['file_name']);
    $this->db->insert('slider',$data);
  }

  function edit()
  {
    $config['upload_path']    = "./assets/img/slider/";
    $config['allowed_types']  = "gif|jpg|png|jpeg";
    $this->load->library('upload',$config);
    $this->upload->do_upload();
    $hasil  = $this->upload->data();

    if($hasil['file_name']!=NULL || $hasil['file_name']!="")
    {

      unlink("assets/img/slider/".$this->input->post('foto'));

      $data = array('judul'          => $this->input->post('judul'),
                    'isi'            => $this->input->post('isi'),
                    'slider_desc'    => $this->input->post('slider_desc'),
                    'status'         => $this->input->post('status'),
                    'foto'           => $hasil['file_name']);

    }
    else {
      $data = array('judul'          => $this->input->post('judul'),
                    'isi'            => $this->input->post('isi'),
                    'slider_desc'    => $this->input->post('slider_desc'),
                    'status'         => $this->input->post('status'),
                    'foto'           => $this->input->post('foto')
                  );
    }
    $this->db->where('id_slider', $this->input->post('id_slider'));
    $this->db->update('slider',$data);
  }

  function delete()
  {
    unlink("assets/img/slider/".$this->uri->segment(4));
    $param=array("id_slider"=>$this->uri->segment(3));
    $this->db->where($param);
    $this->db->delete('slider');
  }

}
