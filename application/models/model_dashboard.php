<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_dashboard extends CI_Model
{
  function create_log($context,$do)
  {
    $nip=$context->session->userdata('nip');
    $param=array(
      "nip"=>$nip,
      "log_desc"=>$do
    );
    $this->db->insert("log_activity",$param);
  }

  function delete_log($id_log="")
  {
    if($id_log!="")
    {
      $param=array(
        "id_log"=>$id_log
      );
      $this->db->where($param);
      $this->db->delete("log_activity");
    }
    else {
      $this->db->delete("log_activity");
    }

  }

  function count_user()
  {
    return $this->db->query("SELECT COUNT(*) as much_user FROM user")->row_array();
  }

  function count_konten()
  {
    return $this->db->query("SELECT COUNT(*) as much_konten FROM konten")->row_array();
  }

  function count_dokumen()
  {
    return $this->db->query("SELECT COUNT(*) as much_dok FROM dokumen")->row_array();
  }

  function count_portal()
  {
    return $this->db->query("SELECT COUNT(*) as much_portal FROM portal_app")->row_array();
  }

  function count_konten_date($thn,$bln)
  {
    $param=$thn.'-'.$bln;
    if($bln<=10)
    {
      $param=$thn.'-0'.$bln;
    }
    return $this->db->query("SELECT COUNT(*) as mkonten FROM konten WHERE tgl_dibuat LIKE '%$param%'");
  }

  function count_dok_date($thn,$bln)
  {
    $param=$thn.'-'.$bln;
    if($bln<=10)
    {
      $param=$thn.'-0'.$bln;
    }
    return $this->db->query("SELECT COUNT(*) as mdok FROM dokumen WHERE tgl_dibuat LIKE '%$param%'");
  }
}
