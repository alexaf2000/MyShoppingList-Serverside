                                    <h3 class="title">Censurar palabras</h3>
									<hr/>
                                <div id="res" class="boxy-content">
                                {if $tsSave}<div style="display: block;" class="notification is-info has-text-centered">Tus cambios han sido guardados.</div>{/if}
                                {if $tsError}<div class="notification is-danger has-text-centered">{$tsError}</div>{/if}
                                {if !$tsAct}
                                {if !$tsBadWords.data}
                                <div class="notification is-info has-text-centered">No hay filtros de palabras</div>
                                {else}
                                <table cellpadding="0" cellspacing="0" border="0"  class="admin_table table">
                                    	<thead>
                                        	<th class="is-hidden-touch">ID</th>
                                            <th class="is-hidden-touch">M&eacute;todo</th>
                                            <th class="is-hidden-touch">Tipo</th>
                                            <th>Antes</th>
											<th>Despu&eacute;s</th>
                                            <th class="is-hidden-touch">Raz&oacute;n</th>
                                            <th class="is-hidden-touch">Autor</th>
                                            <th class="is-hidden-touch">Fecha</th>
                                            <th>Acciones</th>
                                        </thead>
                                        <tbody>{foreach from=$tsBadWords.data item=b}
                                        	<tr id="wid_{$b.wid}">
                                                <td class="is-hidden-touch">{$b.wid}</td>
                                                <td class="is-hidden-touch">{if $b.method == 1}Exacto{else}Parcial{/if}</td>
                                                <td class="is-hidden-touch">{if $b.type == 1}Smiley{else}Texto{/if}</td>
                                                <td>{$b.word}</td>
                                                <td class="is-hidden-touch">{if $b.type == 1}<img src="{$b.swop}" style="max-width:32px; max-height:32px;"/>{else}{$b.swop}{/if}</td>
                                                <td class="is-hidden-touch">{$b.reason}</td>
                                                <td class="is-hidden-touch"><a href="{$tsConfig.url}/perfil/{$b.user_name}">{$b.user_name}</a></td>
                                                <td>{$b.date|hace}</td>
												<td class="admin_actions">
                                                    <a href="{$tsConfig.url}/admin/badwords?act=editar&id={$b.wid}"><span class="icon"><i class="fa fa-edit" title="Editar"></i></span></a>
                                                    <a href="#" onclick="admin.badwords.borrar({$b.wid}); return false"><span class="icon"><i class="fa fa-trash" title="Eliminar"></i></span></a>
                                                </td>
                                            </tr>{/foreach}
                                        </tbody>
                                        <tfoot>
										<td colspan="9">P&aacute;ginas: {$tsBadWords.pages}</td>
										</tfoot>
                                    </table>
                                    {/if}
									<br />
                                <input type="button"  onclick="location.href = '{$tsConfig.url}/admin/badwords?act=nuevo'" value="Agregar nuevo filtro" class="button is-dark"/>
								{elseif $tsAct == 'editar' || $tsAct == 'nuevo'}
										<form action="" method="post" autocomplete="off">
											<h4 class="title is-4">{if $tsAct == 'editar'}Editar{else}Agregar{/if} filtro de palabra</h4>
											<div class="notification is-info has-text-centered" id="no-comments"><span class="icon"><i class="fa fa-info-circle"></i></span> <span>El m&eacute;todo exacto filtra s&oacute;lo palabras completas, mientras que el parcial filtra todas las coincidencias, aunque forme parte de una palabra. Si opta por usar un smiley, introduzca el enlace directo hacia la imagen.</span></div>

												<label class="label" for="bw_before">Antes:</label>
												<input class="input" type="text" id="bw_before" name="before" value="{$tsBW.word}" />
											<hr />
                                            
												<label class="label" for="bw_after">Despu&eacute;s:</label>
												<input class="input" type="text" id="bw_after" name="after" value="{$tsBW.swop}" />
											
                                            <hr />
												
                                                    <label class="label" for="bw_method">M&eacute;todo:</label>
                                                        
                                                            <label><input name="method" type="radio" id="bw_method" value="0" {if $tsBW.method == 0}checked="checked"{/if} class="radio"/> Parcial</label>
                                                            <label><input name="method" type="radio" id="bw_method" value="1" {if $tsBW.method == 1}checked="checked"{/if} class="radio"/> Exacto</label>
                                                     <hr />   
                                                
											
                                            
												
                                                    <label class="label" for="bw_type">Tipo:</label>
                                                        
                                                            <label><input name="type" type="radio" id="bw_type" value="0" {if $tsBW.type == 0}checked{/if} class="radio"/> Texto</label>
                                                            <label><input name="type" type="radio" id="bw_type" value="1" {if $tsBW.type == 1}checked{/if} class="radio"/> Smiley</label>
                                                        
                                                
											
                                            {if $tsAct == 'nuevo'}
											<hr />
												<label class="label" for="bw_reason">Raz&oacute;n:</label><br /><span>Indica el motivo por el cual quiere agregar este filtro.</span>
												<textarea class="textarea" name="reason" id="bw_reason" rows="3" cols="40">{$tsBW.reason}</textarea>
											
                                            {/if}
											<hr />
										 <p><input type="submit" name="{if $tsAct == 'editar'}edit{else}new{/if}" value="{if $tsAct == 'editar'}Guardar{else}Agregar{/if}" class="button is-primary"/>
										</form>
										{/if}
</div>