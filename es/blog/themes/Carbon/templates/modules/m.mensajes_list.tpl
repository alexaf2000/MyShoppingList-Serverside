                            {if $tsMensajes.data}
                            <ul id="mpList">
                                {foreach from=$tsMensajes.data item=mp}
                                <li class="panel-block  {if $mp.mp_read_to == 0}unread{/if}" id="mp_{$mp.mp_id}">
                                    <div class="media">
									    <div class="media-left">
										<a href="{$tsConfig.url}/mensajes/leer/{$mp.mp_id}">
										<figure class="image is-48x48"><img class="round" src="{$tsConfig.url}/files/avatar/{$mp.mp_from}_120.jpg" /></figure>
										</a>
										</div>
										<div class="media-content">
										   <div class="content">
                                           <strong>{$mp.user_name}</strong> <small>{$mp.mp_date|fecha:'d_Ms_a'}</small>
                                           <br>
										   <div class="subject"><a href="{$tsConfig.url}/mensajes/leer/{$mp.mp_id}">{$mp.mp_subject}</a></div>
										   <p><em>{$mp.mp_preview}</em></p>
										   </div>
										<nav class="level">
                                        <div class="level-left">
                                        <a href="#" class="level-item qtip read" title="Marcar como le&iacute;do" onclick="mensaje.marcar('{$mp.mp_id}:{$mp.mp_type}', 0, 1, this); return false;" {if $mp.mp_read_to == 1}style="display:none"{/if}><span class="icon is-small"><i class="fa fa-check-circle-o"></i></span></a>
                                        <a href="#" class="level-item qtip unread" title="Marcar como no le&iacute;do" onclick="mensaje.marcar('{$mp.mp_id}:{$mp.mp_type}', 1, 1, this); return false;" {if $mp.mp_read_to == 0}style="display:none"{/if}><span class="icon is-small"><i class="fa fa-times-circle-o"></i></span></a>
                                        </div>
                                        </nav>
										</div>
										<div class="media-right">
										<a href="#" onclick="mensaje.eliminar('{$mp.mp_id}:{$mp.mp_type}',1); return false;"><i class="delete"></i></a>
									    </div>
                                    </div>
                                </li>
                                {/foreach}
                            </ul>
                            {else}
                            <div class="notification is-info has-text-centered">No hay mensajes</div>
                            {/if}
                            <div class="mpFooter">
                                <div class="actions">{if $tsAction == ''}<strong>Ver: </strong> {if $tsQT == ''}<a href="{$tsConfig.url}/mensajes/?qt=unread">No le&iacute;dos</a>{else}<a href="{$tsConfig.url}/mensajes/">Todos los mensajes</a>{/if}{/if}</div>
                                <div class="paginador">
                                    {if $tsMensajes.pages.prev != 0}<div style="text-align:left" class="floatL"><a href="{$tsConfig.url}/mensajes/{if $tsAction}{$tsAction}/{/if}?page={$tsMensajes.pages.prev}{if $tsQT != ''}&qt=unread{/if}">&laquo; Anterior</a></div>{/if}
                                    {if $tsMensajes.pages.next != 0}<div style="text-align:right" class="floatR"><a href="{$tsConfig.url}/mensajes/{if $tsAction}{$tsAction}/{/if}?page={$tsMensajes.pages.next}{if $tsQT != ''}&qt=unread{/if}">Siguiente &raquo;</a></div>{/if}
                                </div>
                                <div class="is-clearfix"></div>
                            </div>