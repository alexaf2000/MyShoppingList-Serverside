                                <h3 class="title">Medallas</h3>
								<hr/>
								<div id="res" class="boxy-content">
									{if $tsSave}<div class="notification is-info has-text-centered">Tus cambios han sido guardados.</div>{/if}
									{if $tsError}<div class="notification is-danger has-text-centered">{$tsError}</div>{/if}
									{if !$tsAct}
                                    {if !$tsMedals.medallas}
                                    <div class="notification is-info has-text-centered">No hay medallas.</div>
                                    <input type="button"  onclick="location.href = '{$tsConfig.url}/admin/medals?act=nueva'" value="Agregar nueva medalla" class="button is-primary"/>
                                    {else}
									{foreach from=$tsMedals.medallas item=m}
									<article id="medal_id_{$m.medal_id}" class="columns">
                                    <div class="column is-1"><figure class="image is-32x32 medalla"><img src="{$tsConfig.default}/images/icons/med/{$m.m_image}_32.png"/></figure></div>
                                    <div class="column is-11">
                                      <div class="control">
									  <p><span class="title is-6"><b>T&iacute;tulo: </b></span><span class="title is-6">{$m.m_title}</span> <span class="title is-5 is-pulled-right">#{$m.medal_id}</span></p>
									  <p><span class="title is-6"><b>Descripci&oacute;n </b></span><span class="title is-6">{$m.m_description}</span> </p>
									  <p><span class="title is-6"><b>Tipo: </b></span><span class="title is-6">{if $m.m_type == 1}Usuario{elseif $m.m_type == 2}Post{else}Foto{/if}</span> </p>
									  <p><span class="title is-6"><b>Creador: </b></span><span class="title is-6">{if $m.m_autor == 0}Sistema{else}<a href="{$tsConfig.url}/perfil/{$m.user_name}">{$m.user_name}</a>{/if}</span> 
									  <span class="icon is-small"><b><i class="fa fa-clock-o"></i></b></span><span class="title is-6">{$m.m_date|date_format:"%d/%m/%Y"}</span>
									  </p>
									  </div>
                                        <div>
                                        <a href="{$tsConfig.url}/admin/medals/editar/{$m.medal_id}" class="button is-outlined"><span class="icon is-small"><i class="fa fa-edit"></i></span><span>Editar Medalla</span></a>
										<a onclick="admin.medallas.asignar({$m.medal_id}); return false" class="button is-outlined"><span class="icon is-small"><i class="fa fa-check-square"></i></span><span>Asignar Medalla</span></a>
                                        <a onclick="admin.medallas.borrar({$m.medal_id}); return false" class="button is-outlined"><span class="icon is-small"><i class="fa fa-trash"></i></span><span>Borrar Medalla</span></a>
                                       
									   </div>
                                    </div>
                                    </article>
									<hr/>
									{/foreach}
									<table cellpadding="0" cellspacing="0" border="0" class="admin_table table">
										<tfoot>
										<td colspan="9">P&aacute;ginas: {$tsMedals.pages}</td>
										</tfoot>
									</table>
									<hr />
									<input type="button"  onclick="location.href = '{$tsConfig.url}/admin/medals?act=nueva'" value="Agregar nueva medalla" class="button is-primary" style="margin-left:200px;"/>
									<input type="button"  onclick="location.href = '{$tsConfig.url}/admin/medals?act=showassign'" value="Ver medallas asignadas" class="button is-dark" />
                                    {/if}
									{elseif $tsAct == 'showassign'}									
									{foreach from=$tsAsignaciones.asignaciones item=m}
									<article id="assign_id_{$m.id}" class="columns">
                                    <div class="column is-1"><figure class="image is-32x32 medalla"><img src="{$tsConfig.default}/images/icons/med/{$m.m_image}_32.png" class="qtip" title="{$m.m_title}"/></figure></div>
                                    <div class="column is-11">
                                      <div class="control">
									  <p><span class="title is-6"><b>T&iacute;tulo: </b></span><span class="title is-6">{$m.m_title}</span> <span class="title is-5 is-pulled-right">#{$m.id}</span></p>
									  <p><span class="title is-6"><b>Tipo: </b></span><span class="title is-6">{if $m.m_type == 1}Usuario{elseif $m.m_type == 2}Post{else}Foto{/if}</span> </p>
									  <p><span class="title is-6"><b>Asignada: </b></span><span class="title is-6">{if $m.m_type == 1}<a href="{$tsConfig.url}/perfil/{$m.user_name}">@{$m.user_name}</a>{elseif $m.m_type == 2}<a href="{$tsConfig.url}/posts/{$m.c_seo}/{$m.post_id}/{$m.post_title|seo}.html" target="_blank">{$m.post_title}</a>{else}<a href="{$tsConfig.url}/fotos/autor/{$m.foto_id}/{$m.f_title}.html" target="_blank">{$m.f_title}</a>{/if}</span> 
									  <span class="icon is-small"><b><i class="fa fa-clock-o"></i></b></span><span class="title is-6">{$m.m_date|hace:true}</span>
									  </p>
									  </div>
                                     <div>
                                     <a onclick="admin.medallas.borrar_asignacion({$m.id}, {$m.medal_id}); return false" class="button is-outlined"><span class="icon is-small"><i class="fa fa-trash"></i></span><span>Borrar Asignaci&oacute;n</span></a>
                                       
									   </div>
                                    </div>
                                    </article>
									<hr/>
									{/foreach}
								<table cellpadding="0" cellspacing="0" border="0" class="admin_table table">
										<tfoot>
										<td colspan="7">P&aacute;ginas: {$tsAsignaciones.pages}</td>
										</tfoot>
									</table>
									
									{elseif $tsAct == 'nueva' || $tsAct == 'editar'}
									<script type="text/javascript">
										// {literal}
										$(function(){
											$('#med_img').change(function(){
												var cssi = $("#med_img option:selected").css('background');
												$('#c_icon').css({"background" : cssi});
											});
											//
										});
										//{/literal}
									</script>
										<form action="" method="post" autocomplete="off">

											<h4 class="title is-4">{if $tsAct == 'nueva'}Nueva{else}Editar{/if} medalla</h4>
											
												<label class="label" for="med_name">T&iacute;tulo de la medalla:</label>
												<input class="input" type="text" id="med_name" name="med_title" value="{$tsMed.m_title}" />
											<hr/>
											
												<label class="label" for="ai_desc">Descripci&oacute;n:</label>
												<small>Describe el motivo por el cual el contenido gana esta medalla.</small>
												<textarea class="textarea" name="med_desc" id="ai_desc" rows="3" cols="40">{$tsMed.m_description}</textarea>
											<hr/>
                                            
												<label class="label" for="cat_img">Icono de la categor&iacute;a:</label>
												
													<img src="{$tsConfig.images}/space.gif" style="background:url({$tsConfig.default}/images/icons/med/{if $tsMed.m_image}{$tsMed.m_image}{else}{$tsIcons.0}{/if}_32.png) no-repeat left center;" width="32" height="32" id="c_icon"/>
													<div class="select">
													<select name="med_img" id="med_img" style="width:164px">
													{foreach from=$tsIcons key=i item=img}
														<option value="{$img}" style="padding:2px 20px 0; background:#FFF url({$tsConfig.url}/themes/default/images/icons/med/{$img}_32.png) no-repeat left center;" {if $tsMed.m_image == $img}selected="selected"{/if}>{$img}</option>
													{/foreach}
													</select>
												    </div>
											<hr/>
											
										<label class="label" for="rSpecial">Condici&oacute;n especial:</label><b>Cuando: </b>
											<label onclick="$('#ai_cond_post').slideUp(); $('#ai_cond_foto').slideUp(); $('#ai_cond_user').slideDown(); $('#ai_cond_user_rango_span').slideDown();"><input name="med_type" type="radio" id="ai_type" value="1" {if $tsMed.m_type == 1}checked{/if} class="radio"/>Usuario</label>
											<label onclick="$('#ai_cond_user').slideUp(); $('#ai_cond_user_rango').slideUp();  $('#ai_cond_foto').slideUp(); $('#ai_cond_post').slideDown();"><input name="med_type" type="radio" id="ay_type" value="2" {if $tsMed.m_type == 2}checked{/if} class="radio"/>Post</label>
											<label onclick="$('#ai_cond_user').slideUp(); $('#ai_cond_user_rango').slideUp();  $('#ai_cond_post').slideUp(); $('#ai_cond_foto').slideDown();"><input name="med_type" type="radio" id="ay_type" value="3" {if $tsMed.m_type == 3}checked{/if} class="radio"/>Foto</label>
										<span>consiga</span>
										
																
												<input class="input" type="text" id="ai_cant" name="med_cant" style="width:30%" maxlength="5" value="{$tsMed.m_cant}" {if $tsMed.m_cond_user == 9} style="display:none;"{/if} />
												<select name="med_cond_user" id="ai_cond_user" style="width:125px;{if $tsMed.m_type != 1}display:none;{/if}" onchange="if($('#ai_cond_user').val() == 9) $('#ai_cond_user_rango').slideDown();  else  $('#ai_cond_user_rango').slideUp();">
													<option value="1"{if $tsMed.m_cond_user == 1} selected{/if}>Puntos</option>
													<option value="2"{if $tsMed.m_cond_user == 2} selected{/if}>Seguidores</option>
													<option value="3"{if $tsMed.m_cond_user == 3} selected{/if}>Siguiendo</option>
													<option value="4"{if $tsMed.m_cond_user == 4} selected{/if}>Comentarios en posts</option>
													<option value="5"{if $tsMed.m_cond_user == 5} selected{/if}>Comentarios en fotos</option>
													<option value="6"{if $tsMed.m_cond_user == 6} selected{/if}>Posts</option>
													<option value="7"{if $tsMed.m_cond_user == 7} selected{/if}>Fotos</option>
													<option value="8"{if $tsMed.m_cond_user == 8} selected{/if}>Medallas</option>
													<option value="9"{if $tsMed.m_cond_user == 9} selected{/if}>Rango</option>
											   </select>
											<select name="med_cond_user_rango" id="ai_cond_user_rango" {if $tsMed.m_type != 1 || $tsMed.m_cond_user != 9}style="display:none;"{/if}  onchange="if($('#ai_cond_user').val() != 9) $('#ai_cond_user_rango').slideUp();">
											{foreach from=$tsRangos item=r}
											<option value="{$r.rango_id}" style="color:#{$r.r_color}" {if $r.rango_id == $tsMed.m_cond_user_rango}selected{/if}>{$r.r_name}</option>
											{/foreach}
											</select>
												<select name="med_cond_post" id="ai_cond_post" style="width:125px;{if $tsMed.m_type != 2}display:none;{/if}">
													<option value="1"{if $tsMed.m_cond_post == 1} selected{/if}>Puntos</option>
													<option value="2"{if $tsMed.m_cond_post == 2} selected{/if}>Seguidores</option>
													<option value="3"{if $tsMed.m_cond_post == 3} selected{/if}>Comentarios</option>
													<option value="4"{if $tsMed.m_cond_post == 4} selected{/if}>Favoritos</option>
													<option value="5"{if $tsMed.m_cond_post == 5} selected{/if}>Denuncias</option>
													<option value="6"{if $tsMed.m_cond_post == 6} selected{/if}>Visitas</option>
													<option value="7"{if $tsMed.m_cond_post == 7} selected{/if}>Medallas</option>
													<option value="8"{if $tsMed.m_cond_post == 8} selected{/if}>veces compartido</option>
												</select>
												<select name="med_cond_foto" id="ai_cond_foto" style="width:125px;{if $tsMed.m_type != 3}display:none;{/if}">
													<option value="1"{if $tsMed.m_cond_foto == 1} selected{/if}>Puntos positivos</option>
													<option value="2"{if $tsMed.m_cond_foto == 2} selected{/if}>Puntos negativos</option>
													<option value="3"{if $tsMed.m_cond_foto == 3} selected{/if}>Comentarios</option>
													<option value="4"{if $tsMed.m_cond_foto == 4} selected{/if}>Visitas</option>
													<option value="5"{if $tsMed.m_cond_foto == 5} selected{/if}>Medallas</option>
												</select>
										
										
											<hr />
										 {if $tsAct == 'nueva'}<p><input type="submit" name="save" value="Crear medalla" class="button is-primary"/></p>{else}<p><input type="submit" name="edit" value="Guardar" class="button is-primary"/>{/if}

										</form>
									{/if}
								</div>