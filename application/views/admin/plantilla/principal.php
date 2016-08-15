<?php
		
        $this->load->view('admin/plantilla/inicio');
        $this->load->view('admin/plantilla/cabecera');
        $this->load->view('admin/plantilla/menu');
        //$data['escuelas']=$this->escuelas_model->mostrar();
        //$data['semestres']=$this->cursos_model->semestres();
        //$this->load->view('admin/plantilla/contenido');
        $this->load->view('admin/'.$contenido);
        $this->load->view('admin/plantilla/chat');
        $this->load->view('admin/plantilla/pie');

?>