                        	{if $tsComments.num > 0}
                        	
							{foreach from=$tsComments.data item=c}
                        	
							<div style="padding-left: 10px;" id="div_cmnt_{$c.cid}" class="comentario-post {if $tsPost.autor == $c.c_user}especial1{elseif $c.c_user == $tsUser->uid}especial3{/if}">
                            	
								<span id="citar_comm_{$c.cid}" style="display:none">{$c.c_body}</span>
                                
								<div class="media">
									<div class="media-left">
										<a title="Avatar de {$c.user_name} en {$tsConfig.titulo}" href="{$tsConfig.url}/perfil/{$c.user_name}">
										<figure class="image is-64x64"><img class="round" src="{$tsConfig.url}/files/avatar/{$c.c_user}_120.jpg" alt="Image"></figure>
										</a>
									</div>
                                    
									<div class="media-content" id="pp_{$c.cid}" {if $c.c_status == 1 || !$c.user_activo && $tsUser->is_admod}style="opacity:0.5"{/if} >

										<div class="content">
												<p style="margin-bottom: 0.3em;"><a href="{$tsConfig.url}/perfil/{$c.user_name}" class="nick"><strong>{$c.user_name}</strong></a> {if $tsUser->is_admod}<small>(<span style="color:red;">IP:</span> <a href="{$tsConfig.url}/moderacion/buscador/1/1/{$c.c_ip}" class="geoip" target="_blank">{$c.c_ip}</a>)</small>{/if}
                                                
												<small>{$c.c_date|hace}</small></p>
										<div id="comment-body-{$c.cid}" class="comment-content">
                                        	
											{if $c.c_votos <= -3 || $c.c_status == 1 || !$c.user_activo || $c.user_baneado}<div>Escondido {if $c.c_status == 1}por un moderador{elseif $c.c_votos <= -3}por un puntaje bajo{elseif $c.user_activo == 0}por pertener a una cuenta desactivada{else}por pertenecer a una cuenta baneada{/if}. <a href="#" onclick="$('#hdn_{$c.cid}').slideDown(); $(this).parent().slideUp(); return false;">Click para verlo</a>.</div>
                                            
											<div id="hdn_{$c.cid}" style="display:none">{/if}
                                            
											{$c.c_html}
                                            
											{if $c.c_votos <= -3 || $c.c_status == 1 || !$c.user_activo}</div>{/if}
											
                                        </div>
                                    
									</div>
									
																				{if $tsUser->is_member}
                                            
											<div class="answerOptions level" id="opt_{$c.cid}">
                                            	
												<ul class="level-left" id="ul_cmt_{$c.cid}">
													
													<li class="numbersvotes level-item is-pulled-left" {if $c.c_votos == 0}style="display: none"{/if}>
                            							
														<div class="overview">
                            								
															<span class="{if $c.c_votos >= 0}positivo{else}negativo{/if}" id="votos_total_{$c.cid}">{if $c.c_votos != 0}{if $c.c_votos >= 0}+{/if}{$c.c_votos}{/if}</span>
                            							
														</div>
                            						
													</li>
                                                    
													{if $tsUser->uid != $c.c_user && $c.votado == 0 && ($tsUser->permisos.govpp || $tsUser->permisos.govpn || $tsUser->is_admod)}
                                                    
                                                    {if $tsUser->permisos.govpp || $tsUser->is_admod}
                                                    
													<li class="icon-thumb-up level-item is-pulled-left">
														<a onclick="comentario.votar({$c.cid},1)">
															<span class="icon is-small"><i class="fa fa-thumbs-o-up"></i></span>
                                                        </a>
													</li>
                                                    {/if}
                                                    {if $tsUser->permisos.govpn || $tsUser->is_admod}
													<li class="icon-thumb-down level-item is-pulled-left">
														<a onclick="comentario.votar({$c.cid},-1)">
															<span class="icon is-small"><i class="fa fa-thumbs-o-down"></i></span>
                                                        </a>
													</li>
                                                    {/if}
													{/if}
													{if $tsUser->is_member}
													<li class="answerCitar level-item is-pulled-left">
														<a onclick="citar_comment({$c.cid}, '{$c.user_name}')" title="Citar">
                                                            
															<span class="icon is-small"><i class="fa fa-reply"></i></span> 
														</a>
													</li>
													{if ($c.c_user == $tsUser->uid && $tsUser->permisos.goepc) || $tsUser->is_admod || $tsUser->permisos.moedcopo}
													<li class="level-item is-pulled-left">
														<a onclick="comentario.editar({$c.cid}, 'show')" title="Editar comentario">
                                                            
															<span class="icon is-small"><i class="fa fa-pencil"></i></span>
														</a>
													</li>
													{/if}
													{if ($c.c_user == $tsUser->uid && $tsUser->permisos.godpc) || $tsUser->is_admod || $tsUser->permisos.moecp}
													<li class="iconDelete level-item is-pulled-left">
														<a onclick="borrar_com({$c.cid}, {$c.c_user}, {$c.c_post_id})" title="Borrar">
															<span class="icon is-small"><i class="fa fa-trash"></i></span>
														</a>
													</li>
													{if $tsUser->is_admod || $tsUser->permisos.moaydcp}
													
													<li class="iconHide level-item is-pulled-left">
														<a onclick="ocultar_com({$c.cid}, {$c.c_user});" title="{if $c.c_status == 1}Mostrar/Ocultar{else}Ocultar/Mostrar{/if}">
															<span class="icon is-small"><i class="fa fa-eye-slash"></i></span>
														</a>
													</li>
													{/if}
													{/if}
													{/if}
                                             {if $tsUser->is_member && $tsUser->info.user_id != $c.c_user}

											<li class="enviar-mensaje level-item is-pulled-left"><a title="Enviar Mensaje" href="#" onclick="mensaje.nuevo('{$c.user_name}','','',''); return false"><span class="icon is-small"><i class="fa fa-envelope-o"></i></span></a></li>
                                            
											<li class="bloquear is-pulled-left {if $tsComments.block}des{/if}bloquear_1 level-item"><a title="{if $tsComments.block}Desbloquear{else}Bloquear{/if}" href="javascript:bloquear({$c.c_user}, {if $tsComments.block}false{else}true{/if}, 'comentarios')"><span class="icon is-small"><i class="fa fa-ban"></i></span></a></li>
										{/if}
												</ul>
											</div>
											{/if}
                                 </div>
								</div>
							</div>
							{/foreach}
							{else}
								<div class="notification is-info has-text-centered" id="no-comments"><span class="icon"><i class="fa fa-exclamation-circle"></i></span> <span>Este post no tiene comentarios, S&eacute; el primero!</span></div>
                            
							{/if}
                            
							<!---->
                            
							<div id="nuevos"></div>
                            
							{literal}
                            
							<script type="text/javascript">
                            
							$(function(){
                            
							var zIndexNumber = 99;
                                	
									$('div.avatar-box').each(function(){
                                		
										$(this).css('zIndex', zIndexNumber);
                                		
										zIndexNumber -= 1;
                                	
									});
                            
							});
                            
							</script>
                            
							{/literal}