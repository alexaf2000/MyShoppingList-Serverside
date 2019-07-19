                                <h3 class="title">Administrar Temas</h3>
								<hr/>
                                <div id="res" class="boxy-content">
                                {if $tsSave}
								<div style="display: block;" class="notification is-info has-text-centered" id="no-comments"><span class="icon"><i class="fa fa-info-circle"></i></span> <span>Tus cambios han sido guardados.</span></div>
								{/if}
                                    {if $tsAct == ''}
									{foreach from=$tsTemas item=tema}
									<article class="columns">
                                    <div class="column is-2"><figure class="image"><img src="{$tema.t_url}/screenshot.png"></figure></div>
                                    <div class="column is-10">
                                      <div class="control"><p><span class="title is-5">Nombre: </span> <span class="title is-5"><b>{$tema.t_name}</b></span></p></div>
                                        <div>
                                        <a href="?act=editar&tid={$tema.tid}" class="button is-outlined"><span class="icon is-small"><i class="fa fa-edit"></i></span><span>Editar tema</span></a>
                                        {if $tsConfig.tema_id == $tema.tid}
										<a onclick="return false;" class="button is-outlined is-disabled"><span class="icon is-small"><i class="fa fa-check-square"></i></span><span>Tema en uso</span></a>
                                        {else}
										<a href="?act=usar&tid={$tema.tid}&tt={$tema.t_name}" class="button is-outlined"><span class="icon is-small"><i class="fa fa-magic"></i></span><span>Usar tema</span></a>
                                       {if $tema.tid != 1} <a href="?act=borrar&tid={$tema.tid}&tt={$tema.t_name}" class="button is-outlined"><span class="icon is-small"><i class="fa fa-trash"></i></span><span>Borrar tema</span></a>{/if}
                                        {/if}
									   </div>
                                    </div>
                                    </article>
                                    <hr/>
									{/foreach}
                                    <input type="button"  onclick="location.href = '{$tsConfig.url}/admin/temas?act=nuevo'"value="Instalar nuevo tema" class="button is-primary">
                                    {elseif $tsAct == 'editar'}
                                    <form action="" method="post" id="admin_form" autocomplete="off">
                                    	<p class="control"><label class="label" for="ai_name">Nombre del tema:</label> <input class="input" type="text" id="ai_name" name="name" value="{$tsTema.t_name}" size="30" disabled="disabled"/> Por copyright no se pude modificar.<br class="spacer" /></p>
                                        <p class="control"><label class="label" for="ai_url">Url completa del tema:</i></label> <input class="input" type="text" id="ai_url" name="url" value="{$tsTema.t_url}" size="30" /><br class="spacer" /></p>
                                    	<p class="control"><label class="label" for="ai_path">Nombre de la carpeta donde esta el tema:<br /><i>{$tsConfig.url}/themes/</i></label> <input class="input" type="text" id="ai_path" name="path" value="{$tsTema.t_path}" size="30" /></p>
                                        <hr />
                                        <label >&nbsp;</label> <input type="submit" value="Guardar tema" name="save" class="button is-primary">
                                    </form>
                                    {elseif $tsAct == 'usar' || $tsAct == 'borrar'}
                                    <form action="" method="post" id="admin_form" autocomplete="off">
                                    	<h3 align="center">{$tt}</h3>
                                    	<label>&nbsp;</label> <input type="submit" name="confirm" value="{if $tsAct == 'usar'}Confirmar el cambio de{else}Continuar borrando este{/if} tema &raquo;" class="button is-primary">
                                        {if $tsAct == 'borrar'}<p align="center">Te recordamos que debes borrar la carpeta del Tema manualmente en el servidor.</p>{/if}
                                    </form>
                                    {elseif $tsAct == 'nuevo'}
                                    {if $tsError}<div style="display: block;" class="mensajes error">{$tsError}</div>{/if}
                                    <form action="" method="post" id="admin_form" autocomplete="off">
                                    	<label class="label" for="ai_path">Nombre de la carpeta donde esta el tema a instalar:<br /><i>{$tsConfig.url}/themes/</i></label> <input class="input" type="text" id="ai_path" name="path" size="30" />
                                        <hr />
                                        <label>&nbsp;</label> <input  type="submit" value="Instalar tema" class="button is-primary">
                                    </form>
                                    {/if}
                                </div>