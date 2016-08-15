
<link href="<?= base_url('admin') ?>/assets/plugins/bootstrap-tag/bootstrap-tagsinput.css" rel="stylesheet" type="text/css"/>

<link href="<?= base_url('admin') ?>/assets/plugins/dropzone/css/dropzone.css" rel="stylesheet" type="text/css"/>
<link href="<?= base_url('admin') ?>/assets/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.css" rel="stylesheet" type="text/css"/>
<link href="<?= base_url('admin') ?>/assets/plugins/bootstrap-timepicker/css/bootstrap-timepicker.css" rel="stylesheet" type="text/css" />
<link href="<?= base_url('admin') ?>/assets/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.css" rel="stylesheet" type="text/css" />
<link href="<?= base_url('admin') ?>/assets/plugins/ios-switch/ios7-switch.css" rel="stylesheet" type="text/css" media="screen">


<link href="<?= base_url('admin') ?>/assets/plugins/boostrap-slider/css/slider.css" rel="stylesheet" type="text/css"/>


<!-- BEGIN PAGE CONTAINER-->
<div class="page-content">
    <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
    <div id="portlet-config" class="modal hide">
        <div class="modal-header">
            <button data-dismiss="modal" class="close" type="button"></button>
            <h3>Widget Settings</h3>
        </div>
        <div class="modal-body"> Widget settings form goes here </div>
    </div>
    <div class="clearfix"></div>
    <div class="content">
        <ul class="breadcrumb">
            <li>
                <p>TÚ ESTAS AQUÍ</p>
            </li>
            <li><a href="#" class="active">Nuevo Registro</a> </li>
        </ul>
        <div class="page-title"> <i class="icon-custom-left"></i>
            <h3>Catálogo - <span class="semi-bold">Nuevo registro</span></h3>
        </div>


        <!-- BEGIN FORM OPTIONS-->	  
        <div class="row">
            <form method="post" action="<?= base_url() ?>admin/catalogo/registro_guardar" id="registro">
                <div class="col-md-12">
                    <div class="grid simple">
                        <div class="grid-title no-border">
                            <h4>Área de <span class="semi-bold">Título</span></h4>
                            <div class="tools"> <a href="javascript:;" class="collapse"></a> <a href="javascript:;" class="reload"></a> </div>
                        </div>

                        <div class="grid-body no-border"> <br>
                            <div class="row">
                                

                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <label class="form-label">Título propio</label>
                                        <div class="controls">
                                            <input type="text" name="titulo" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="form-label">Subtítulo</label>
                                        <div class="controls">
                                            <input type="text" name="subtitulo" class="form-control">
                                        </div>
                                    </div>
                                    



                                </div>

                                <div class="col-md-3 col-sm-3 col-xs-3">
                                    <div class="form-group">
                                        <label class="form-label">Fecha de ingreso</label>
                                        <div class="controls">
                                            <div class="input-append success date col-md-12 col-lg-10 no-padding">
                    <input type="text" name="fecha" class="form-control">
                    <span class="add-on"><span class="arrow"></span><i class="fa fa-th"></i></span> </div>



                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-3 col-xs-3">
                                    <div class="form-group">
                                        <label class="form-label">Medio físico</label>
                                        <div class="controls">
                                            <input type="text" name="medio" class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-6 col-xs-6">
                                    <div class="form-group">
                                        <label class="form-label">Dirección electrónica</label>
                                        <div class="controls">
                                            <input type="text" name="url" class="form-control">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="col-md-12">
                    <div class="grid simple">
                        <div class="grid-title no-border">
                            <h4>Área de <span class="semi-bold">Responsabilidad</span></h4>
                            <div class="tools"> <a href="javascript:;" class="collapse"></a> <a href="javascript:;" class="reload"></a> </div>
                        </div>

                        <div class="grid-body no-border"> <br>
                            <div class="row">
                                <div id="autor" class="col-md-12 col-sm-12 col-xs-12">
                                    <input type="hidden" id="orden" value="0">
                                    <script>
                                        function autor_agregar() {
                                            var orden = parseInt($('#orden').val());
                                            var n_orden = orden + 1;
                                            $('#orden').val(n_orden);
                                            var contenido = '<div class="form-group" id="orden' + orden + '"><label class="form-label">Otro autor</label><span class="help"><a onclick="autor_retirar(\'' + orden + '\')">Retirar autor</a></span><div class="row form-row"><div class="col-md-5"><input name="nombre[]" id="form3FirstName" type="text" class="form-control" placeholder="Nombres"></div><div class="col-md-7"><input name="apellido[]" id="form3LastName" type="text" class="form-control" placeholder="Apellidos"></div></div></div>';
                                            $("#autor").append(contenido);
                                        }
                                        function autor_retirar(orden) {
                                            $('#orden' + orden).remove();
                                        }
                                    </script>
                                    <div class="form-group">
                                        <label class="form-label">Autor principal</label>
                                        <span class="help"><a onclick="autor_agregar();">Agregar autor</a></span>
                                        <div class="row form-row">
                                            <div class="col-md-5">
                                                <input name="nombre[]" id="form3FirstName" type="text" class="form-control" placeholder="Nombres">
                                            </div>
                                            <div class="col-md-7">
                                                <input name="apellido[]" id="form3LastName" type="text" class="form-control" placeholder="Apellidos">
                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="col-md-12">
                    <div class="grid simple">
                        <div class="grid-title no-border">
                            <h4>Área de <span class="semi-bold">Edición</span></h4>
                            <div class="tools"> <a href="javascript:;" class="collapse"></a> <a href="javascript:;" class="reload"></a> </div>
                        </div>

                        <div class="grid-body no-border"> <br>
                            <div class="row">
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <label class="form-label">Editorial</label>
                                        <div class="controls">
                                            <input type="text" name="editorial" class="form-control">
                                        </div>
                                    </div>
                                </div>


                                <div class="col-md-3 col-sm-3 col-xs-3">
                                    

                                    <div class="form-group">
                                        <label class="form-label">Ciudad</label>
                                        <div class="controls">
                                            <input type="text" name="ciudad" class="form-control">
                                        </div>
                                    </div>
                                </div>


                                <div class="col-md-3 col-sm-3 col-xs-3">
                                    <div class="form-group">
                                        <label class="form-label">Año</label>
                                        <div class="controls">
                                            <input type="text" name="ano" class="form-control" id="ano">
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-3 col-sm-3 col-xs-3">
                                    <div class="form-group">
                                        <label class="form-label">Meses</label>
                                        <div class="controls">
                                            <input type="text" name="meses" class="form-control">
                                        </div>
                                    </div>
                                </div>



                                <div class="col-md-3 col-sm-3 col-xs-3">
                                    <div class="form-group">
                                        <label class="form-label">Edición</label>
                                        <div class="controls">
                                            <input type="text" name="edicion" placeholder="" class="form-control">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="grid simple">
                        <div class="grid-title no-border">
                            <h4>Área de <span class="semi-bold">Registro Anfitrión</span></h4>
                            <div class="tools"> <a href="javascript:;" class="collapse"></a> <a href="javascript:;" class="reload"></a> </div>
                        </div>

                        <div class="grid-body no-border"> <br>
                            <div class="row">

                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <label class="form-label">Título de la obra</label>
                                        <div class="controls">
                                            <input type="text" name="titulo_l" class="form-control">
                                        </div>
                                    </div>

                                </div>

                                <div id="autor" class="col-md-12 col-sm-12 col-xs-12">
                                    
                                    <div class="form-group">
                                        <label class="form-label">Coordinador</label>
                                        <div class="row form-row">
                                            <div class="col-md-5">
                                                <input name="nombrec" id="form3FirstName" type="text" class="form-control" placeholder="Nombres">
                                            </div>
                                            <div class="col-md-7">
                                                <input name="apellidoc" id="form3LastName" type="text" class="form-control" placeholder="Apellidos">
                                            </div>
                                        </div>
                                    </div>


                                </div>

                                <div class="col-md-6 col-sm-6 col-xs-6">
                                    <div class="form-group">
                                        <label class="form-label">Serie</label>
                                        <div class="controls">
                                            <input type="text" name="serie" class="form-control">
                                        </div>
                                    </div>

                                </div>

                                <div class="col-md-6 col-sm-6 col-xs-6">
                                    <div class="form-group">
                                        <label class="form-label">Volumen</label>
                                        <div class="controls">
                                            <input type="text" name="volumen" class="form-control">
                                        </div>
                                    </div>

                                </div>


                                <div class="col-md-4 col-sm-4 col-xs-4">
                                    <div class="form-group">
                                        <label class="form-label">Páginas</label>
                                        <div class="controls">
                                            <input type="text" name="paginas" class="form-control">
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-4 col-sm-4 col-xs-4">
                                    <div class="form-group">
                                        <label class="form-label">Idioma</label>
                                        <div class="controls">
                                            <select id="source" name="idioma" style="width:100%">
                                                <?php
                                                foreach ($idiomas->result() as $id) {
                                                    ?>
                                                    <option value="<?= $id->idi_id ?>"><?= $id->idi_nombre ?></option>
                                                    <?php
                                                }
                                                ?>
                                            </select>
                                        </div>
                                    </div>


                                </div>
                                <div class="col-md-4 col-sm-4 col-xs-4">
                                    <div class="form-group">
                                        <label class="form-label">Lugar de publicación</label>
                                        <div class="controls">
                                            <input type="text" name="lugar" class="form-control">
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>



                <div class="col-md-12">
                    <div class="grid simple">
                        <div class="grid-title no-border">
                            <h4>Área de <span class="semi-bold">Resumen</span></h4>
                            <div class="tools"> <a href="javascript:;" class="collapse"></a> <a href="javascript:;" class="reload"></a> </div>
                        </div>

                        <div class="grid-body no-border"> <br>
                            <div class="row">
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <label class="form-label">Resumen</label>
                                        <div class="controls">
                                            <textarea name="resumen" placeholder="" class="form-control" rows="10"></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="col-md-12">
                    <div class="grid simple">
                        <div class="grid-title no-border">
                            <h4>Área de <span class="semi-bold">Temas</span></h4>
                            <div class="tools"> <a href="javascript:;" class="collapse"></a> <a href="javascript:;" class="reload"></a> </div>
                        </div>

                        <div class="grid-body no-border"> <br>
                            <div class="row">
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <label class="form-label">Tema propiamente dicho</label>
                                        <div class="controls">
                                            <input class="span12 tagsinput" name="t_prop" type="text" value="" data-role="tagsinput" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="form-label">Persona</label>
                                        <div class="controls">
                                            <input class="span12 tagsinput" name="t_per" type="text" value="" data-role="tagsinput" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="form-label">Corporativo</label>
                                        <div class="controls">
                                            <input class="span12 tagsinput" name="t_cor" type="text" value="" data-role="tagsinput" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="form-label">Geográfico</label>
                                        <div class="controls">
                                            <input class="span12 tagsinput" name="t_geo" type="text" value="" data-role="tagsinput" />
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>


        </div>
        <!-- END FORM OPTIONS-->


        <div class="row">
            <div class="col-md-12">
                <div class="grid simple">

                    <div class="grid-body no-border">

                        <div class="form-actions">
                            <div class="pull-right">
                                <button class="btn btn-danger btn-cons" form="registro" type="submit"><i class="icon-ok"></i> Guardar</button>
                                <button class="btn btn-white btn-cons" type="button">Cancelar</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>	  



        <!-- END PAGE -->
    </div>
