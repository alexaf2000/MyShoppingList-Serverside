                               <h3 class="title">Noticias</h3>
								<hr/>
								<div id="res" class="boxy-content">
								{if $tsSave}<div style="display: block;" class="notification is-success has-text-centered"><span class="icon"><i class="fa fa-info-circle"></i></span><span>Tus cambios han sido guardados.</span></div>{/if}		
								{if $tsDelete == 'true'}<div style="display: block;" class="notification is-danger has-text-centered"><span class="icon"><i class="fa fa-info-trash"></i></span><span>Noticia eliminada.</span></div>{/if}
									{if $tsAct == ''}
									<div class="columns notification is-info">
								<div class="column is-1 has-text-centered">
								<span class="icon is-large"><i class="fa fa-newspaper-o"></i></span>
								</div>
								<div class="column is-11">Si necesitas hacer un comunicado a todos los usuarios en general, desde aqu&iacute; podr&aacute;s administrar tus anuncios y los usuarios sin importar donde se encuentren navegando podr&aacute;n visualizarlos.
                                    </div>
								</div>
									<b>Lista de noticias</b>
									{foreach from=$tsNews item=n}
									<div class="box">
									<p><span class="title is-4"><strong>Noticia:</strong> {$n.not_body} <span class="is-pulled-right"><i>#{$n.not_id}</i></span></span></p>
									<p><strong>Autor:</strong> <a href="{$tsConfig.url}/perfil/{$n.user_name}">{$n.user_name}</a> <small><span class="icon is-small"><i class="fa fa-clock-o"></i></span> {$n.not_date|hace:true}</small></p>
									<p><strong>Estado</strong> <span id="status_noticia_{$n.not_id}">{if $n.not_active == 0}<font color="purple">Inactiva</font>{else}<font color="green">Activa</font>{/if}</span></p>
									<p class="block">
									<a href="{$tsConfig.url}/admin/news/editar/{$n.not_id}" class="button"><span class="icon is-small"><i class="fa fa-edit"></i></span><span>Editar</span></a>
									<a onclick="admin.news.accion({$n.not_id}); return false" class="button"><span class="icon is-small"><i class="fa fa-refresh"></i></span><span>Activar/Desactivar</span></a>
									<a href="{$tsConfig.url}/admin/news?act=borrar&nid={$n.not_id}" class="button"><span class="icon is-small"><i class="fa fa-trash"></i></span><span>Borrar</span></a>
									</p>
									</div>
									{/foreach}
									<hr/>
									<input type="button" onclick="location.href = '{$tsConfig.url}/admin/news/nueva'" class="button is-primary" value="Nueva noticia"/>
									{elseif $tsAct == 'nuevo' || $tsAct == 'editar'}
									<form action="" method="post" autocomplete="off">
										<h3 class="title is-4">{if $tsAct == 'nuevo'}Agregar nueva{else}Editar{/if} noticia</h3>
										
											<label class="label" for="ai_new">Noticia:</label>
											<span>Puedes utilizar los siguentes BBCodes [url], [i] [b] y [u]. El m&aacute;ximo de caracteres permitidos es de <b>190</b>.</span>
											<p class="control"><textarea class="textarea" name="not_body" id="ai_new" rows="3" cols="50">{$tsNew.not_body}</textarea></p>
										
										
											<label class="label" for="ai_not_active">Activar noticia:</label><span>Activar inmediatamente esta noticia en {$tsConfig.titulo}.</span>
											
												<label><input class="radio" name="not_active" type="radio" id="ai_not_active" value="1" {if $tsNew.not_active == 1}checked="checked"{/if} class="radio"/>S&iacute;</label>
												<label><input class="radio" name="not_active" type="radio" id="ai_not_active" value="0" {if $tsNew.not_active != 1}checked="checked"{/if} class="radio"/>No</label>
											
										
										<p><input type="submit" name="save" value="{if $tsAct == 'new'}Agregar noticia{else}Guardar Cambios{/if}" class="button is-primary"/></p>
									</form>
									{elseif $tsAct == 'borrar'}                                   
									<form action="" method="post" id="admin_form" autocomplete="off">									                                    
									<center><font color="red">Noticia eliminada</font>																		
									<hr />									                                    
									<input type="button" name="confirm" style="cursor:pointer;" onclick="location.href = '/admin/news?borrar=true'" value="Volver &#187;" class="button is-primary">									
									{/if}									
								</div>