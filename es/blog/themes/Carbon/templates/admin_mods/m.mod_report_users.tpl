                                    <h3 class="title">Moderaci&oacute;n de usuarios</h3>
                                <div id="res" class="boxy-content">
                                	{if $tsAct == ''}
									<div class="columns notification is-info">
								<div class="column is-1 has-text-centered">
								<span class="icon is-large"><i class="fa fa-ban"></i></span>
								</div>
								<div class="column is-11"> <b>No</b> suspendas a un usuario sin una causa razonable, si no <b>TU</b> podr&iacute;as hacerle compa&ntilde;ia.
                                    </div>
								</div>
                                    <hr>
                                    <table cellpadding="0" cellspacing="0" border="0" class="admin_table table">
                                    	<thead>
                                        	<th class="is-hidden-touch">Denuncias</th>
                                            <th>Usuario</th>
                                            <th class="is-hidden-touch">Fecha</th>
                                            <th>Raz&oacute;n</th>
                                            <th>Acciones</th>
                                        </thead>
                                        <tbody>
                                        	{if $tsReports}{foreach from=$tsReports item=r}
                                            <tr id="report_{$r.obj_id}">
                                            	<td class="is-hidden-touch">{$r.total}</td>
                                                <td><a href="{$tsConfig.url}/perfil/{$r.user_name}" class="hovercard" uid="{$r.obj_id}">{$r.user_name}</a></td>
                                                <td class="is-hidden-touch">{$r.d_date|hace:true}</td>
                                                <td>{$tsDenuncias[$r.d_razon]}</td>
                                                <td class="admin_actions">
                                                    <a href="{$tsConfig.url}/moderacion/users?act=info&obj={$r.obj_id}"><span class="icon"><i class="fa fa-tasks" title="Ver Detalles"></i></span></a>
                                                    <a href="{$tsConfig.url}/perfil/{$r.user_name}" target="_blank"><span class="icon"><i class="fa fa-user-circle-o" title="Ver Perfil"></i></span></a>
                                                    <a href="#" onclick="mod.users.action({$r.obj_id}, 'aviso', false); return false;"><span class="icon"><i class="fa fa-warning" title="Enviar Alerta"></i></span></a>
                                                    {if $tsUser->is_admod || $tsUser->permisos.mosu}<a href="#" onclick="mod.users.action({$r.obj_id}, 'ban', false); return false;"><span class="icon"><i class="fa fa-ban" title="Suspender Usuario"></i></span></a>{/if}
                                                    {if $tsUser->is_admod || $tsUser->permisos.modu}<a href="#" onclick="mod.reboot({$r.obj_id}, 'users', 'reboot', false); return false"><span class="icon"><i class="fa fa-refresh" title="Cancelar denuncias"></i></span></a>{/if}
                                                </td>
                                            </tr>
                                            {/foreach}{else}
                                            <tr>
                                                <td colspan="5"><div class="emptyData">No hay usuarios denunciados hasta el momento.</div></td>
                                            </tr>
                                            {/if}
                                        </tbody>
                                        <tfoot>
                                            <th colspan="5">&nbsp;</th>
                                        </tfoot>
                                    </table>
                                    {elseif $tsAct == 'info'}
                                    <h2>
                                        <a href="{$tsConfig.url}/perfil/{$tsDenuncia.data.user_name}">{$tsDenuncia.data.user_name}</a> 
                                        <span class="is-pulled-right admin_actions">
                                            <a href="#" onclick="mod.users.action({$tsDenuncia.data.user_id}, 'aviso', true); return false;"><i class="fa fa-warning" title="Enviar Advertencia"></i></a>
                                            <a href="#" onclick="mod.users.action({$tsDenuncia.data.user_id}, 'ban', true); return false;"><i class="fa fa-ban" title="Suspender Usuario"></i></a>
                                            <a href="#" onclick="mod.reboot({$tsDenuncia.data.user_id}, 'users', 'reboot', true); return false"><i class="fa fa-refresh" title="Cancelar denuncias"></i></a>
                                        </span>
                                    </h2>
									</hr>
                                    <table cellpadding="0" cellspacing="0" border="0" class="admin_table table">
                                    	<thead>
                                        	<th>Denunciante</th>
                                            <th class="is-hidden-touch">Raz&oacute;n</th>
                                            <th>Informaci&oacute;n extra</th>
                                            <th class="is-hidden-touch">Fecha</th>
                                        </thead>
                                        <tbody>
                                        	{foreach from=$tsDenuncia.denun item=d}
                                            <tr>
                                            	<td><a href="{$tsConfig.url}/perfil/{$d.user_name}">{$d.user_name}</a></td>
                                                <td class="is-hidden-touch">{$tsDenuncias[$d.d_razon]}</td>
                                                <td>{$d.d_extra}</td>
                                                <td class="is-hidden-touch">{$d.d_date|hace:true}</td>
                                            </tr>
                                            {/foreach}
                                        </tbody>
                                        <tfoot>
                                            <th colspan="5">&nbsp;</th>
                                        </tfoot>
                                    </table>
                                    {/if}
                                </div>