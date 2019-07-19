                        <div class="mpRContent">
                                <h2 class="title is-4">{$tsMensajes.msg.mp_subject}</h2>
                                <p class="subtitle is-5">Entre <a href="{$tsConfig.url}/perfil/{$tsUser->nick}">T&uacute;</a> y <a href="{$tsConfig.url}/perfil/{$tsMensajes.ext.user}">{$tsMensajes.ext.user}</a></p>
                            <ul id="historial">
                                {if $tsMensajes.res}{foreach from=$tsMensajes.res item=mp}
                                <li class="panel-block">
                                    <div class="media">
									<div class="media-left">
                                        <a href="{$tsConfig.url}/perfil/{$mp.user_name}">
										<figure class="image is-48x48"><img class="round" src="{$tsConfig.url}/files/avatar/{$mp.mr_from}_120.jpg" /></figure></a>
                                     </div>   
										<div class="media-content">
                                            <div class="content">
											<p><a href="{$tsConfig.url}/perfil/{$mp.user_name}">{$mp.user_name}</a> {if $tsUser->is_admod}<a href="{$tsConfig.url}/moderacion/buscador/1/1/{$mp.mr_ip}"><small>{$mp.mr_ip}</small></a>{/if} <small>{$mp.mr_date|fecha}</small></p>
                                            <div>{$mp.mr_body|nl2br}</div>
											</div>
                                        </div>
                                    </div>
                                </li>
                                {/foreach}{else}
                                <li class="notification is-danger has-text-centered"> <span class="icon"><i class="fa fa-exclamation-circle"></i></span>No se pudieron cargar los mensajes.</li>
                                {/if}
                            </ul>
                            {if $tsUser->is_admod || ($tsMensajes.msg.mp_del_to == 0 && $tsMensajes.msg.mp_del_from == 0 && $tsMensajes.ext.can_read == 1)}
                                    <div class="mp-Form panel-block">
									<p class="control">
                                        <textarea id="respuesta" onfocus="onfocus_input(this)" onblur="onblur_input(this)" title="Escribe una respuesta..." class="textarea">Escribe una respuesta...</textarea>
                                        <input type="hidden" id="mp_id" value="{$tsMensajes.msg.mp_id}" />
										</p>
                                        <a class="button is-dark" onclick="mensaje.responder(); return false;">Responder</a>
                                    </div>
                            {else}
                                <li class="notification is-info has-text-centered"><span class="icon"><i class="fa fa-exclamation-circle"></i></span> Un participante abandon&oacute; la conversaci&oacute;n o no tienes permiso para responder</li>
                            {/if}
                        </div>
                        <div class="mpOptions panel">
                            <p class="panel-heading">Acciones</p>
                            <ul>
                                <a class="panel-block" href="#" onclick="mensaje.marcar('{$tsMensajes.msg.mp_id}:{$tsMensajes.msg.mp_type}', 1, 2, this); return false;">Marcar como no le&iacute;do</a>
                                <a class="panel-block" href="#" onclick="mensaje.eliminar('{$tsMensajes.msg.mp_id}:{$tsMensajes.msg.mp_type}',2); return false;">Eliminar</a>
                                <a class="panel-block" href="#" onclick="denuncia.nueva('mensaje',{$tsMensajes.msg.mp_id}, '', ''); return false;">Marcar como correo no deseado...</a>
                                <a class="panel-block" href="#" onclick="denuncia.nueva('usuario',{if $tsMensajes.msg.mp_from != $tsUser->uid}{$tsMensajes.msg.mp_from}{else}{$tsMensajes.msg.mp_to}{/if}, '', '{if $tsMensajes.msg.mp_from != $tsUser->uid}{$tsMensajes.msg.user_name}{else}{$tsUser->getUsername($tsMensajes.msg.mp_to)}{/if}'); return false">Denunciar a este usuario...</a>
                                <a class="panel-block" href="javascript:bloquear({$tsMensajes.ext.uid}, {if $tsMensajes.ext.block}false{else}true{/if}, 'mensajes')" id="bloquear_cambiar">{if $tsMensajes.ext.block}Desbloquear{else}Bloquear{/if} a <u>{$tsMensajes.ext.user}</u>...</a>
                                <a class="panel-block" href="{$tsConfig.url}/mensajes/">&laquo; Volver a mensajes</a></li>
                            </ul>
                        </div>