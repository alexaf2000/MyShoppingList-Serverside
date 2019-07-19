								   <h3 class="title">Comentarios desaprobados</h3>
								<div id="res" class="boxy-content" style="position:relative">
								{if !$tsComentarios.datos}
									<section class="hero is-info">
								<div class="hero-body">
                                <div class="container"><h1 class="title has-text-centered">No hay comentarios ocultos</h1></div>
                                </div>
                                </section>
								{else}
								<table cellpadding="0" cellspacing="0" border="0" class="admin_table table">
									<thead>
										<th class="is-hidden-touch">ID</th>
										<th class="is-hidden-touch">Autor</th>
										<th>Contenido</th>
										<th>Post</th>
										<th class="is-hidden-touch">Fecha</th>
										<th class="is-hidden-touch">IP</th>
										<th>Acciones</th>
									</thead>
									<tbody>
										{foreach from=$tsComentarios.datos item=c}
										<tr id="div_cmnt_{$c.cid}">
											<td class="is-hidden-touch">{$c.cid}</td>
											<td class="is-hidden-touch"><a href="{$tsConfig.url}/perfil/{$c.user_name}" class="hovercard" uid="{$c.user_id}">{$c.user_name}</a></td>
											<td>{$c.c_body}</td>
											<td><a href="{$tsConfig.url}/posts/{$c.c_seo}/{$c.post_id}/{$c.post_title|seo}.html#pp_{$c.cid}" target="_blank">{$c.post_title}</a></td> 
											<td class="is-hidden-touch">{$c.c_date|hace:true}</td>                
   										    <td class="is-hidden-touch">{$c.c_ip}</td>
											<td class="admin_actions">
												<a href="#" onclick="ocultar_com({$c.cid}, {$c.c_user});"><span class="icon"><i class="fa fa-refresh" title="Reactivar/Ocultar Comentario"></i></span></a>											
												<a href="#" onclick="borrar_com({$c.cid}, {$c.c_user}, {$c.post_id});"><span class="icon"><i class="fa fa-times-circle-o" title="Eliminar comentario"></i></span></a>											
											</td>
										</tr>
										{/foreach}
									</tbody>
									<tfoot>
										<td colspan="7">P&aacute;ginas: {$tsComentarios.pages}</td>
									</tfoot>
								</table>
								{/if}
                                </div>