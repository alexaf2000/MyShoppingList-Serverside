                                    <script type="text/javascript">
										var action_menu = '{$tsAction}';
										//{literal} <-- no borrar
										$(function(){
											if(action_menu != '') $('#a_' + action_menu).addClass('active');
											else $('#a_main').addClass('active');
										});
									</script>
                                    {/literal}
									<nav class="menu">
									<p class="menu-label">Men&uacute;</p>
                                    <ul class="menu-list">
									<li><a onclick="$('#a_1').slideToggle();" class="is-active">General <span class="icon is-small is-pulled-right"><i class="fa fa-chevron-circle-down"></i></span></a>
									<ul class="oculto" id="a_1">
                                        <li id="a_main"><span class="cat-title"><a href="{$tsConfig.url}/admin/"><span class="icon is-small"><i class="fa fa-laptop"></i></span> Centro de Administraci&oacute;n</a></span></li>
                                        <li id="a_creditos"><span class="cat-title"><a href="{$tsConfig.url}/admin/creditos"><span class="icon is-small"><i class="fa fa-life-buoy"></i></span> Soporte y Cr&eacute;ditos</a></span></li>
                                    </ul>
									</li></ul>
                                    <ul class="menu-list">
                                    <li><a onclick="$('#a_2').slideToggle();" class="is-active">Configuraci&oacute;n de PHPost <span class="icon is-small is-pulled-right"><i class="fa fa-chevron-circle-down"></i></span></a>
                                        <ul class="oculto" id="a_2">
										<li id="a_configs"><span class="cat-title"><a href="{$tsConfig.url}/admin/configs"><span class="icon is-small"><i class="fa fa-cogs"></i></span> Configuraci&oacute;n </a></span></li>
                                        <li id="a_temas"><span class="cat-title"><a href="{$tsConfig.url}/admin/temas"><span class="icon is-small"><i class="fa fa-paint-brush"></i></span> Temas y apariencia</a></span></li>
                                        <li id="a_news"><span class="cat-title"><a href="{$tsConfig.url}/admin/news"><span class="icon is-small"><i class="fa fa-newspaper-o"></i></span> Noticias</a></span></li>
                                        <li id="a_ads"><span class="cat-title"><a href="{$tsConfig.url}/admin/ads"><span class="icon is-small"><i class="fa fa-dollar"></i></span> Publicidad</a></span></li>
                                    </ul>
								   </li></ul>
                                    <ul class="menu-list">
                                   <li> <a onclick="$('#a_3').slideToggle();" class="is-active">Control de PHPost <span class="icon is-small is-pulled-right"><i class="fa fa-chevron-circle-down"></i></span></a>
								   <ul class="oculto" id="a_3">
                                        <li id="a_medals"><span class="cat-title"><a href="{$tsConfig.url}/admin/medals"><span class="icon is-small"><i class="fa fa-ge"></i></span> Medallas</a></span></li>
                                        <li id="a_afs"><span class="cat-title"><a href="{$tsConfig.url}/admin/afs"><span class="icon is-small"><i class="fa fa-handshake-o"></i></span> Afiliados</a></span></li>
										<li id="a_stats"><span class="cat-title"><a href="{$tsConfig.url}/admin/stats"><span class="icon is-small"><i class="fa fa-bar-chart"></i></span> Estad&iacute;sticas</a></span></li>
                                        <li id="a_blacklist"><span class="cat-title"><a href="{$tsConfig.url}/admin/blacklist"><span class="icon is-small"><i class="fa fa-ban"></i></span> Bloqueos</a></span></li>
                                        <li id="a_badwords"><span class="cat-title"><a href="{$tsConfig.url}/admin/badwords"><span class="icon is-small"><i class="fa fa-legal"></i></span> Censuras</a></span></li>
                                    </ul>
									</li></ul>
                                    <ul class="menu-list">
                                    <li><a onclick="$('#a_4').slideToggle();" class="is-active">Control de Contenido <span class="icon is-small is-pulled-right"><i class="fa fa-chevron-circle-down"></i></span></a>
									<ul class="oculto" id="a_4">
                                        <li id="a_posts"><span class="cat-title"><a href="{$tsConfig.url}/admin/posts"><span class="icon is-small"><i class="fa fa-clone"></i></span> Todos los Posts</a></span></li>
										<li id="a_cats"><span class="cat-title"><a href="{$tsConfig.url}/admin/cats"><span class="icon is-small"><i class="fa fa-folder-open-o"></i></span> Categor&iacute;as</a></span></li>
                                    </ul>
									</li></ul>
                                    <ul class="menu-list">
                                    <li><a onclick="$('#a_5').slideToggle();" class="is-active">Control de Usuarios <span class="icon is-small is-pulled-right"><i class="fa fa-chevron-circle-down"></i></span></a>
									<ul class="oculto" id="a_5">
                                    	<li id="a_users"><span class="cat-title"><a href="{$tsConfig.url}/admin/users"><span class="icon is-small"><i class="fa fa-users"></i></span> Todos los Usuarios</a></span></li>
                                    	<li id="a_sesiones"><span class="cat-title"><a href="{$tsConfig.url}/admin/sesiones"><span class="icon is-small"><i class="fa fa-key"></i></span> Sesiones</a></span></li>
                                    	<li id="a_nicks"><span class="cat-title"><a href="{$tsConfig.url}/admin/nicks"><span class="icon is-small"><i class="fa fa-address-card-o"></i></span> Cambios de Nicks</a></span></li>
                                        <li id="a_rangos"><span class="cat-title"><a href="{$tsConfig.url}/admin/rangos"><span class="icon is-small"><i class="fa fa-bolt"></i></span> Rangos de Usuarios</a></span></li>
                                    </ul>
									</li></ul>
									</nav>