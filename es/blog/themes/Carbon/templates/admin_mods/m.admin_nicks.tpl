									<h3 class="title">Administrar Cambios de Nicks</h3>
									<hr/>
								<div id="res" class="boxy-content" style="position:relative">
								{if !$tsAct}
								{if !$tsAdminNicks.data}
								<div class="notification is-info has-text-centered">No hay cambios esperando aprobaci&oacute;n</div>
								{else}
								<table cellpadding="0" cellspacing="0" border="0" class="admin_table table">
									<thead>
										<th>Nick actual</th>
										<th>Nuevo nick</th>
										<th class="is-hidden-touch">Fecha</th>
										<th class="is-hidden-touch">IP</th>
										<th>Acciones</th>
									</thead>
									<tbody>
										{foreach from=$tsAdminNicks.data item=n}
										<tr id="nick_{$n.id}">
											<td align="left"><a href="{$tsConfig.url}/perfil/{$n.user_name}">{$n.user_name}</a></td>
											<td>{$n.name_2}</td>
											<td class="is-hidden-touch">{$n.time|hace:true}</td>
											<td class="is-hidden-touch"><a href="http://www.geoiptool.com/?IP={$n.ip}" class="geoip" target="_blank">{$n.ip}</a></td>
											<td class="admin_actions">
												<a href="#" onclick="admin.nicks.accion('{$n.id}', 'aprobar'); return false"><span class="icon is-small qtip" title="Aprobar"><i class="fa fa-check-square"></i></span></a>
                                                <a href="#" onclick="admin.nicks.accion('{$n.id}', 'denegar'); return false"><span class="icon is-small qtip" title="Denegar"><i class="fa fa-times-circle"></i></span></a>
											</td>
										</tr>
										{/foreach}
									</tbody>
									<tfoot>
										<td colspan="7">P&aacute;ginas: {$tsAdminNicks.pages}</td>
									</tfoot>
								</table>
								{/if}
								<input type="button"  onclick="location.href = '{$tsConfig.url}/admin/nicks?act=realizados'" value="Ver decisiones tomadas" class="button is-primary" />
								{elseif $tsAct == 'realizados'}
							   {if !$tsAdminNicks.data}
								<div class="notification is-info has-text-centered">No hay cambios hasta ahora</div>
								{else}
								<table cellpadding="0" cellspacing="0" border="0" class="admin_table table">
									<thead>
										<th>Nick antes</th>
										<th>Nick despu&eacute;s</th>
										<th class="is-hidden-touch">Fecha</th>
										<th>Estado</th>
										<th class="is-hidden-touch">IP</th>
									</thead>
									<tbody>
										{foreach from=$tsAdminNicks.data item=n}
										<tr id="nick_{$n.id}">
											<td>{$n.name_1}</td>
											<td>{$n.name_2}</td>
											<td class="is-hidden-touch">{$n.time|hace:true}</td>
											<td>{if $n.estado == 1}<font color="green">Aprobado</font>{else}<font color="red">Cancelado</font>{/if}</td>
											<td class="is-hidden-touch"><a href="http://www.geoiptool.com/?IP={$n.ip}" class="geoip" target="_blank">{$n.ip}</a></td>
										</tr>
										{/foreach}
									</tbody>
									<tfoot>
										<td colspan="7">P&aacute;ginas: {$tsAdminNicks.pages}</td>
									</tfoot>
								</table>
								{/if}
								{/if}
								</div>