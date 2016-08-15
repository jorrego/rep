<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<span style="text-transform:uppercase"><?=$autor->aut_apellidos?></span>, <?=$autor->aut_nombres?>
	<?php
			if($autores!=FALSE){
			foreach ($autores->result() as $aut) {
				echo ', <span style="text-transform:uppercase">'.$aut->aut_apellidos.'</span>, '.$aut->aut_nombres;
			}
			}
			?>. <?=$obra->obr_titulo?> <?php if($obra->obr_subtitulo!=NULL){echo ':'.$obra->obr_subtitulo;}?>. 
			<?php if($obra->obr_nombre_c!=NULL){ echo 'En <span style="text-transform:uppercase">'.$obra->obr_apellido_c.'</span>,'.$obra->obr_nombre_c.' (coord.).';}?> 
			<?php if($obra->obr_titulo_l!=NULL){ echo '<em>'.$obra->obr_titulo_l.'</em>.';}?>
			<?php if($obra->obr_ciudad!=NULL){ echo ''.$obra->obr_ciudad.':'.$obra->obr_editorial.','.$obra->obr_ano.'.';}?> 
			<?php if($obra->obr_pagina!=NULL){ echo 'p.'.$obra->obr_pagina.'.';}?> 
			<?php if($obra->obr_serie!=NULL){ echo ''.$obra->obr_serie.'.';}?> 

			<br><br>
			<strong>RESUMEN: </strong><?=$obra->obr_resumen?>

			<br><br>
			<strong>DESCRIPTORES: </strong>
			<?php
				if($tper!=FALSE){
					foreach ($tper->result() as $per) {
				?><?=$per->texto?>/<?php
					}	
				}
				?>

				<?php
				if($tcor!=FALSE){
					foreach ($tcor->result() as $cor) {
				?><?=$cor->texto?>/
				<?php
					}	
				}
				?>

				<?php
				if($tprop!=FALSE){
					foreach ($tprop->result() as $prop) {
				?><?=$prop->texto?>/
				<?php
					}	
				}
				?>

				<?php
				if($tgeo!=FALSE){
					foreach ($tgeo->result() as $geo) {
				?><?=$geo->texto?>/<?php
					}	
				}
				?>
</body>
</html>