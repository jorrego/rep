<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Autores_model extends CI_Model {
	
	public function __construct() {
		parent::__construct();
	}
	
	public function autores_guardar($nombres,$apellidos)
	{
		$this->db->where('username',$username);
		$this->db->where('password',$password);
		$this->db->join('usuarios-datos','usuarios.id=usuarios-datos.us_id');
		$query = $this->db->get('usuarios');
		if($query->num_rows() == 1)
		{
			return $query->row();
		}else{
			$this->session->set_flashdata('usuario_incorrecto','Los datos introducidos son incorrectos');
			redirect(base_url().'ingreso','refresh');
		}
	}
}