</div>

<script src="<?= base_url('admin') ?>/assets/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js" type="text/javascript"></script>

<script src="<?= base_url('admin') ?>/assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.js" type="text/javascript"></script>

<script src="<?= base_url('admin') ?>/assets/plugins/jquery-inputmask/jquery.inputmask.min.js" type="text/javascript"></script>


<script src="<?= base_url('admin') ?>/assets/plugins/jquery-autonumeric/autoNumeric.js" type="text/javascript"></script>


<script src="<?= base_url('admin') ?>/assets/plugins/ios-switch/ios7-switch.js" type="text/javascript"></script>
<script src="<?= base_url('admin') ?>/assets/plugins/bootstrap-wysihtml5/wysihtml5-0.3.0.js" type="text/javascript"></script>
<script src="<?= base_url('admin') ?>/assets/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.js" type="text/javascript"></script>


<script src="<?= base_url('admin') ?>/assets/plugins/bootstrap-tag/bootstrap-tagsinput.min.js" type="text/javascript"></script>

<script src="<?= base_url('admin') ?>/assets/plugins/dropzone/dropzone.min.js" type="text/javascript"></script>

<script src="<?= base_url('admin') ?>/assets/js/form_elements.js" type="text/javascript"></script>


<script>
                                            $(document).ready(function () {

                                                $(function ($) {
                                                    $("#ano").mask("9999");
                                                });
                                                $('.input-append.date').datepicker({
                autoclose: true,
                todayHighlight: true
       });
                                            });
</script>
