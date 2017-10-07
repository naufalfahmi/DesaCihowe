<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('model_home');
	 	$this->load->model('model_konten');
	 	$this->load->model('model_kategori_konten');
		$this->load->model('model_slider');
		$this->load->model('model_rw');
		$this->load->model('model_rt');
	}

	public function index()
	{	
		$data['parent_menu']= $this->model_home->get_menu_parent("home");
		$data['slider']=$this->model_slider->get_slider_data()->result();
				$data['konten']=$this->model_konten->get_konten();
		$this->template->load('templates/home_template','home/home',$data);
	}

	
	function konten()
	{
		$data['parent_menu']= $this->model_home->get_menu_parent("home");
		$data['konten']=$this->model_konten->get_konten();
		$this->template->load('templates/home_template','home/konten/konten',$data);
	}
	function detail_konten()
	{
		$data['parent_menu']= $this->model_home->get_menu_parent("home");
		$param=array("id_konten"=>$this->uri->segment(3));
		$data['konten'] = $this->model_konten->get_konten($param)->row_array();
		$this->template->load('templates/home_template','home/konten/detail_konten',$data);
	}

	function detail_slider()
	{
		$data['parent_menu']= $this->model_home->get_menu_parent("home");
		$param=array("id_slider"=>$this->uri->segment(3));
		$data['detail_slider'] = $this->model_slider->get_slider_data($param)->row_array();
		$this->template->load('templates/home_template','home/slider/detail_slider',$data);
	}
	
	function kependudukan()
	{
		$data['parent_menu']= $this->model_home->get_menu_parent("home");
		$data['kependudukan']=$this->model_rt->get_rt();
		$data['rw']=$this->model_rw->get_rw();
		$this->template->load('templates/home_template','home/kependudukan/kependudukan',$data);
	}

	function detail_kependudukan()
	{
		$data['parent_menu']= $this->model_home->get_menu_parent("home");
		$param=array("id_rt"=>$this->uri->segment(3));
		$data['detail_kependudukan'] = $this->model_rt->get_rt1($param)->row_array();
		$this->template->load('templates/home_template','home/kependudukan/detail_kependudukan',$data);
	}

	

}
