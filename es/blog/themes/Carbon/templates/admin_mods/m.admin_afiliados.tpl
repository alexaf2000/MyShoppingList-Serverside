                                    <h3 class="title">Administrar Afiliados</h3>
									<hr/>
                                <div id="res" class="boxy-content">
                                {if $tsSave}<div style="display: block;" class="notification is-info has-text-centered">Tus cambios han sido guardados.</div>{/if}
                                {if !$tsAct}
                                {if !$tsAfiliados}
								<div class="notification is-info has-text-centered">No hay afiliados.</div>
                                <input type="button"  onclick="afiliado.nuevo(); return false" value="Agregar nuevo afiliado" class="button is-primary"/>
                                {else}
									{foreach from=$tsAfiliados item=af}
                                <div class="box">
									<p><span class="title is-4"><strong>Afiliado:</strong> <a href="{$af.a_url}" id="a_url_{$af.aid}" target="_blank"><span id="a_name_{$af.aid}">{$af.a_titulo}</span></a>
									<span id="few_{$af.aid}" class="is-pulled-right"><i># {$af.aid}</i></span></span></p>
									<p><strong>Entrada: </strong> {$af.a_hits_in} 
									<strong>Salida: </strong>{$af.a_hits_out}
									<small><span class="icon is-small"><i class="fa fa-clock-o"></i></span> {$af.a_date|hace}</small></p>
									<p><strong>Estado</strong> <span id="status_afiliado_{$af.aid}">{if $af.a_active == 0}<font color="purple">Inactivo</font>{else}<font color="green">Activo</font>{/if}</span></p>
									<p class="block">
									<a href="afs/editar/{$af.aid}" class="button"><span class="icon is-small"><i class="fa fa-edit"></i></span><span>Editar</span></a>
									<a href="#" onclick="ad_afiliado.detalles({$af.aid}); return false;" class="button"><span class="icon is-small"><i class="fa fa-drivers-license-o"></i></span><span>Detalles</span></a>
									<a onclick="admin.afs.accion({$af.aid}); return false" class="button"><span class="icon is-small"><i class="fa fa-refresh"></i></span><span>Activar/Desactivar</span></a>
									<a href="#" onclick="admin.afs.borrar({$af.aid}); return false" class="button"><span class="icon is-small"><i class="fa fa-trash"></i></span><span>Eliminar</span></a>
									</p>
									</div>
									<hr/>
									{/foreach}
                                <input type="button"  onclick="afiliado.nuevo(); return false" value="Agregar nuevo afiliado" class="button is-primary"/>
                                {/if}
								{elseif $tsAct == 'editar'}
										<form action="" method="post" autocomplete="off">

											<h4 title is-4>Editar afiliado</h4>
											
												<label class="label" for="af_name">T&iacute;tulo de afiliado:</label>
												<input class="input" type="text" id="af_name" name="af_title" value="{$tsAf.a_titulo}" />
											<hr />
											
												<label class="label" for="af_url">Direcci&oacute;n:</label>
												<input class="input" type="text" id="af_url" name="af_url" value="{$tsAf.a_url}" />
											
											<hr />
												<label class="label" for="af_banner">Banner:</label><span>Imagen del afiliado:</span>
												<input class="input" type="text" id="af_banner" name="af_banner" value="{$tsAf.a_banner}" />
											
											<hr />
												<label class="label" for="af_desc">Descripci&oacute;n:</label><br /><span>Descripci&oacute;n de la comunidad afiliada</span>
												<textarea class="textarea" name="af_desc" id="af_desc" rows="3" cols="40">{$tsAf.a_descripcion}</textarea>
											
											<hr />
										 <p><input type="submit" name="edit" value="Guardar" class="button is-primary"/>

										</form>
										{/if}
</div>