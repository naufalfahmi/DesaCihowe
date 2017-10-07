<?php

class Model_user extends CI_Model
{

  function get_user($param=array())
  {
    if(count($param)<=0)
    {
      $query = "SELECT
              user.id_user,
              user.nip,
              user.nama,
              user.tgl_lahir,
              user.jenis_kelamin,
              user.no_telp,
              user.email,
              user.alamat,
              user.foto,
              user.username,
              user.password,
              user.tgl_dibuat,
              user_roles.id_role,
              user_roles.role_name,
              user_roles.role_desc
              FROM user
              INNER JOIN user_roles ON user.id_role = user_roles.id_role
              ORDER BY user.id_user ASC";
    return $this->db->query($query);
    }
    else
    {
      return $this->db->get_where("user",$param);
    }
  }


  function input()
  {
    $config['upload_path'] = './assets/img/user/';
    $config['allowed_types'] = 'gif|jpg|png';
    $this->load->library('upload',$config);
    $this->upload->do_upload();
    $hasil  = $this->upload->data();

    $data = array('nip'            => $this->input->post('nip'),
                  'nama'           => $this->input->post('nama'),
                  'tgl_lahir'      => $this->input->post('tgl_lahir'),
                  'jenis_kelamin'  => $this->input->post('jenis_kelamin'),
                  'no_telp'        => $this->input->post('no_telp'),
                  'email'          => $this->input->post('email'),
                  'alamat'         => $this->input->post('alamat'),
                  'username'       => $this->input->post('username'),
                  'password'       => md5($this->input->post('password')),
                  'foto'           => $hasil['file_name'],
                  'id_role'        => $this->input->post('id_role'));
    $this->db->insert('user',$data);
  }

  function get_old_foto_name($id)
  {
    $param=array("id_user"=>$id);
    $data=$this->db->get_where("user",$param)->result_array();
    foreach ($data as $key)
    {
      $ret=$key['foto'];
    }
    return $ret;
  }

  function edit()
  {
    $config['upload_path']    = "./assets/img/user/";
    $config['allowed_types']  = "gif|jpg|png";
    $this->load->library('upload',$config);
    $this->upload->do_upload();

    $hasil  = $this->upload->data();


    if($this->input->post('password')!=NULL || $this->input->post('password')!="")
    {
      if($hasil['file_name']!=NULL || $hasil['file_name']!="")
      {
        unlink("assets/img/user/".$this->input->post('foto'));
        $data = array('nip'            => $this->input->post('nip'),
                      'nama'           => $this->input->post('nama'),
                      'tgl_lahir'      => $this->input->post('tgl_lahir'),
                      'jenis_kelamin'  => $this->input->post('jenis_kelamin'),
                      'no_telp'        => $this->input->post('no_telp'),
                      'email'          => $this->input->post('email'),
                      'alamat'         => $this->input->post('alamat'),
                      'username'       => $this->input->post('username'),
                      'password'       => md5($this->input->post('password')),
                      'foto'           => $hasil['file_name'],
                      'id_role'        => $this->input->post('id_role'));
      }
      else
      {
        $data = array('nip'            => $this->input->post('nip'),
                      'nama'           => $this->input->post('nama'),
                      'tgl_lahir'      => $this->input->post('tgl_lahir'),
                      'jenis_kelamin'  => $this->input->post('jenis_kelamin'),
                      'no_telp'        => $this->input->post('no_telp'),
                      'email'          => $this->input->post('email'),
                      'alamat'         => $this->input->post('alamat'),
                      'username'       => $this->input->post('username'),
                      'password'       => md5($this->input->post('password')),
                      'id_role'        => $this->input->post('id_role'));
      }
    }
    else
    {
      if($hasil['file_name']!=NULL || $hasil['file_name']!="")
      {
        unlink("assets/img/user/".$this->input->post('foto'));
        $data = array('nip'            => $this->input->post('nip'),
                      'nama'           => $this->input->post('nama'),
                      'tgl_lahir'      => $this->input->post('tgl_lahir'),
                      'jenis_kelamin'  => $this->input->post('jenis_kelamin'),
                      'no_telp'        => $this->input->post('no_telp'),
                      'email'          => $this->input->post('email'),
                      'alamat'         => $this->input->post('alamat'),
                      'username'       => $this->input->post('username'),
                      'foto'           => $hasil['file_name'],
                      'id_role'        => $this->input->post('id_role'));
      }
      else
      {
        $data = array('nip'            => $this->input->post('nip'),
                      'nama'           => $this->input->post('nama'),
                      'tgl_lahir'      => $this->input->post('tgl_lahir'),
                      'jenis_kelamin'  => $this->input->post('jenis_kelamin'),
                      'no_telp'        => $this->input->post('no_telp'),
                      'email'          => $this->input->post('email'),
                      'alamat'         => $this->input->post('alamat'),
                      'username'       => $this->input->post('username'),
                      'id_role'        => $this->input->post('id_role'));
       }
    }

    $this->db->where('id_user', $this->input->post('id'));
    $this->db->update('user',$data);
  }


  function delete($param="")
  {
    unlink("assets/img/user/".$this->get_old_foto_name($this->input->post('id')));
    if($param!="")
    {
      $this->db->where($param);
    }
      $this->db->delete('user');
  }
}
