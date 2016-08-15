<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<span style="text-transform:uppercase"><?=$autor->aut_apellidos?></span>, <?=$autor->aut_nombres?>

			<br><br>
			&nbsp;&nbsp;&nbsp;&nbsp;<?=$obra->obr_titulo?> <?php if($obra->obr_subtitulo!=NULL){echo ':'.$obra->obr_subtitulo;}?> / 


			<?=$autor->aut_nombres?> <?=$autor->aut_apellidos?>
	<?php
			if($autores!=FALSE){
			foreach ($autores->result() as $aut) {
				echo ', '.$aut->aut_nombres.' '.$aut->aut_apellidos;
			}
			}
			?>. -- 
			<?php if($obra->obr_pagina!=NULL){ echo 'p.'.$obra->obr_pagina.'.';}?> 
			<br><br>
			&nbsp;&nbsp;&nbsp;&nbsp;En <?php if($obra->obr_titulo_l!=NULL){ echo '<em>'.$obra->obr_titulo_l.'</em>';}?>

			<?php if($obra->obr_nombre_c!=NULL){ echo '/ Coordinado por <span style="text-transform:uppercase">'.$obra->obr_apellido_c.'</span>,'.$obra->obr_nombre_c.'';}?> 
			
			<?php if($obra->obr_ciudad!=NULL){ echo ' .-- '.$obra->obr_ciudad.':'.$obra->obr_editorial.','.$obra->obr_ano;}?> 
			<?php if($obra->obr_volumen!=NULL){ echo ' .-- '.$obra->obr_volumen;}?> 
			<?php if($obra->obr_serie!=NULL){ echo '('.$obra->obr_serie.' '.$obra->obr_ano.')';}?> 


</body>
</html>