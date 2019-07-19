								   <h3 class="title">Posts desaprobados</h3>
								<div id="res" class="boxy-content" style="position:relative">                          
								{if !$tsPosts.datos}
								<section class="hero is-info">
								<div class="hero-body">
                                <div class="container"><h1 class="title has-text-centered">No hay posts esperando aprobaci&oacute;n</h1></div>
                                </div>
                                </section>
								{else}
								<table cellpadding="0" cellspacing="0" border="0" class="admin_table table">
									<thead>
										<th>ID</th>
										<th>Post</th>
										<th class="is-hidden-touch">Moderador</th>							
                                        <th class="is-hidden-touch">Raz&oacute;n</th>										
										<th class="is-hidden-touch">Fecha</th>                                                           
										<th class="is-hidden-touch">IP</th>
										<th>Acciones</th>
									</thead>
									<tbody>
										{foreach from=$tsPosts.datos item=p}
										<tr id="report_{$p.post_id}">                                            
											<td>{$p.post_id}</td>
											<td><a href="{$tsConfig.url}/posts/{$p.c_seo}/{$p.post_id}/{$p.post_title|seo}.html#pp_{$p.cid}" target="_blank">{$p.post_title|truncate:30}</a></td> 
											<td class="is-hidden-touch"><a href="{$tsConfig.url}/perfil/{$p.user_name}" uid="{$p.user_id}">{$p.user_name}</a></td>
											<td class="is-hidden-touch">{$p.reason}</td>
											<td class="is-hidden-touch">{$p.date|hace:true}</td> 
											<td class="is-hidden-touch">{$p.mod_ip}</td>                					
											<td class="admin_actions">
													<a href="#" onclick="mod.posts.view({$p.post_id}); return false;"><span class="icon"><i class="fa fa-eye" title="Ver Post"></i></span></a>
													<a href="#" onclick="mod.reboot({$p.post_id}, 'posts', 'reboot', false); return false;"><span class="icon"><i class="fa fa-refresh" title="Reactivar Post"></i></span></a>
													<a href="{$tsConfig.url}/posts/editar/{$p.post_id}" target="_blank"><span class="icon"><i class="fa fa-edit" title="Editar Post"></i></span></a>
													<a href="#" onclick="mod.posts.borrar({$p.post_id}, false); return false"><span class="icon"><i class="fa fa-times-circle-o" title="Borrar Post"></i></span></a>
											</td>
										</tr>
										{/foreach}
									</tbody>
									<tfoot>
										<td colspan="8">P&aacute;ginas: {$tsPosts.pages}</td>
									</tfoot>
								</table>
								{/if}								
                                </div>