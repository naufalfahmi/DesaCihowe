<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {


	function __construct()
	{
		parent::__construct();
		authentication($this);
		$this->load->model("model_dashboard");
		$this->load->model("model_user");
	}

	public function index()
	{
		$data=dashboard_data($this);
		$data['banyak_user']=$this->model_dashboard->count_user();
		$data['banyak_konten']=$this->model_dashboard->count_konten();
		$param=array("nip"=>$this->session->userdata('nip'));
		$data['usr']=$this->model_user->get_user($param)->row_array();
		$this->template->load('templates/dashboard_template','dashboard/dashboard',$data);
	}
}
