                                <h3 class="title">Administrar Estad&iacute;sticas</h3>
								<hr/>
                        		<div id="res" class="columns">
								<div class="class="column is-3"">
        							<div class="panel">
        								<h6 class="panel-heading">Posts <span class="is-pulled-right number">{$tsAdminStats.posts_total} &nbsp;</span></h6 class="panel-heading">
        									<ul>
        											<li class="panel-block"><span class="floatL">&nbsp; Visibles</span><span class="is-pulled-right number">{$tsAdminStats.posts_visibles} &nbsp;</span></li>
        											<li class="panel-block"><span class="floatL">&nbsp; En revisi&oacute;n</span><span class="is-pulled-right number">{$tsAdminStats.posts_revision} &nbsp;</span></li>
        											<li class="panel-block"><span class="floatL">&nbsp; Inactivos</span><span class="is-pulled-right number">{$tsAdminStats.posts_ocultos} &nbsp;</span></li>
        											<li class="panel-block"><span class="floatL">&nbsp; Eliminados</span><span class="is-pulled-right number">{$tsAdminStats.posts_eliminados} &nbsp;</span></li>
                                                    <li class="panel-block"><span class="floatL">&nbsp; Posts compartidos</span><span class="is-pulled-right number">{$tsAdminStats.posts_compartidos} &nbsp;</span></li>	
                                                    <li class="panel-block"><span class="floatL">&nbsp; Posts favoritos</span><span class="is-pulled-right number">{$tsAdminStats.posts_favoritos} &nbsp;</span></li>
        									</ul>
        							</div>

        							<div class="panel">
        								<h6 class="panel-heading">Comentarios en Posts <span class="is-pulled-right number">{$tsAdminStats.comentarios_posts_total} &nbsp;</span></h6 class="panel-heading">
        									<ul>
        											<li class="panel-block"><span class="floatL">&nbsp; Visibles</span><span class="is-pulled-right number">{$tsAdminStats.comentarios_posts_visibles} &nbsp;</span></li>
        											<li class="panel-block"><span class="floatL">&nbsp; En revisi&oacute;n</span><span class="is-pulled-right number">{$tsAdminStats.comentarios_posts_ocultos} &nbsp;</span></li>
        									</ul>
        							</div>
									</div>
									<div class="column is-3">
                                    <div class="panel">
        								<h6 class="panel-heading">Usuarios <span class="is-pulled-right number">{$tsAdminStats.usuarios_total} &nbsp;</span></h6 class="panel-heading">
        									<ul>
        											<li class="panel-block"><span class="floatL">&nbsp; Activos</span><span class="is-pulled-right number">{$tsAdminStats.usuarios_activos} &nbsp;</span></li>
        											<li class="panel-block"><span class="floatL">&nbsp; Inactivos</span><span class="is-pulled-right number">{$tsAdminStats.usuarios_inactivos} &nbsp;</span></li>
        											<li class="panel-block"><span class="floatL">&nbsp; Suspendidos</span><span class="is-pulled-right number">{$tsAdminStats.usuarios_baneados} &nbsp;</span></li>
        									</ul>
        							</div>
        							<div class="panel">
        								<h6 class="panel-heading">Muro <span class="is-pulled-right number">{$tsAdminStats.muro_total} &nbsp;</span></h6 class="panel-heading">
        									<ul>
        											<li class="panel-block"><span class="floatL">&nbsp; Estados</span><span class="is-pulled-right number">{$tsAdminStats.muro_estados} &nbsp;</span></li>
        											<li class="panel-block"><span class="floatL">&nbsp; Comentarios</span><span class="is-pulled-right number">{$tsAdminStats.muro_comentarios} &nbsp;</span></li>
        									</ul>
        							</div>
									</div>
									<div class="column is-3">
                                    <div class="panel">
        								<h6 class="panel-heading">Afiliados <span class="is-pulled-right number">{$tsAdminStats.afiliados_total} &nbsp;</span></h6 class="panel-heading">
        									<ul>
        											<li class="panel-block"><span class="floatL">&nbsp; Activos</span><span class="is-pulled-right number">{$tsAdminStats.afiliados_activos} &nbsp;</span></li>
        											<li class="panel-block"><span class="floatL">&nbsp; Inactivos</span><span class="is-pulled-right number">{$tsAdminStats.afiliados_inactivos} &nbsp;</span></li>
        									</ul>
        							</div>
        							<div class="panel">
        								<h6 class="panel-heading">Medallas <span class="is-pulled-right number">{$tsAdminStats.medallas_total} &nbsp;</span></h6 class="panel-heading">
        									<ul>
        											<li class="panel-block"><span class="floatL">&nbsp; Usuarios</span><span class="is-pulled-right number">{$tsAdminStats.medallas_usuarios} &nbsp;</span></li>
        											<li class="panel-block"><span class="floatL">&nbsp; Posts</span><span class="is-pulled-right number">{$tsAdminStats.medallas_posts} &nbsp;</span></li>
        											<li class="panel-block"><span class="floatL">&nbsp; Fotos</span><span class="is-pulled-right number">{$tsAdminStats.medallas_fotos} &nbsp;</span></li>
                                                    <li class="panel-block"><span class="floatL">&nbsp; Asignadas</span><span class="is-pulled-right number">{$tsAdminStats.medallas_asignadas} &nbsp;</span></li>								
                                            </ul>
        							</div>
									</div>
									<div class="column is-3">
                                    <div class="panel">
        								<h6 class="panel-heading">Seguimiento <span class="is-pulled-right number">{$tsAdminStats.seguidos_total} &nbsp;</span></h6 class="panel-heading">
        									<ul>
        											<li class="panel-block"><span class="floatL">&nbsp; Usuarios</span><span class="is-pulled-right number">{$tsAdminStats.usuarios_follows} &nbsp;</span></li>
        											<li class="panel-block"><span class="floatL">&nbsp; Posts</span><span class="is-pulled-right number">{$tsAdminStats.posts_follows} &nbsp;</span></li>
        									</ul>
        							</div>
        							<div class="panel" >
        								<h6 class="panel-heading">Mensajes <span class="is-pulled-right number">{$tsAdminStats.mensajes_total} &nbsp;</span></h6 class="panel-heading">
        									<ul>
        											<li class="panel-block"><span class="floatL">&nbsp; Eliminados por receptor</span><span class="is-pulled-right number">{$tsAdminStats.mensajes_para_eliminados} &nbsp;</span></li>
        											<li class="panel-block"><span class="floatL">&nbsp; Eliminados por autor</span><span class="is-pulled-right number">{$tsAdminStats.mensajes_de_eliminados} &nbsp;</span></li>							
                                                    <li class="panel-block"><span class="floatL">&nbsp; Respuestas</span><span class="is-pulled-right number">{$tsAdminStats.usuarios_respuestas} &nbsp;</span></li>
                                            </ul>
        							</div>
	                                </div>
                        		</div>