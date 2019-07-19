                                    <h3 class="title">Moderaci&oacute;n de posts</h3>
                                <div id="res" class="boxy-content">
                                {if $tsSave}<div style="display: block;" class="mensajes ok">Tus cambios han sido guardados.</div>{/if}
                                	{if $tsAct == ''}
									<div class="columns notification is-info">
								<div class="column is-1 has-text-centered">
								<span class="icon is-large"><i class="fa fa-warning"></i></span>
								</div>
								<div class="column is-11">Recuerda leer el protocolo para poder moderar los post que han sido denunciados por otros usuarios, si te es posible y se puede editar un post no lo borres, <b>Editalo!</b> 
                                    </div>
								</div>
                                    <hr>
                                    <table cellpadding="0" cellspacing="0" border="0" class="admin_table table">
                                    	<thead>
                                        	<th class="is-hidden-touch">Denuncias</th>
                                            <th>Post</th>
                                            <th class="is-hidden-touch">Fecha</th>
                                            <th>Raz&oacute;n</th>
                                            <th>Acciones</th>
                                        </thead>
                                        <tbody>
                                        	{if $tsReports}{foreach from=$tsReports item=r}
                                            <tr id="report_{$r.post_id}">
                                            	<td class="is-hidden-touch">{$r.total}</td>
                                                <td><a href="{$tsConfig.url}/posts/{$r.c_seo}/{$r.post_id}/{$r.post_title|seo}.html" target="_blank">{$r.post_title|truncate:30}</a></td>
                                                <td class="is-hidden-touch">{$r.d_date|hace:true}</td>
                                                <td>{$tsDenuncias[$r.d_razon]}</td>
                                                <td class="admin_actions">
                                                    <a href="{$tsConfig.url}/moderacion/posts?act=info&obj={$r.post_id}"><span class="icon"><i class="fa fa-tasks" title="Ver Detalles"></i></span></a>
                                                    <a href="#" onclick="mod.posts.view({$r.post_id}); return false;"><span class="icon"><i class="fa fa-eye" title="Ver Post"></i></span></a>
                                                    {if $tsUser->is_admod || $tsUser->permisos.mocdp}<a href="#" onclick="mod.reboot({$r.post_id}, 'posts', 'reboot', false); return false;"><span class="icon"><i class="fa fa-refresh" title="{if $r.post_status == 1}Reactivar Post{else}Desechar denuncias{/if}"></i></span></a>{/if}
                                                    {if $tsUser->is_admod || $tsUser->permisos.moedpo}<a href="{$tsConfig.url}/posts/editar/{$r.post_id}" target="_blank"><span class="icon"><i class="fa fa-edit" title="Editar Post"></i></span></a>{/if}
                                                    {if $tsUser->is_admod || $tsUser->permisos.moep}<a href="#" onclick="mod.posts.borrar({$r.post_id}, false); return false"><span class="icon"><i class="fa fa-times-circle-o" title="Borrar Post"></i></span></a>{/if}
                                                </td>
                                            </tr>
                                            {/foreach}{else}
                                            <tr>
                                                <td colspan="5"><div class="emptyData">No hay post denunciados hasta el momento.</div></td>
                                            </tr>
                                            {/if}
                                        </tbody>
                                        <tfoot>
                                            <th colspan="5">&nbsp;</th>
                                        </tfoot>
                                    </table>
                                    {elseif $tsAct == 'info'}
									 <hr>
                                    <h2>						
                                        <a href="{$tsConfig.url}/posts/{$tsDenuncia.data.c_seo}/{$tsDenuncia.data.post_id}/{$tsDenuncia.data.post_title|seo}.html" target="_blank"><b>{$tsDenuncia.data.post_title}</b></a> de <a href="{$tsConfig.url}/perfil/{$tsDenuncia.data.user_name}">{$tsDenuncia.data.user_name}</a> 
                                        <span class="is-pulled-right admin_actions">
                                            <a href="#" onclick="mod.posts.view({$tsDenuncia.data.post_id}); return false"><i class="fa fa-eye" title="Ver Post"></i></a>
                                            {if $tsUser->is_admod || $tsUser->permisos.mocdp}<a href="#" onclick="mod.reboot({$tsDenuncia.data.post_id}, 'posts', 'reboot', true); return false"><i class="fa fa-refresh" title="{if $tsDenuncia.data.post_status == 1}Reactivar Post{else}Desechar denuncias{/if}"></i></a>{/if}
                                            {if $tsUser->is_admod || $tsUser->permisos.moedpo}<a href="{$tsConfig.url}/posts/editar/{$tsDenuncia.data.post_id}" target="_blank"><i class="fa fa-edit" title="Editar Post"></i></a>{/if}
                                            {if $tsUser->is_admod || $tsUser->permisos.moep}<a href="#" onclick="mod.posts.borrar({$tsDenuncia.data.post_id}, 'posts', true); return false"><i class="fa fa-times-circle-o" title="Borrar Post"></i></a>{/if}
                                        </span>
                                    </h2>
									<hr>
                                    <table cellpadding="0" cellspacing="0" border="0" class="admin_table table">
                                    	<thead>
                                        	<th>Denunciante</th>
                                            <th>Raz&oacute;n</th>
                                            <th>Informaci&oacute;n extra</th>
                                            <th class="is-hidden-touch">Fecha</th>
                                        </thead>
                                        <tbody>
                                        	{foreach from=$tsDenuncia.denun item=d}
                                            <tr>
                                            	<td><a href="{$tsConfig.url}/perfil/{$d.user_name}">{$d.user_name}</a></td>
                                                <td>{$tsDenuncias[$d.d_razon]}</td>
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