<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model("model_login");
	}

	public function index()
	{
		$this->load->view('dashboard/login');
	}

	public function verification()
	{
		$username= $this->input->post('username');
		$password= $this->input->post('password');

		$user_login_data=array(
			'username'=>$username,
			'password'=>md5($password)
		);

		$do_verify=$this->model_login->verification($user_login_data)->num_rows();
		if($do_verify>0)
		{
			$user_data=$this->model_login->get_veified_user_data($username);
			foreach($user_data as $data)
			{
				$data_session=array(
					 "nip"=>$data['nip'],
					 "nama"=>$data['nama'],
					 "tgl_lahir"=>$data['tgl_lahir'],
					 "jenis_kelamin"=>$data['jenis_kelamin'],
					 "no_telp"=>$data['no_telp'],
					 "email"=>$data['email'],
					 "alamat"=>$data['alamat'],
					 "foto"=>$data['foto'],
					 "username"=>$data['username'],
					 "id_role"=>$data['id_role'],
					 "role_name"=>$data['role_name'],
					 "tgl_dibuat"=>$data['tgl_dibuat'],
					'status'=>"login"
				);
			}
			$this->session->set_userdata($data_session);
			redirect(base_url('dashboard'));
		}
		else
		{
			echo "<script>
			alert('Username dan password anda salah !, Silahkan coba lagi.');
			window.location.href='".base_url('login')."';
			</script>";
		}

	}

	public function signout()
	{
		$this->session->sess_destroy();
		redirect(base_url('login'));
	}
}
