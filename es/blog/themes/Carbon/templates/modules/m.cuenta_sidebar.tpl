					<div class="sidebar-tabs box">
                    	<h3 class="title is-4">Mi Avatar</h3>
                        <div class="avatar-big-cont">
                        	<div style="display: none" class="avatar-loading"></div>
                            <img width="120" height="120" alt="" src="{$tsConfig.url}/files/avatar/{if $tsPerfil.p_avatar}{$tsPerfil.user_id}_120{else}avatar{/if}.jpg?t={$smarty.now}" class="avatar-big" id="avatar-img"/>
                        </div>
                        <ul class="change-avatar control" style="display: none;">
                        	<li class="local-file">
                            	<span><a class="button is-dark is-fullwidth" onclick="avatar.chgtab(this)" id="avatar-local">Local</a></span>
                                <div class="mini-modal" style="display: none;">
									<div class="dialog-m"></div>
									<p>Subir Archivo</p>
									<input type="file" name="file-avatar" id="file-avatar" size="15" class="browse"/><br/>
                                    <button onclick="avatar.upload(this)" class="avatar-next local button is-dark">Subir</button>
								</div>
                            </li>
                        	<li class="url-file">
                            	<span><a class="button is-dark is-fullwidth" onclick="avatar.chgtab(this)" id="avatar-url">Url</a></span>
                                <div class="mini-modal" style="display: none;">
                                    <div class="dialog-m"></div>
                                {if $tsConfig.c_allow_upload}
									<p>Direcc&oacute;n de la imagen</p>
									<input type="text" name="url-avatar" id="url-avatar" size="45"/><br/>
                                    <button onclick="avatar.upload(this);" class="avatar-next url button is-dark">Subir</button>
                                {else}
                                    <p class="notification is-danger has-text-centered">Lo sentimos por el momento solo puedes subir avatares desde tu PC.</p>
                                {/if}
                                </div>
                            </li>
                        </ul>
                        <a onclick="avatar.edit(this)" class="button is-primary is-fullwidth is-hidden-touch" id="avatar-edit">Editar</a>
                    </div>
					<div class="box">
                    <h3 id="porc-completado-label">Perfil completo al {$tsPerfil.porcentaje}%</h3>
                    <div class="bar" style="margin-top:5px;" id="porc-completado">
                    <progress class="progress is-info" value="{$tsPerfil.porcentaje}" max="100">{$tsPerfil.porcentaje}%</progress>	
                    </div>
                    <div id="prueba"></div></div>