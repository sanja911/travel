<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Rute extends CI_Controller {
	function __construct(){
	parent::__construct();
		$this->load->helper('tglindo_helper');
		$this->load->model('getkod_model');
		$this->getsecurity();
		date_default_timezone_set("Asia/Jakarta");
	}
	function getsecurity($value=''){
		$username = $this->session->userdata('username_admin');
		if (empty($username)) {
			$this->session->sess_destroy();
			redirect('backend/login');
		}
	}
	public function index(){
		$data['title'] = "List Tujuan";
		$data['tujuan'] = $this->db->query("SELECT * FROM tbl_tujuan")->result_array();
		// die(print_r($data));
		$this->load->view('backend/tujuan', $data);
	}
	public function viewrute($id=''){
		$data['title'] = "List Tujuan";
		$data['rute'] = $this->db->query("SELECT * FROM tbl_tujuan WHERE kd_tujuan = '".$id."' ")->row_array();
		// die(print_r($data));
		$this->load->view('backend/view_tujuan', $data);
	}
	public function  deleterute($id=''){
		$data['rute'] = $this->db->query("DELETE tbl_tujuan, FROM tbl_tujuan INNER JOIN tbl_jadwal on tbl_tujuan.kd_tujuan=tbl_jadwal.kd_tujuan WHERE tbl_tujuan.kd_tujuan = '".$id."' "  );
		$this->session->set_flashdata('message', 'swal("Data Berhasil Di Hapus");');
		redirect('backend/rute');
	}
	public function tambahtujuan(){
		$kode = $this->getkod_model->get_kodtuj();
		$data = array(
			'kota_tujuan' => $this->input->post('tujuan'),
			'kd_tujuan' => $kode,
			'terminal_tujuan' => $this->input->post('terminal'),
			'fasilitas' => $this->input->post('fasilitas')
			 );
		// die(print_r($data));
		$this->db->insert('tbl_tujuan', $data);
		$this->session->set_flashdata('message', 'swal("Data Berhasil Di Tambah");');
		redirect('backend/rute');
	}
}

/* End of file Rute.php */
/* Location: ./application/controllers/backend/Rute.php */
