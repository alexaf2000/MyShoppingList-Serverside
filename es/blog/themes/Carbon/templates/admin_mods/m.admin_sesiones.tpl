                                <h3 class="title">Administrar Sesiones</h3>
								<hr/>
								<div id="res" class="boxy-content" style="position:relative">
								{if !$tsAct}
								{if !$tsAdminSessions.data}
								<div class="notification is-info has-text-centered">No hay usuarios o visitantes conectados</div>
								{else}
								<table cellpadding="0" cellspacing="0" border="0" class="admin_table table">
									<thead>
										<th class="is-hidden-touch">ID</th>
										<th>Usuario</th>
										<th>IP</th>
										<th class="is-hidden-touch">Fecha</th>
										<th class="is-hidden-touch">Auto login</th>
										<th>Acciones</th>
									</thead>
									<tbody>
										{foreach from=$tsAdminSessions.data item=s}
										<tr id="sesion_{$s.session_id}">
											<td class="is-hidden-touch">{$s.session_id}</td>
											<td align="left">{if $s.user_name}<a href="{$tsConfig.url}/perfil/{$s.user_name}">{$s.user_name}</a>{else} Visitante{/if}</td>
											<td ><a href="{$tsConfig.url}/moderacion/buscador/1/1/{$s.session_ip}" class="geoip" target="_blank">{$s.session_ip}</a></td>
											<td class="is-hidden-touch">{$s.session_time|hace:true}</td>
											<td class="is-hidden-touch">{if $s.session_autologin == 0}<font color="red">NO</font>{else}<font color="green">S&Iacute;</font>{/if}</td>
											<td class="admin_actions">
                                                <a href="#" onclick="admin.sesiones.borrar('{$s.session_id}'); return false"><span class="icon"><i class="fa fa-power-off" title="Cerrar sesi&oacute;n de {if $s.user_name}{$s.user_name}{else}este visitante{/if}"></i></span></a>
											</td>
										</tr>
										{/foreach}
									</tbody>
									<tfoot>
										<td colspan="7">P&aacute;ginas: {$tsAdminSessions.pages}</td>
									</tfoot>
								</table>
								{/if}
								{/if}
								</div>