<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<div style="border: 1px solid #000;  padding: 15px;">
<?=$obra->obr_codigo;?>
<br><br>
<?php if($obra->obr_nombre_c!=NULL){ echo $obra->obr_apellido_c.', '.$obra->obr_nombre_c.'';}else{?>

	<?=$autor->aut_apellidos?>, <?=$autor->aut_nombres?>
	
	<?php
	}
	?>

			<br><br>
			
			
			<div style="margin-left:20px;">
			&nbsp;&nbsp;&nbsp;&nbsp;<?=$obra->obr_titulo?> <?php if($obra->obr_subtitulo!=NULL){echo ': '.$obra->obr_subtitulo;}?> / 


			<?php if($obra->obr_nombre_c!=NULL){ echo $obra->obr_nombre_c.' '.$obra->obr_apellido_c.',';}?> <?=$autor->aut_nombres?> <?=$autor->aut_apellidos?>
	<?php
			if($autores!=FALSE){
			foreach ($autores->result() as $aut) {
				echo ', '.$aut->aut_nombres.' '.$aut->aut_apellidos;
			}
			}
			?>
			
			<?php if($obra->obr_edicion!=NULL){echo ' .-- '.$obra->obr_edicion;}?>
			<?php if($obra->obr_meses!=NULL){echo ' ('.$obra->obr_meses.' '.$obra->obr_ano.')';}?>
			
			<?php if($obra->obr_ciudad!=NULL){ echo ' .-- '.$obra->obr_ciudad.' : '.$obra->obr_editorial.', '.$obra->obr_ano.'.';}?>
			<br /><br />
			<?php if($obra->obr_pagina!=NULL){ echo '&nbsp;&nbsp;&nbsp;&nbsp;'.$obra->obr_pagina;}?><?php if($obra->obr_serie!=NULL){ echo '--  ('.$obra->obr_serie.', '.$obra->obr_volumen.')';}?>
			<br /><br />
			<?php if($obra->obr_resumen!=NULL){ echo '&nbsp;&nbsp;&nbsp;&nbsp;'.$obra->obr_resumen;}?> 
			
			</div>

</div>
</body>
</html>