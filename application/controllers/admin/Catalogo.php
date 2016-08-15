<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Catalogo extends CI_Controller {

    public function __construct() {
        parent::__construct();

        if ($this->session->userdata('logueo') == FALSE) {
            redirect(base_url() . 'login');
        }
        //$this->load->model('escuelas_model');
        //$this->load->model('cursos_model');
        //$this->load->model('sistema_model');
    }

    public function index() {

        /* $data['buscar']=$this->input->post('buscar');
          if($data['buscar']!=NULL){
          $data['resultado']=$this->sistema_model->buscar($data['buscar']);
          }else{
          $data['resultado']=NULL;
          } */

        //$data['contenido'] = 'escritorio_view';
        //$this->load->view('admin/plantilla/principal', $data);
        redirect(base_url() . 'admin/catalogo/registro_nuevo');
    }

    public function registro_nuevo() {
        $this->load->model('Registro_model');
        $data['paises'] = $this->Registro_model->tabla(NULL, NULL, 'paises');
        $data['idiomas'] = $this->Registro_model->tabla(NULL, NULL, 'idiomas');
        $data['contenido'] = 'registro-nuevo_view';
        $this->load->view('admin/plantilla/principal', $data);
    }

    public function registro_guardar() {
        $data['titulo'] = $this->input->post('titulo');
        $data['subtitulo'] = $this->input->post('subtitulo');

        $data['nombre'] = $this->input->post('nombre');
        $data['apellido'] = $this->input->post('apellido');

        $data['editorial'] = $this->input->post('editorial');
        $data['ano'] = $this->input->post('ano');
        $data['edicion'] = $this->input->post('edicion');
        $data['url'] = $this->input->post('url');

        $data['meses'] = $this->input->post('meses');

        $data['titulo_l'] = $this->input->post('titulo_l');
        $data['medio'] = $this->input->post('medio');

        $data['serie'] = $this->input->post('serie');

        $data['ciudad'] = $this->input->post('ciudad');

        $data['volumen'] = $this->input->post('volumen');

        $data['nombrec'] = $this->input->post('nombrec');
        $data['apellidoc'] = $this->input->post('apellidoc');

        $data['fecha'] = date("Y-m-d", strtotime($this->input->post('fecha')));

        $data['paginas'] = $this->input->post('paginas');
        $data['idioma'] = $this->input->post('idioma');
        $data['lugar'] = $this->input->post('lugar');

        $data['resumen'] = $this->input->post('resumen');

        $data['t_prop'] = $this->input->post('t_prop');
        $data['t_per'] = $this->input->post('t_per');
        $data['t_cor'] = $this->input->post('t_cor');
        $data['t_geo'] = $this->input->post('t_geo');

        $this->load->model('Registro_model');

        $this->Registro_model->obra_agregar($data['titulo'],$data['subtitulo'],$data['url'],$data['editorial'],$data['ano'],$data['edicion'],$data['paginas'],$data['idioma'],$data['lugar'],$data['resumen'],$data['fecha'],$data['titulo_l'],$data['serie'],$data['ciudad'],$data['meses'],$data['medio'],$data['volumen'],$data['nombrec'],$data['apellidoc']);

        $registro = $this->Registro_model->ultimo();



        $i=0;
        foreach ($data['nombre'] as $nom) {
            $this->Registro_model->autor_agregar($nom,$data['apellido'][$i],$registro->obr_id);
            $i=$i+1;
        }

        echo $data['titulo'];

        

        if(isset($data['t_prop'])){
            $temas=explode(",", $data['t_prop']);

            foreach($temas as $tema){
                $this->Registro_model->tema_agregar('tprop',$tema,$registro->obr_id);
            }

        }

        if(isset($data['t_per'])){
            $temas=explode(",", $data['t_per']);

            foreach($temas as $tema){
                $this->Registro_model->tema_agregar('tper',$tema,$registro->obr_id);
            }

        }

        if(isset($data['t_cor'])){
            $temas=explode(",", $data['t_cor']);

            foreach($temas as $tema){
                $this->Registro_model->tema_agregar('tcor',$tema,$registro->obr_id);
            }

        }

        if(isset($data['t_geo'])){
            $temas=explode(",", $data['t_geo']);

            foreach($temas as $tema){
                $this->Registro_model->tema_agregar('tgeo',$tema,$registro->obr_id);
            }

        }

        redirect(base_url() . 'admin/catalogo/registro_nuevo');

    }

    public function registro(){
        error_reporting(E_ALL);
ini_set('display_errors', '1');
        $registro=$this->input->get('reg');
        $formato=$this->input->get('for');

        $this->load->model('Registro_model');

        $data['obra']=$this->Registro_model->obra_mostrar($registro);

        $data['autor']=$this->Registro_model->autor_primero($registro);

        $data['autores']=$this->Registro_model->autores_mostrar($registro);

        $data['tper']=$this->Registro_model->temas('tper',$registro);
        $data['tgeo']=$this->Registro_model->temas('tgeo',$registro);
        $data['tprop']=$this->Registro_model->temas('tprop',$registro);
        $data['tcor']=$this->Registro_model->temas('tcor',$registro);

        $this->load->view('admin/aacr2_view', $data);
    }

    

}
