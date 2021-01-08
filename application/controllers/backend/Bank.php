<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Bank extends CI_Controller {
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
	$data['title'] = "Link BANK";
 	$data['bank'] = $this->db->query("SELECT * FROM tbl_bank ")->result_array();
		// die(print_r($data));
	$this->load->view('backend/bank', $data);	
	}
	public function editbank($id=""){
	$nasabah_bank = $this->input->post('nasabah');
	$nomrek_bank = $this->input->post('norek');
	$nama_bank = $this->input->post('nama_bank');
	$this->db->query("UPDATE tbl_bank SET nasabah_bank = $nasabah_bank, nama_bank=$nama_bank, nomrek_bank=$nomrek_bank WHERE kd_bank = $id ");
	$this->session->set_flashdata('message', 'swal("Berhasil", "Data Bank Di Simpan", "success");');
	redirect('backend/bank');
	}
	public function tambahbank (){
		$this->form_validation->set_rules('nasabah', 'Nasabah', 'trim|required');
		$this->form_validation->set_rules('norek', 'Norek', 'trim|required|min_length[8]|is_unique[bank.nomrek.bank]',array(
			'required' => 'Email Wajib Di isi.',
			'is_unique' => 'Username Sudah Di Gunakan'
		));
		$this->form_validation->set_rules('nama_bank', 'Nama Bank', 'trim|required',array(
			'required' => 'Nama Bank Wajib Di isi.',
		));
		if ($this->form_validation->run() == false) {
			$data['title'] = "Tambah Bank";
			$this->load->view('backend/bank',$data);
		} else {
			// die(print_r($_POST));
			$kode = $this->getkod_model->get_kodbank();
			$data = array(
				'kd_bank' => $kode,
				'nasabah_bank' => $this->input->post('nasabah'),
				'nomrek_bank'		 => $this->input->post('norek'),
				'nama_bank'		=> $this->input->post('nama_bank'),
				'photo_bank' => $this->input->post('photo_bank')
			);
			$this->db->insert('tbl_bank', $data);
			$this->session->set_flashdata('message', 'swal("Berhasil", "Berhasil Tambah Rekening", "success");');
			redirect('backend/bank');
		}
	}
	public function viewbank($id=""){
	$data['title'] = "Link BANK";
 	$data['bank'] = $this->db->query("SELECT * FROM tbl_bank WHERE kd_bank = '".$id."'")->row_array();
		// die(print_r($data));
	$this->load->view('backend/view_bank', $data);	
	}

}

/* End of file Bank.php */
/* Location: ./application/controllers/backend/Bank.php */
