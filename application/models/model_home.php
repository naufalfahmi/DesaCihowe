<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_home extends CI_Model
{
  function get_menu_parent($page)
  {
    if($page=="all")
    {

      $sql="SELECT * FROM menu WHERE parent=0";
    }
    else {

      $sql="SELECT * FROM menu WHERE page='$page' AND parent=0";
    }
    $query= $this->db->query($sql);
    return $query->result_array();
  }

  function get_count_child($id_parent)
  {
    $sql="SELECT COUNT(*) as total_child FROM menu WHERE parent=$id_parent";
    $query=$this->db->query($sql);
    $row=$query->row_array();
    $result=$row['total_child'];
    return $result;
  }

  function get_menu_child($id_parent,$page)
  {
    $sql="SELECT * FROM menu WHERE page='$page' AND parent=$id_parent";
    $query= $this->db->query($sql);
    return $query->result_array();
  }

  function verify_dashboard_menu_by_role($id_role,$id_menu)
  {
    $sql="
    SELECT user_nav.id_role,user_roles.role_name,user_nav.id_menu,menu.judul
    FROM user_nav,user_roles,menu
    WHERE user_roles.id_role=user_nav.id_role
    AND menu.id_menu=user_nav.id_menu
    AND user_roles.id_role=$id_role
    AND menu.id_menu=$id_menu";
    return $this->db->query($sql);
  }
}
