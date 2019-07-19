                                    <h3 class="title">Caracter&iacute;sticas y Opciones</h3>
									<hr/>
                                <div id="res" class="boxy-content">
                                {if $tsSave}
								<div style="display: block;" class="notification is-info has-text-centered" id="no-comments"><span class="icon"><i class="fa fa-info-circle"></i></span> <span>Configuraciones guardadas</span></div>
								{/if}
                                	<form action="" method="post" autocomplete="off">
                                        <h2 class="subtitle is-4">Configuraci&oacute;n del Sitio</h2>
                                             <label class="label" class="label" for="ai_titulo">Nombre del Sitio:</label> 
                                             <p class="control"><input class="input" class="input class="input"" type="text" id="ai_titulo" name="titulo" maxlength="24" value="{$tsConfig.titulo}" /></p>
                                            <hr>
    										 <label class="label" for="ai_slogan">Descripci&oacute;n del Sitio:</label> 
                                             <p class="control"><input class="input" type="text" id="ai_slogan" name="slogan" maxlength="32" value="{$tsConfig.slogan}"/> </p>
                                            <hr>
                                             <label class="label" for="ai_url">Direcci&oacute;n del sitio:</label> 
                                             <p class="control"><input class="input" type="text" id="ai_url" name="url" maxlength="32" value="{$tsConfig.url}" /></p> 
                                            <hr>
                                             <label class="label" for="ai_offline">Modo mantenimiento:</label>
                                                <p class="control">
                                                <label class="radio"><input  name="offline" type="radio" id="ai_offline" value="1" {if $tsConfig.offline == 1}checked="checked"{/if} class="radio"/> S&iacute;</label>
                                                <label class="radio"><input  name="offline" type="radio" id="ai_offline" value="0" {if $tsConfig.offline != 1}checked="checked"{/if} class="radio"/> No</label>
                                                </p>
                                                <p class="control"><input class="input" type="text" name="offline_message" id="ai_offline" value="{$tsConfig.offline_message}" />
												<small>Esto har&aacute; al Sitio inaccesible a los usuarios. Si quiere, tambi&eacute;n puede introducir un breve mensaje (255 caracteres) para mostrar.</small> 
												</p>
                                            <hr/>
                                        
                                            <p class="control">
                                             <label class="label" for="ai_chat">Chatango ID:</label>
                                             <input class="input" type="text" id="ai_chat" name="chat" maxlength="20" value="{$tsConfig.chat_id}" />
											 <small>Por defecto puedes agregar un chat de <a href="http://chatango.com">Chatango</a> para tu web, solo crea tu grupo he ingresa el nombre. (Dejar vac&iacute;o para usar xat)</small> 
											 </p>
                                            <hr/>
										 
										    <p class="control">
                                             <label class="label" for="ai_xat">Xat ID:</label> 
                                             <input class="input" type="text" id="ai_xat" name="xat" maxlength="20" value="{$tsConfig.xat_id}" />  
                                            <small>Por defecto puedes agregar un chat de <a href="http://xat.com">Xat</a> para tu web, solo crea tu grupo he ingresa el nombre.</small>
											</p>
                                        <hr />
                                         
										    <p class="control">
                                             <label class="label" for="ai_edad">Edad requerida:</label>  
                                             <input class="input" type="number" id="ai_edad" name="edad"  maxlength="2" value="{$tsConfig.c_allow_edad}" /> 
                                             <small>A partir de que edad los usuarios pueden registrarse. (A&ntilde;os)</small>
											</p>
										    <hr />
											
											<p class="control">
                                             <label class="label" for="ai_met_welcome">Mensaje de Bienvenida:</label><small id="desc_message_welcome"  {if $tsConfig.c_met_welcome == 0}style="display:none;"{/if}>  <b>[usuario]</b> => Nombre del registrado  <b>[welcome]</b> => Bienvenido/a depende del sexo  <b>[web]</b> => Nombre de esta web  <b>(Se aceptan BBCodes y Smileys)</b></small> 
                                             <div class="select">
											<select id="ai_met_welcome" name="met_welcome" {if $tsConfig.c_met_welcome == 0} onchange="if($('#ai_met_welcome').val() != 0) $('textarea[name=message_welcome]').slideDown(); $('#desc_message_welcome').slideDown();" {/if}>
											<option value="0" {if $tsConfig.c_met_welcome == 0}selected{/if} >No dar bienvenida</option>
						                    <option value="1" {if $tsConfig.c_met_welcome == 1}selected{/if} >Muro</option>
						                    <option value="2" {if $tsConfig.c_met_welcome == 2}selected{/if} >Mensaje privado</option>
						                    <option value="3" {if $tsConfig.c_met_welcome == 3}selected{/if} >Aviso</option>
            				                </select>
											</div>
                                            <textarea class="textarea" name="message_welcome" id="ai_met_welcome" style="{if $tsConfig.c_met_welcome == 0} display:none; {/if}" >{$tsConfig.c_message_welcome}</textarea>
                                            </p>
											<hr/>
                                        
                                            <p class="control">
                                             <label class="label" for="ai_active">Usuario online:</label> 
                                             <input class="input" type="number" id="ai_active" name="active" maxlength="2" value="{$tsConfig.c_last_active}" />  
                                            <small>Tiempo que debe trascurrir para considerar que un usuario est&aacute; en linea. (min)</small>
											</p>
											<hr/>
                                         
                                             <p class="control">
											 <label class="label" for="ai_stats_cache">Estad&iacute;sticas en buffer:</label> 
                                             <input class="input" type="number" id="ai_stats_cache" name="stats_cache" maxlength="2" value="{$tsConfig.c_stats_cache}" /> 
                                            <small>Tiempo que debe trascurrir para actualizar las estad&iacute;sticas del sitio. (min)</small>
											</p>
											<hr/>
                                         
                                             <p class="control">
											 <label class="label" for="ai_sess_ip">Login por IP:</label> 
                                             <p class="control">
                                                <label class="radio"><input name="sess_ip" type="radio" id="ai_sess_ip" value="1" {if $tsConfig.c_allow_sess_ip == 1}checked="checked"{/if} class="radio"/>S&iacute;</label>
                                                <label class="radio"><input name="sess_ip" type="radio" id="ai_sess_ip" value="0" {if $tsConfig.c_allow_sess_ip != 1}checked="checked"{/if} class="radio"/>No</label>
                                             </p>
											 <small>Por seguridad cada que un usuario cambie de IP se le pedir&aacute; loguearse nuevamente.</small>
											 </p>
											 <hr/>
                                        
                                         
										     <label class="label" for="ai_count_guests">Los visitantes suman estad&iacute;sticas</label>                                           
                                             <p class="control">
										     <label class="radio"><input name="count_guests" type="radio" id="ai_count_guests" value="1" {if $tsConfig.c_count_guests == 1}checked="checked"{/if} class="radio"/>S&iacute;</label>                                              
										     <label class="radio"><input name="count_guests" type="radio" id="ai_count_guests" value="0" {if $tsConfig.c_count_guests != 1}checked="checked"{/if} class="radio"/>No</label>
                                             </p>
											 <small>Contar a los visitantes en las estad&iacute;sticas generales.</small>
                                            <hr/>
										
										 
										     <label class="label" for="ai_hits_guest">Los visitantes suman visitas</label>                                           
                                             <p class="control">
										     <label class="radio"><input name="hits_guest" type="radio" id="ai_hits_guest" value="1" {if $tsConfig.c_hits_guest == 1}checked="checked"{/if} class="radio"/>S&iacute;</label>                                              
										     <label class="radio"><input name="hits_guest" type="radio" id="ai_hits_guest" value="0" {if $tsConfig.c_hits_guest != 1}checked="checked"{/if} class="radio"/>No</label>
                                             </p>
											 <small>Contar las visitas de los visitantes en posts.</small>
                                            <hr/>
                                         
                                             <label class="label" for="ai_reg_active">Registro abierto:</label> 
                                             <p class="control">
                                                <label class="radio"><input name="reg_active" type="radio" id="ai_reg_active" value="1" {if $tsConfig.c_reg_active == 1}checked="checked"{/if} class="radio"/>S&iacute;</label>
                                                <label class="radio"><input name="reg_active" type="radio" id="ai_reg_active" value="0" {if $tsConfig.c_reg_active != 1}checked="checked"{/if} class="radio"/>No</label>
                                             </p>
											 <small>Permitir el registro de nuevos usuarios</small>
                                            <hr/>
                                         
                                             <label class="label" for="ai_reg_activate">Activar usuarios:</label> 
                                             <p class="control">
                                                <label class="radio"><input name="reg_activate" type="radio" id="ai_reg_activate" value="1" {if $tsConfig.c_reg_activate == 1}checked="checked"{/if} class="radio"/>S&iacute;</label>
                                                <label class="radio"><input name="reg_activate" type="radio" id="ai_reg_activate" value="0" {if $tsConfig.c_reg_activate != 1}checked="checked"{/if} class="radio"/>No</label>
                                             </p>
											 <small>Activar autom&aacute;ticamente la cuenta de usuario.</small>
                                            <hr/>

                                             <label class="label" for="ai_firma">Firma de usuario:</label> 
											 <p class="control">
                                                <label class="radio"><input name="firma" type="radio" id="ai_firma" value="1" {if $tsConfig.c_allow_firma == 1}checked="checked"{/if} class="radio"/>S&iacute;</label>
												<label class="radio"><input name="firma" type="radio" id="ai_firma" value="0" {if $tsConfig.c_allow_firma != 1}checked="checked"{/if} class="radio"/>No</label>
											 </p>
										    <small>Las firmas de los usuarios son visibles en los post.</small>
                                            <hr/>
                                         
                                             <label class="label" for="ai_upload">Carga externa:</label> 
                                              <p class="control">
                                                <label class="radio"><input name="upload" type="radio" id="ai_upload" value="1" {if $tsConfig.c_allow_upload == 1}checked="checked"{/if} class="radio"/>S&iacute;</label>
                                                <label class="radio"><input name="upload" type="radio" id="ai_upload" value="0" {if $tsConfig.c_allow_upload != 1}checked="checked"{/if} class="radio"/>No</label>
                                            </p>
											<small>Si cuentas con un servidor de pago o la librer&iacute;a CURL puedes subir im&aacute;genes remotamente a imgur.com</small>
                                            <hr/>
										
                                         
                                             <label class="label" for="ai_portal">Activar portal:</label> 
                                             <p class="control">
                                                <label class="radio"><input name="portal" type="radio" id="ai_portal" value="1" {if $tsConfig.c_allow_portal == 1}checked="checked"{/if} class="radio"/>S&iacute;</label>
                                                <label class="radio"><input name="portal" type="radio" id="ai_portal" value="0" {if $tsConfig.c_allow_portal != 1}checked="checked"{/if} class="radio"/>No</label>
                                             </p>
                                            <small>Los usuarios podr&aacute;n tener un inicio perzonalizado.</small>
										    <hr/>
										 
										     <label class="label" for="ai_fotos_private">Secci&oacute;n de fotos oculta</label>                                             
                                             <p class="control">
										      <label class="radio"><input name="fotos_private" type="radio" id="ai_fotos_private" value="1" {if $tsConfig.c_fotos_private == 1}checked="checked"{/if} class="radio"/>S&iacute;</label>                                               
										      <label class="radio"><input name="fotos_private" type="radio" id="ai_fotos_private" value="0" {if $tsConfig.c_fotos_private != 1}checked="checked"{/if} class="radio"/>No</label>                                            
                                             </p>
											 <small>Si est&aacute; activado, los visitantes no podr&aacute;n ver la secci&oacute;n fotos.</small>
                                            <hr/>
										
										 
										     <label class="label" for="ai_see_mod">Vista moderativa amplia</label>                                             
                                             <p class="control">
										      <label class="radio"><input name="see_mod" type="radio" id="ai_see_mod" value="1" {if $tsConfig.c_see_mod == 1}checked="checked"{/if} class="radio"/>S&iacute;</label>                                               
										      <label class="radio"><input name="see_mod" type="radio" id="ai_see_mod" value="0" {if $tsConfig.c_see_mod != 1}checked="checked"{/if} class="radio"/>No</label>                                            
                                             </p>
											 <small>Si est&aacute; activado, el equipo de moderaci&oacute;n podr&aacute; ver, diferenciado por colores, los distintos estados de los posts.</small>
										    <hr/>
										 
										     <label class="label" for="ai_desapprove_post">Revisi&oacute;n de posts tras su publicaci&oacute;n</label>                                             
                                             <p class="control">
										      <label class="radio"><input name="desapprove_post" type="radio" id="ai_desapprove_post" value="1" {if $tsConfig.c_desapprove_post == 1}checked="checked"{/if} class="radio"/>S&iacute;</label>                                               
										      <label class="radio"><input name="desapprove_post" type="radio" id="ai_desapprove_post" value="0" {if $tsConfig.c_desapprove_post != 1}checked="checked"{/if} class="radio"/>No</label>                                            
                                             </p>
											 <small>Si est&aacute; activado, el equipo de moderaci&oacute;n deber&aacute; aprobar un post antes de que &eacute;ste sea publicado.</small>
                                            <hr/>
								
										 
                                             <label class="label" for="ai_keep_points">Mantener los puntos:</label> 
                                             <p class="control">
                                                <label class="radio"><input name="keep_points" type="radio" id="ai_keep_points" value="1" {if $tsConfig.c_keep_points == 1}checked="checked"{/if} class="radio"/>S&iacute;</label>
                                                <label class="radio"><input name="keep_points" type="radio" id="ai_keep_points" value="0" {if $tsConfig.c_keep_points != 1}checked="checked"{/if} class="radio"/>No</label>
                                             </p>
											 <small>Al momento de recargar los puntos, si est&aacute; habilitado se conservar&aacute;n los puntos que el usuario no haya gastado los puntos en el d&iacute;, si est&aacute; deshabilitado, se restablecer&aacute;n a los puntos asignados para cada rango.</small>
                                            <hr/>
                                         
                                             <label class="label" for="ai_live">Notificaciones Live:</label> 
                                             <p class="control">
                                            <label class="radio"><input name="live" type="radio" id="ai_live" value="1" {if $tsConfig.c_allow_live == 1}checked="checked"{/if} class="radio"/>S&iacute;</label>
                                            <label class="radio"><input name="live" type="radio" id="ai_live" value="0" {if $tsConfig.c_allow_live != 1}checked="checked"{/if} class="radio"/>No</label>
                                             </p>
											 <small>Los usuarios podr&aacute;n ver en tiempo real sus notificaciones. (Esta opci&oacute;n puede consumir un poco m&aacute;s de recursos.)</small>
                                            <hr/>
                                         
										    <p class="control">
                                             <label class="label" for="ai_max_nots">M&aacute;ximo de notificaciones:</label> 
                                             <input class="input" type="number" id="ai_max_nots" name="max_nots"  maxlength="3" value="{$tsConfig.c_max_nots}" /> 
                                             <small>Cuantas notificaciones puede recibir un usuario.</small>
											 </p>
                                         </hr>
										  
										     <p class="control">
                                             <label class="label" for="ai_max_acts">M&aacute;ximo de actividades:</label> 
                                             <input class="input" type="number" id="ai_max_acts" name="max_acts" maxlength="3" value="{$tsConfig.c_max_acts}" /> 
											 <small>Cuantas actividades puede registrar un usuario.</small>
                                            </p>
                                            <hr/>
                                         
										    <p class="control">
                                             <label class="label" for="ai_max_post">Posts por p&aacute;gina:</label> 
                                             <input class="input" type="number" id="ai_max_post" name="max_posts" maxlength="3" value="{$tsConfig.c_max_posts}" /> 
											 <small>N&uacute;mero m&aacute;ximo de posts a mostrar en cada p&aacute;gina de la portada.</small>
                                            </p>
										    <hr/>
                                         
										    <p class="control">
                                             <label class="label" for="ai_max_com">Comentarios por post:</label> 
                                             <input class="input" type="number" id="ai_max_com" name="max_com" maxlength="3" value="{$tsConfig.c_max_com}" /> 
                                            <small>N&uacute;mero m&aacute;ximo de comentarios por p&aacute;gina en los post.</small>
											</p>
										    <hr/>
										 
										    <p class="control">
                                             <label class="label" for="ai_allow_points" class="qtip" title="Si introducimos '0', se permitir&aacute; dar los puntos definidos por el rango del usuario.    Si introducimos '-1', se podr&aacute;n dar todos los puntos que el usuario tenga para dar hoy.   Introduciendo un n&uacute;mero superior a 0, todos los usuarios sin importar su rango, tend&aacute;n esa cantidad para dar." >Puntos por post:</label> 
                                             <input class="input" type="number" id="ai_allow_points" name="allow_points" maxlength="3" value="{$tsConfig.c_allow_points}" /> 
                                            <small>N&uacute;mero m&aacute;ximo de puntos que permitimos dar en los posts. </small>
											</p>
                                            <hr/>
											
											
                                             <label class="label" for="ai_sum_p">Los votos suman puntos:</label> 
                                             <p class="control">
                                                <label class="radio"><input name="sump" type="radio" id="ai_sum_p" value="1" {if $tsConfig.c_allow_sump == 1}checked="checked"{/if} class="radio"/>Si</label>
                                                <label class="radio"><input name="sump" type="radio" id="ai_sum_p" value="0" {if $tsConfig.c_allow_sump != 1}checked="checked"{/if} class="radio"/>No</label>
                                             </p>
                                            <small>Cada voto positivo en un comentario es un punto m&aacute;s para el usuario. <strong>Nota:</strong> Los votos negativos no restan puntos</small>
                                            <hr/>
                                         
										 
                                             <label class="label" for="ai_nfu">Cambio de rango:</label> 
                                              <p class="control">
                                                <label class="radio"><input name="newr" type="radio" id="ai_nfu" value="1" {if $tsConfig.c_newr_type == 1}checked="checked"{/if} class="radio"/>Todos sus post</label>
                                                <label class="radio"><input name="newr" type="radio" id="ai_nfu" value="0" {if $tsConfig.c_newr_type != 1}checked="checked"{/if} class="radio"/>Solo en un post</label>
                                             </p>
											 <small>Un usuario sube de rango cuando obtiene los puntos m&iacute;nimos en:</small>
                                        <hr/>
                                        <p class="control"><input type="submit" name="save" value="Guardar Cambios" class="button is-primary is-fullwidth"/></p>
                                    </form>
                                </div>