<!-- BEGIN SIDEBAR -->
  <div class="page-sidebar" id="main-menu"> 
  <!-- BEGIN MINI-PROFILE -->
   <div class="user-info-wrapper">	
	<div class="profile-wrapper">
		<img src="<?=base_url()?>admin/assets/img/profiles/m6HLpB7Q.jpeg"  alt="" data-src="<?=base_url()?>admin/assets/img/profiles/m6HLpB7Q.jpeg" data-src-retina="<?=base_url()?>admin/assets/img/profiles/avatar2x.jpg" width="69" height="69" />
	</div>
    <div class="user-info">
      <div class="greeting">Saludos</div>
      <div class="username"><?=$this->session->userdata('nombres')?> <span class="semi-bold"><?=$this->session->userdata('apellidos')?></span></div>
      <div class="status">Status<a href="<?=base_url()?>admin/#"><div class="status-icon green"></div>Online</a></div>
    </div>
   </div>
  <!-- END MINI-PROFILE -->
   
   <!-- BEGIN SIDEBAR MENU -->	
	<p class="menu-title">BROWSE <span class="pull-right"><a href="javascript:;"><i class="fa fa-refresh"></i></a></span></p>
    <ul>	
      <!--
      <li class="start active "> <a href="<?=base_url()?>admin/index.html"> <i class="icon-custom-home"></i> <span class="title">Escritorio</span> <span class="selected"></span> <span class="badge badge-important pull-right">5</span></a> </li>
	  -->
	  <li class=""> <a href="javascript:;"> <i class="icon-custom-ui"></i> <span class="title">Catálogo</span> <span class="arrow "></span> </a>
        <ul class="sub-menu">
		  <li > <a href="<?=base_url()?>admin/catalogo/registro_nuevo"> Nuevo registro </a> </li>
		  <!--
		  <li > <a href="<?=base_url()?>admin/messages_notifications.html"> Messages & Notifications </a> </li>
		   <li > <a href="<?=base_url()?>admin/icons.html">Icons</a> </li>
		   <li > <a href="<?=base_url()?>admin/buttons.html">Buttons</a> </li>		 
          <li > <a href="<?=base_url()?>admin/tabs_accordian.html"> Tabs & Accordions </a> </li>
          <li > <a href="<?=base_url()?>admin/sliders.html">Sliders</a> </li>
          <li > <a href="<?=base_url()?>admin/group_list.html">Group list </a> </li>
          -->
        </ul>
      </li>
      <!--
	  <li class=""> <a href="<?=base_url()?>admin/email.html"> <i class="fa fa-envelope"></i> <span class="title">Email</span>  <span class=" badge badge-disable pull-right ">203</span></a> </li>      
	  <li class=""> <a href="<?=base_url()?>admin/../frontend/index.html"> <i class="fa fa-flag"></i>  <span class="title">Frontend</span></a></li>      
      <li class=""> <a href="javascript:;"> <i class="icon-custom-ui"></i> <span class="title">UI Elements</span> <span class="arrow "></span> </a>
        <ul class="sub-menu">
		  <li > <a href="<?=base_url()?>admin/typography.html"> Typography </a> </li>
		  <li > <a href="<?=base_url()?>admin/messages_notifications.html"> Messages & Notifications </a> </li>
		   <li > <a href="<?=base_url()?>admin/icons.html">Icons</a> </li>
		   <li > <a href="<?=base_url()?>admin/buttons.html">Buttons</a> </li>		 
          <li > <a href="<?=base_url()?>admin/tabs_accordian.html"> Tabs & Accordions </a> </li>
          <li > <a href="<?=base_url()?>admin/sliders.html">Sliders</a> </li>
          <li > <a href="<?=base_url()?>admin/group_list.html">Group list </a> </li>
        </ul>
      </li>
	  <li class=""> <a href="javascript:;"> <i class="icon-custom-form"></i> <span class="title">Forms</span> <span class="arrow "></span> </a>
        <ul class="sub-menu">
          <li > <a href="<?=base_url()?>admin/form_elements.html">Form Elements </a> </li>
          <li > <a href="<?=base_url()?>admin/form_validations.html">Form Validations</a> </li>
        </ul>
      </li>
      <li class=""> <a href="javascript:;"> <i class="icon-custom-portlets"></i> <span class="title">Grids</span> <span class="arrow "></span> </a>
        <ul class="sub-menu">
          <li > <a href="<?=base_url()?>admin/grids_simple.html">Simple Grids</a> </li>
          <li > <a href="<?=base_url()?>admin/grids_draggable.html">Draggable Grids </a> </li>
        </ul>
      </li>
      <li class=""> <a href="javascript:;"> <i class="icon-custom-thumb"></i> <span class="title">Tables</span> <span class="arrow "></span> </a>
        <ul class="sub-menu">
          <li > <a href="<?=base_url()?>admin/tables.html"> Basic Tables </a> </li>
          <li > <a href="<?=base_url()?>admin/datatables.html"> Data Tables </a> </li>
        </ul>
      </li>
      <li class=""> <a href="javascript:;"> <i class="icon-custom-map"></i> <span class="title">Maps</span> <span class="arrow "></span> </a>
        <ul class="sub-menu">
          <li > <a href="<?=base_url()?>admin/google_map.html"> Google Maps </a> </li>
          <li > <a href="<?=base_url()?>admin/vector_map.html"> Vector Maps </a> </li>
        </ul>
      </li>
      <li class=""> <a href="<?=base_url()?>admin/charts.html"> <i class="icon-custom-chart"></i> <span class="title">Charts</span> </a> </li>    
      <li class=""> <a href="javascript:;"> <i class="icon-custom-extra"></i> <span class="title">Extra</span> <span class="arrow "></span> </a>
        <ul class="sub-menu">
          <li > <a href="<?=base_url()?>admin/user-profile.html"> User Profile </a> </li>
          <li > <a href="<?=base_url()?>admin/time_line.html"> Time line </a> </li>
          <li > <a href="<?=base_url()?>admin/support_ticket.html"> Support Ticket </a> </li>
          <li > <a href="<?=base_url()?>admin/gallery.html"> Gallery</a> </li>
		  <li class=""><a href="<?=base_url()?>admin/calender.html"> Calendar</a> </li>
          <li > <a href="<?=base_url()?>admin/search_results.html"> Search Results </a> </li>
          <li > <a href="<?=base_url()?>admin/invoice.html"> Invoice </a> </li>
          <li > <a href="<?=base_url()?>admin/404.html"> 404 Page </a> </li>
          <li > <a href="<?=base_url()?>admin/500.html"> 500 Page </a> </li>
          <li > <a href="<?=base_url()?>admin/blank_template.html"> Blank Page </a> </li>
          <li > <a href="<?=base_url()?>admin/login.html"> Login </a> </li>
          <li > <a href="<?=base_url()?>admin/login_v2.html">Login v2</a> </li>
          <li > <a href="<?=base_url()?>admin/lockscreen.html"> Lockscreen </a> </li>
        </ul>
      </li>
	  <li class=""> <a href="javascript:;"> <i class="fa fa-folder-open"></i> <span class="title">Menu Levels</span> <span class="arrow "></span> </a>
        <ul class="sub-menu">
          <li > <a href="javascript:;"> Level 1 </a> </li>
          <li > <a href="javascript:;">  <span class="title">Level 2</span> <span class="arrow "></span> </a>
			<ul class="sub-menu">
				 <li > <a href="javascript:;"> Sub Menu </a> </li>
				 <li > <a href="<?=base_url()?>admin/ujavascript:;"> Sub Menu </a> </li>
			</ul>
		  </li>
        </ul>
      </li>
	  <li class="hidden-lg hidden-md hidden-xs" id="more-widgets" > <a href="javascript:;"> <i class="fa fa-plus"></i></a> 
		  <ul class="sub-menu">
		  	<li class="side-bar-widgets">
			<p class="menu-title">FOLDER <span class="pull-right"><a href="<?=base_url()?>admin/#" class="create-folder"><i class="icon-plus"></i></a></span></p>
			<ul class="folders" >
				  <li><a href="<?=base_url()?>admin/#"><div class="status-icon green"></div> My quick tasks </a> </li>
				  <li><a href="<?=base_url()?>admin/#"><div class="status-icon red"></div> To do list </a> </li>
				  <li><a href="<?=base_url()?>admin/#"><div class="status-icon blue"></div> Projects </a> </li>
				  <li class="folder-input" style="display:none"><input type="text" placeholder="Name of folder" class="no-boarder folder-name" name="" id="folder-name"></li>
			</ul>
			<p class="menu-title">PROJECTS </p>
				<div class="status-widget">
					<div class="status-widget-wrapper">
						<div class="title">Freelancer<a href="<?=base_url()?>admin/#" class="remove-widget"><i class="icon-custom-cross"></i></a></div>
						<p>Redesign home page</p>
					</div>
				</div>
				<div class="status-widget">
					<div class="status-widget-wrapper">
						<div class="title">envato<a href="<?=base_url()?>admin/#" class="remove-widget"><i class="icon-custom-cross"></i></a></div>
						<p>Statistical report</p>
					</div>
				</div>
			</li>
		</ul>
	  </li> 
	  -->   
    </ul>
    <!--
	<div class="side-bar-widgets">
	<p class="menu-title">FOLDER <span class="pull-right"><a href="<?=base_url()?>admin/#" class="create-folder"> <i class="fa fa-plus"></i></a></span></p>
	<ul class="folders" >
		  <li><a href="<?=base_url()?>admin/#"><div class="status-icon green"></div> My quick tasks </a> </li>
		  <li><a href="<?=base_url()?>admin/#"><div class="status-icon red"></div> To do list </a> </li>
		  <li><a href="<?=base_url()?>admin/#"><div class="status-icon blue"></div> Projects </a> </li>
		  <li class="folder-input" style="display:none"><input type="text" placeholder="Name of folder" class="no-boarder folder-name" name="" ></li>
	</ul>
	<p class="menu-title">PROJECTS </p>
		<div class="status-widget">
			<div class="status-widget-wrapper">
				<div class="title">Freelancer<a href="<?=base_url()?>admin/#" class="remove-widget"><i class="icon-custom-cross"></i></a></div>
				<p>Redesign home page</p>
			</div>
		</div>
		<div class="status-widget">
			<div class="status-widget-wrapper">
				<div class="title">envato<a href="<?=base_url()?>admin/#" class="remove-widget"><i class="icon-custom-cross"></i></a></div>
				<p>Statistical report</p>
			</div>
		</div>
	</div>
	-->
	<a href="<?=base_url()?>admin/#" class="scrollup">Scroll</a>
	<div class="clearfix"></div>
    <!-- END SIDEBAR MENU --> 
  </div>
   <!--
   <div class="footer-widget">		
	<div class="progress transparent progress-small no-radius no-margin">
		<div class="progress-bar progress-bar-success animate-progress-bar" data-percentage="79%" style="width: 79%;"></div>		
	</div>
	<div class="pull-right">
		<div class="details-status">
		<span class="animate-number" data-value="86" data-animation-duration="560">86</span>%
	</div>	
	<a href="<?=base_url()?>admin/lockscreen.html"><i class="fa fa-power-off"></i></a></div>
  </div>
  -->
  <!-- END SIDEBAR --> 