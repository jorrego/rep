<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<table>
	<thead>
		<tr>
			<th>Tag</th>
			<th>Ind. 1</th>
			<th>Ind. 2</th>
			<th>Datos del campo</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>003</td>
			<td></td>
			<td></td>
			<td>TARI-Caviedes Torres</td>
		</tr>
		<tr>
			<td>008</td>
			<td></td>
			<td></td>
			<td><?=date("ymd", strtotime($obra->obr_fecha))?>s<?=$obra->obr_ano?>----<?=$obra->obr_lugar?>-----------------<?=$obra->idi_cod?>#</td>
		</tr>
		<tr>
			<td>100</td>
			<td>1</td>
			<td>#</td>
			<td>$a <span style="text-transform:uppercase"><?=$autor->aut_apellidos?></span>, <?=$autor->aut_nombres?></td>
		</tr>
		<tr>
			<td>245</td>
			<td>1</td>
			<td>4</td>
			<td>$a <?=$obra->obr_titulo?> <?php if($obra->obr_subtitulo!=NULL){echo '$b '.$obra->obr_subtitulo;}?>/ 
			$c <?=$autor->aut_nombres.' '.$autor->aut_apellidos?><?php
			if($autores!=FALSE){
			foreach ($autores->result() as $aut) {
				echo ','.$aut->aut_nombres.' '.$aut->aut_apellidos;
			}
			}
			?> 
			<?php if($obra->obr_medio!=NULL){ echo '$h '.$obra->obr_medio;}?> </td>
		</tr>
		<tr>
			<td>520</td>
			<td>#</td>
			<td>#</td>
			<td>$a <?=$obra->obr_resumen?></td>

		</tr>
		<?php
		if($tper!=FALSE){
			foreach ($tper->result() as $per) {
		?>
		<tr>
			<td>600</td>
			<td>1</td>
			<td>#</td>
			<td>$a <?=$per->texto?></td>
		</tr>
		<?php
			}	
		}
		?>

		<?php
		if($tcor!=FALSE){
			foreach ($tcor->result() as $cor) {
		?>
		<tr>
			<td>610</td>
			<td>1</td>
			<td>#</td>
			<td>$a <?=$cor->texto?></td>
		</tr>
		<?php
			}	
		}
		?>

		<?php
		if($tprop!=FALSE){
			foreach ($tprop->result() as $prop) {
		?>
		<tr>
			<td>650</td>
			<td>1</td>
			<td>#</td>
			<td>$a <?=$prop->texto?></td>
		</tr>
		<?php
			}	
		}
		?>

		<?php
		if($tgeo!=FALSE){
			foreach ($tgeo->result() as $geo) {
		?>
		<tr>
			<td>651</td>
			<td>1</td>
			<td>#</td>
			<td>$a <?=$geo->texto?></td>
		</tr>
		<?php
			}	
		}
		?>
		<?php
		if($autores!=FALSE){
			foreach ($autores->result() as $aut) {
		?>
		<tr>
			<td>700</td>
			<td>1</td>
			<td>#</td>
			<td>$a <?=$aut->aut_apellidos.','.$aut->aut_nombres?></td>
		</tr>
		<?php
			}
		}
		?>
		<tr>
			<td>773</td>
			<td>0</td>
			<td>#</td>
			<td>
			<?php if($obra->obr_nombre_c!=NULL){ echo '$c '.$obra->obr_apellido_c.','.$obra->obr_nombre_c.',coord.';}?>
			<?php if($obra->obr_meses!=NULL){ echo '$c '.$obra->obr_meses.','.$obra->obr_ano;}?> 
			<?php if($obra->obr_ciudad!=NULL){ echo '$d '.$obra->obr_ciudad.':'.$obra->obr_editorial.','.$obra->obr_ano;}?>
			<?php if($obra->obr_volumen!=NULL){ echo '$g '.$obra->obr_volumen;}?>  
			<?php if($obra->obr_pagina!=NULL){ echo '$h p.'.$obra->obr_pagina;}?> 
			<?php if($obra->obr_titulo_l!=NULL){ echo '$t '.$obra->obr_titulo_l;}?> 
			</td>
		</tr>

		<?php
		if($obra->obr_url!=NULL){
		?>
		<tr>
			<td>856</td>
			<td>4</td>
			<td>0</td>
			<td>$u <?=$obra->obr_url?></td>
		</tr>
		<?php
		}
		?>
		<tr>
			<td>999</td>
			<td>#</td>
			<td>#</td>
			<td>$a ezect</td>
		</tr>

	</tbody>
</table>
</body>
</html>