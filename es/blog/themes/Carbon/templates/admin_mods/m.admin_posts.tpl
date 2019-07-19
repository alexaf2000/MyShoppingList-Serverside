								   <h3 class="title">Administrar Posts</h3>
								   <hr/>
								<div id="res" class="boxy-content" style="position:relative">
								{if $tsAct == ''}
								{if !$tsAdminPosts.data}
								<div class="phpostAlfa">No hay posts.</div>
								{else}
								<table cellpadding="0" cellspacing="0" border="0" class="admin_table table">
									<thead>
										<th class="is-hidden-touch">ID</th>
										<th>T&iacute;tulo</th>
										<th class="is-hidden-touch">Autor</th>
										<th class="is-hidden-touch">Fecha</th>
										<th><a class="qtip" title="Ordenar por estado ascendente" href="{$tsConfig.url}/admin/posts?o=e&m=a"><</a> Estado <a class="qtip" title="Ordenar por estado descendente" href="{$tsConfig.url}/admin/posts?o=e&m=d">></a></th>
										<th id="moreinfo"><a class="qtip" title="Ordenar por IP ascendente" href="{$tsConfig.url}/admin/posts?o=ip&m=a"><</a> IP <a class="qtip" title="Ordenar por IP descendente" href="{$tsConfig.url}/admin/posts?o=ip&m=d">></a></th>
										<th>Acciones</th>
									</thead>
									<tbody>
										{foreach from=$tsAdminPosts.data item=p}
										<tr id="post_{$p.post_id}">
											<td class="is-hidden-touch">{$p.post_id}</td>
											<td><a href="{$tsConfig.url}/posts/{$p.c_seo}/{$p.post_id}/{$p.post_title|seo}.html" target="_blank">{$p.post_title|truncate:30}</a></td>
											<td class="is-hidden-touch"><a href="{$tsConfig.url}/perfil/{$p.user_name}">{$p.user_name}</a></td>
											<td class="is-hidden-touch">{$p.post_date|hace:true}</td>
											<td id="status_post_{$p.post_id}">{if $p.post_status == 3}<font color="grey">Oculto</font>{elseif $p.post_status == 2}<font color="red">Eliminado</font>{elseif $p.post_status == 1}<font color="purple">En revisi&oacute;n</font>{else}<font color="green">Activo</font>{/if}</td>
   										    <td id="moreinfo1_2"><a href="{$tsConfig.url}/moderacion/buscador/1/1/{$p.post_ip}" class="geoip" target="_blank">{$p.post_ip}</a></td>
											<td class="admin_actions">
												<a href="{$tsConfig.url}/posts/editar/{$p.post_id}"><span class="icon"><i class="fa fa-edit" title="Editar Post"></i></span></a>
												{if $p.post_status == 2}
													<a href="#" onclick="admin.posts.borrar({$p.post_id}); return false"><span class="icon"><i class="fa fa-trash" title="Borrar Post permanentemente"></i></span></a>
												{else}
													<a href="#" onclick="mod.posts.borrar({$p.post_id}, 'posts', null); return false;"><span class="icon"><i class="fa fa-ban" title="Borrar Post"></i></span></a>
												{/if}
											</td>
										</tr>
										{/foreach}
									</tbody>
									<tfoot>
										<td colspan="7">P&aacute;ginas: {$tsAdminPosts.pages}</td>
									</tfoot>
								</table>
								{/if}
								{/if}
                                </div>