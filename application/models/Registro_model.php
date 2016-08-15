<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Registro_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    public function tabla($id, $col, $tabla) {
        if (isset($id)) {
            $this->db->where($col, $id);
        }
        $query = $this->db->get($tabla);
        if ($query->num_rows() > 0) {
            return $query;
        } elseif ($query->num_rows() == 1) {
            return $query->row();
        } else {
            return NULL;
        }
    }
    
    public function obras(){
        $query = $this->db->get('obras');
        return $query;
    }

    public function obra_agregar($titulo, $subtitulo, $url, $editorial, $ano, $edicion, $paginas, $idioma, $lugar, $resumen, $fecha, $titulo_l, $serie, $ciudad, $meses, $medio, $volumen, $nombrec, $apellidoc) {
        $data = array(
            'obr_titulo' => $titulo,
            'obr_subtitulo' => $subtitulo,
            'obr_url' => $url,
            'obr_resumen' => $resumen,
            'obr_editorial' => $editorial,
            'obr_ano' => $ano,
            'obr_edicion' => $edicion,
            'obr_idioma' => $idioma,
            'obr_pagina' => $paginas,
            'obr_lugar' => $lugar,
            'obr_fecha' => $fecha,
            'obr_titulo_l' => $titulo_l,
            'obr_serie' => $serie,
            'obr_ciudad' => $ciudad,
            'obr_meses' => $meses,
            'obr_medio' => $medio,
            'obr_volumen' => $volumen,
            'obr_nombre_c' => $nombrec,
            'obr_apellido_c' => $apellidoc,
        );

        $this->db->insert('obras', $data);
    }

    public function obra_mostrar($id) {
        $this->db->where('obr_id', $id);
        $this->db->join('idiomas', 'idiomas.idi_id = obras.obr_idioma');
        $query = $this->db->get('obras');
        if ($query->num_rows() == 1) {
            return $query->row();
        } else {
            return FALSE;
        }
    }

    public function ultimo() {
        $this->db->select_max('obr_id');
        $query = $this->db->get('obras');
        if ($query->num_rows() == 1) {
            return $query->row();
        } else {
            return FALSE;
        }
    }

    public function autores_mostrar($obra) {
        $this->db->where('aut_obra', $obra);
        $query = $this->db->get('autores', 20, 1);
        if ($query->num_rows() > 0) {
            return $query;
        } else {
            return FALSE;
        }
    }

    public function autor_primero($obra) {

        $this->db->where('aut_obra', $obra);
        $this->db->limit(1);
        $query = $this->db->get('autores');
        if ($query->num_rows() == 1) {
            return $query->row();
        } else {
            return FALSE;
        }
    }

    public function tema_agregar($tabla, $texto, $id) {
        $data = array(
            'texto' => $texto,
            'obra' => $id
        );

        $this->db->insert($tabla, $data);
    }

    public function autor_agregar($nombre, $apellido, $id) {
        $data = array(
            'aut_nombres' => $nombre,
            'aut_apellidos' => $apellido,
            'aut_obra' => $id
        );

        $this->db->insert('autores', $data);
    }

    public function temas($tabla, $obra) {
        $this->db->where('obra', $obra);
        $query = $this->db->get($tabla);
        if ($query->num_rows() > 0) {
            return $query;
        } else {
            return FALSE;
        }
    }

}
