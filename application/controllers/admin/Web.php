<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Web extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('Ingreso_model');
        $this->load->library(array('form_validation'));
        $this->load->helper(array('form'));
        //$this->load->database('default');
        $this->data['script'] = NULL;
    }

    public function index() {
        switch ($this->session->userdata('tipo')) {
            case '':
                $data['token'] = $this->token();
                $this->load->view('admin/ingreso_view', $data);
                break;
            case '1':
                redirect(base_url() . 'admin/catalogo');
                break;
            case '2':
                redirect(base_url() . 'admin/catalogo');
                break;
            default:
                $data['token'] = $this->token();
                $this->load->view('admin/ingreso_view', $data);
                break;
        }
    }

    public function token() {
        $token = md5(uniqid(rand(), true));
        $this->session->set_userdata('token', $token);
        return $token;
    }

    public function sesion() {
        /* $username = $this->input->post('login_username');
          $password = sha1($this->input->post('login_pass'));
          echo $username.'|'.$password.'|'.$this->input->post('token');
         */
        if ($this->input->post('token') && $this->input->post('token') == $this->session->userdata('token')) {
            $this->form_validation->set_rules('login_username', 'nombre de usuario', 'required|trim|min_length[2]|max_length[150]');
            $this->form_validation->set_rules('login_pass', 'password', 'required|trim|min_length[5]|max_length[150]');

            //lanzamos mensajes de error si es que los hay
            $this->form_validation->set_message('required', 'El %s es requerido');
            $this->form_validation->set_message('min_length', 'El %s debe tener al menos %s car�cteres');
            $this->form_validation->set_message('max_length', 'El %s debe tener al menos %s car�cteres');
            if ($this->form_validation->run() == FALSE) {
                $this->index();
            } else {
                $username = $this->input->post('login_username');
                $password = sha1($this->input->post('login_pass'));
                $check_user = $this->Ingreso_model->ingreso_usuario($username, $password);
                if ($check_user == \TRUE) {
                    $data = array(
                        'logueo' => TRUE,
                        'id' => $check_user->id,
                        'tipo' => $check_user->tipo,
                        'username' => $check_user->username,
                        'nombres' => $check_user->nombres,
                        'apellidos' => $check_user->apellidos,
                        'escuela' => $check_user->escuela
                    );
                    $this->session->set_userdata($data);
                    $this->index();
                }
            }
        } else {
            echo $this->session->userdata('tipo') . ' es';
            //redirect(base_url().'ingreso');
        }
    }

    public function salir() {
        $this->session->sess_destroy();
        redirect(base_url() . 'admin');
    }

}
