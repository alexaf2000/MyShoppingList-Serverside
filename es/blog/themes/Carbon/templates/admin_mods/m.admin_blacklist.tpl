                                <h3 class="title">Administrar Lista Negra</h3>
								<hr/>
                                <div id="res" class="boxy-content">
                                {if $tsSave}<div style="display: block;" class="notification is-info has-text-centered">Tus cambios han sido guardados.</div>{/if}
                                {if $tsError}<div class="notification is-danger has-text-centered">{$tsError}</div>{/if}
                                {if !$tsAct}
								{if !$tsBlackList.data}
                                <div class="notification is-info has-text-centered">No hay nada en tu lista negra.</div>
                                <input type="button"  onclick="location.href = '{$tsConfig.url}/admin/blacklist?act=nuevo'" value="Agregar nuevo bloqueo" class="button is-dark"/>
                                {else}
                                <table cellpadding="0" cellspacing="0" border="0" class="admin_table table">
                                    	<thead>
                                        	<th class="is-hidden-touch">ID</th>
                                            <th class="is-hidden-touch">Tipo</th>
                                            <th>Texto</th>
											<th>Raz&oacute;n</th>
                                            <th class="is-hidden-touch">Autor</th>
                                            <th class="is-hidden-touch">Fecha</th>
                                            <th>Acciones</th>
                                        </thead>
                                        <tbody>{foreach from=$tsBlackList.data item=b}
                                        	<tr id="block_{$b.id}">
                                                <td class="is-hidden-touch">{$b.id}</td>
                                                <td class="is-hidden-touch">{if $b.type == 1}IP{elseif $b.type == 2}Email{elseif $b.type == 3}Proveedor{elseif $b.type == 4}Nombre{else}Indefinido{/if}</td>
                                                <td>{$b.value}</td>
                                                <td>{$b.reason}</td>
                                                <td class="is-hidden-touch"><a href="{$tsConfig.url}/perfil/{$b.user_name}">{$b.user_name}</a></td>
                                                <td class="is-hidden-touch">{$b.date|hace}</td>
												<td class="admin_actions">
                                                    <a href="{$tsConfig.url}/admin/blacklist?act=editar&id={$b.id}"><span class="icon"><i class="fa fa-edit" title="Editar"></i></span></a>
                                                    <a href="#" onclick="admin.blacklist.borrar({$b.id}); return false"><span class="icon"><i class="fa fa-trash" title="Eliminar"></i></span></a>
                                                </td>
                                            </tr>{/foreach}
                                        </tbody>
                                        <tfoot>
										<td colspan="7">P&aacute;ginas: {$tsBlackList.pages}</td>
										</tfoot>
                                    </table>
									<br />
                                <input type="button"  onclick="location.href = '{$tsConfig.url}/admin/blacklist?act=nuevo'" value="Agregar nuevo bloqueo" class="button is-dark"/>
                                {/if}
								{elseif $tsAct == 'editar' || $tsAct == 'nuevo'}
										<form action="" method="post" autocomplete="off">
				
											<h4 class="title is-4">{if $tsAct == 'editar'}Editar{else}Agregar{/if} bloqueo</h4>
											<div class="notification is-info has-text-centered" id="no-comments"><span class="icon"><i class="fa fa-info-circle"></i></span> <span>Para bloquear correos masivos como ejemplo@yopmail.com, seleccione "proveedor de correo" e introduzca yopmail.com en valor.</span></div>
											
												<label class="label" for="b_type">Tipo:</label>
												<div class="select">
                                                    <select name="type" id="b_type">
														<option value="1" {if $tsBL.type == 1}selected{/if}>IP</option>
                                                        <option value="2" {if $tsBL.type == 2}selected{/if}>Email concreto</option>
                                                        <option value="3" {if $tsBL.type == 3}selected{/if}>Proveedor de correo</option>
                                                        <option value="4" {if $tsBL.type == 4}selected{/if}>Nombre</option>
													</select>
                                                </div>
											<hr />
											
												<label class="label" for="b_value">Valor:</label>
												<input class="input" type="text" id="b_value" name="value" value="{$tsBL.value}" />
											
                                            {if $tsAct == 'nuevo'}
											<hr />
												<label class="label" for="b_reason">Raz&oacute;n:</label><span>Indica el motivo por el cual quiere agregarlo a la lista negra.</span>
												<textarea class="textarea" name="reason" id="b_reason" rows="3" cols="40">{$tsBL.reason}</textarea>
											
                                            {/if}
											<hr />
										 <p><input type="submit" name="{if $tsAct == 'editar'}edit{else}new{/if}" value="{if $tsAct == 'editar'}Guardar{else}Agregar{/if}" class="button is-primary"/>
										</form>
										{/if}
</div>