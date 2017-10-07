<?php

class Model_navigation_roles extends CI_Model
{
  function get_user_nav($id="")
  {
    $sql="
    SELECT user_nav.id_role_nav,user_roles.role_name, a.judul, (SELECT menu.judul FROM menu WHERE menu.id_menu=a.parent ) as parent, user_nav.tgl_dibuat FROM user_roles,menu a,user_nav
    WHERE user_roles.id_role=user_nav.id_role
    AND user_nav.id_menu=a.id_menu ORDER BY user_roles.role_name ASC";
    if ($id!="")
    {
      $sql.=" AND id_role_nav=$id";
    }
    return $query=$this->db->query($sql);
  }

  function input()
  {
    $param=array(
      "id_role"=>$this->input->post('id_role'),
      "id_menu"=>$this->input->post('id_menu')
    );
    $this->db->insert("user_nav",$param);
  }

  function delete($id_role_nav)
  {
    //if parent, auto delete its child
    $param_nav=array("id_role_nav"=>$id_role_nav);
    $this->db->delete("user_nav",$param_nav);
  }

  function get_role_name($param=array())
  {
    if(count($param)<=0)
    {
      return $this->db->get("user_roles");
    }
    else {
      return $this->db->get_where("user_roles",$param);
    }
  }

  function get_menu_data_by_role($id_role)
  {
    $sql="
    SELECT DISTINCT  a.id_menu,a.judul,a.parent,
    (SELECT DISTINCT menu.judul FROM menu WHERE menu.id_menu=a.parent ) as parent_name,
    (SELECT user_nav.id_role FROM user_nav WHERE user_nav.id_menu = b.id_menu AND user_nav.id_role=$id_role) as isDuplicate
    FROM user_nav b INNER JOIN menu a
    ON a.id_menu=b.id_menu
    INNER JOIN user_roles
    ON user_roles.id_role=b.id_role
    AND b.id_role!=$id_role
    AND a.page='dashboard'
    ORDER BY `a`.`id_menu` ASC";
    return $this->db->query($sql);
  }

  function check_menu_nav_bound($id_menu)
  {
    $sql="
    SELECT COUNT(user_nav.id_menu) as much_nav,(SELECT DISTINCT menu.judul FROM menu WHERE menu.id_menu=a.parent ) as parent_name FROM
    user_nav INNER JOIN menu a
    ON a.id_menu=user_nav.id_menu
    AND user_nav.id_menu=$id_menu";
    return $this->db->query($sql);
  }

  function secure_menu($context)
  {
    $url_bypass=strtolower($context->uri->segment('1'));
    $id_role=$context->session->userdata('id_role');
    $sql="
    SELECT user_nav.id_role_nav,user_roles.id_role,user_roles.role_name,menu.link,menu.id_konten FROM user_nav
INNER JOIN menu
ON menu.id_menu=user_nav.id_menu
INNER JOIN user_roles
ON user_nav.id_role=user_roles.id_role
AND user_roles.id_role=$id_role
AND menu.link='$url_bypass'";
  return $query=$context->db->query($sql);
  }

}
