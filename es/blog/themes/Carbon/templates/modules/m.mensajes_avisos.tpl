                            {if $tsMensajes}
                            <ul id="mpList">
                                {foreach from=$tsMensajes item=av}
                                <li class="panel-block {if $av.av_read == 0} unread{/if}" id="av_{$av.av_id}">
								<div class="media">
									    <div class="media-left">
										<a href="{$tsConfig.url}/mensajes/avisos/?aid={$av.av_id}">
										<span class="icon is-large"><i class="fa aviso_{$av.av_type}"></i></span>
										</a>
										</div>
										<div class="media-content">
										   <div class="content">
                                           <strong>{$tsConfig.titulo}</strong> <small>{$av.av_date|fecha}</small>
                                           <br>
										   <div><a href="{$tsConfig.url}/mensajes/avisos/?aid={$av.av_id}">{$av.av_subject}</a></div>
										   <p>{$av.av_body|truncate:70}</p>
										   </div>
										</div>
										<div class="media-right">
										<a href="{$tsConfig.url}/mensajes/avisos/?did={$av.av_id}" class="qtip" title="Eliminar"><i class="delete"></i></a>
									    </div>
                                    </div>
                                </li>
                                {/foreach}
                            </ul>
                            {elseif $tsMensaje.av_id > 0}
                            <div class="mpRContent">
                                    <h2 class="title is-4">{$tsMensaje.av_subject}</h2>
                                    <p class="subtitle is-5"><a href="{$tsConfig.url}">{$tsConfig.titulo}</a> <small>{$tsMensaje.av_date|fecha}</small></p>
                                <ul id="historial">
                                    <li class="panel-block">
                                        <div class="media">
                                            <div class="media-left">
											<span class="icon is-large"><i class="fa aviso_{$tsMensaje.av_type}"></i></span>
											</div>
                                            <div class="media-content">
                                                <div><a href="{$tsConfig.url}/perfil/{$mp.user_name}" class="autor-name">{$mp.user_name}</a> </div>
                                                <div>{$tsMensaje.av_body|nl2br}</div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                                <div class="mpForm">
                                    <div class="form">
                                        <span>&nbsp;</span>
                                    </div>
                                </div>
                            </div>
                            <div class="mpOptions panel">
                                <p class="panel-heading">Acciones</p>
                                <ul>
                                    <a class="panel-block" href="{$tsConfig.url}/mensajes/avisos/?did={$tsMensaje.av_id}">Eliminar</a>
                                    <a class="panel-block" href="{$tsConfig.url}/mensajes/avisos/">&laquo; Volver a avisos</a>
                                </ul>
                            </div>
                            {else}
                            <div class="notification is-info has-text-centered">{if $tsMensaje}{$tsMensaje}{else}<span class="icon"><i class="fa fa-info-circle"></i></span>No hay avisos o alertas{/if}</div>
                            {/if}