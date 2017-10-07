<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_login extends CI_Model
{
  function verification($user_login)
  {
    return $this->db->get_where("user",$user_login);
  }

  function get_veified_user_data($username)
  {
    $sql="SELECT * FROM user,user_roles WHERE user.id_role=user_roles.id_role AND user.username='$username'";
    $query= $this->db->query($sql);
    return $query->result_array();
  }

}
