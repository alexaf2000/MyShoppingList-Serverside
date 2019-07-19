								   <h3 class="title">Posts en la papelera</h3>
                                 </hr>
								<div id="res" class="boxy-content" style="position:relative">
								{if !$tsPospelera.datos}
								<section class="hero is-info">
								<div class="hero-body">
                                <div class="container"><h1 class="title has-text-centered">No hay posts</h1></div>
                                </div>
                                </section>
								{else}
								<table cellpadding="0" cellspacing="0" border="0" class="admin_table table is-narrow">
									<thead>
										<th>T&iacute;tulo</th>
										<th class="is-hidden-touch">Autor</th>
										<th class="is-hidden-touch">Moderador</th>
										<th>Raz&oacute;n</th>
										<th class="is-hidden-touch">Fecha</th>
										<th class="is-hidden-touch">IP</th>
										<th>Acciones</th>
									</thead>
									<tbody>
										{foreach from=$tsPospelera.datos item=p}
										<tr id="report_{$p.post_id}">
											<td><a href="{$tsConfig.url}/posts/{$p.c_seo}/{$p.post_id}/{$p.post_title|seo}.html" target="_blank"><b>{$p.post_title|truncate:30}</b></a></td>
											<td class="is-hidden-touch"><a href="{$tsConfig.url}/perfil/{$p.user_name}" uid="{$p.user_id}">{$p.user_name}</a></td>
											<td class="is-hidden-touch"><a href="{$tsConfig.url}/perfil/{$p.mod_name}"  uid="{$p.mod}">{$p.mod_name}</a></td>
											<td>{if $p.reason == 'undefined'}Indefinida{else}{$p.reason}{/if}</td>
											<td class="is-hidden-touch">{$p.date|hace:true}</td>
   										    <td class="is-hidden-touch" id="moreinfo1_2">{$p.mod_ip}</td>
											<td class="admin_actions">
                                            <a href="#" onclick="mod.reboot({$p.post_id}, 'posts', 'reboot', false); return false;"><span class="icon"><i class="fa fa-refresh" title="Reactivar Post"></i></span></a>
											</td>
										</tr>
										{/foreach}
									</tbody>
									<tfoot>
										<td colspan="7">P&aacute;ginas: {$tsPospelera.pages}</td>
									</tfoot>
								</table>
								{/if}
                                </div>