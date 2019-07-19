							<div class="content-tabs cambiar-nick" style="display:none">
                            	<fieldset>
                                    <div class="notification is-info has-text-centered alert-cuenta cuenta-8">
									</div>
									{if $tsUser->info.user_name_changes > 0}
									<p class="notification is-dark has-text-centered">Hola {$tsUser->nick}, le recordamos que dispone de {$tsUser->info.user_name_changes} cambios este a&ntilde;o.
									Recuerde que si su cambio no es aprobado, no se le devolver&aacute; la disponibilidad de otro cambio.</p>
                                    <div class="control is-horizontal">
                                        <div class="control-label"><label class="label" for="new_nick">Nombre de usuario</label></div>
                                        <div class="control is-grouped"><input type="text" value="{$tsUser->nick}" maxlength="15" name="new_nick" id="new_nick" class="text cuenta-save-8 input"/></div>
                                    </div>
									<div class="control is-horizontal">
                                        <div class="control-label"><label class="label" for="password">Contrase&ntilde;a actual:</label></div>
                                        <div class="control is-grouped"><input type="password" maxlength="32" name="password" id="password" class="text cuenta-save-8 input"/></div>
                                    </div>
									<div class="control is-horizontal">
                                        <div class="control-label"><label class="label" for="pemail">Recibir respuesta en</label></div>
                                        <div class="input-fake input-hide-pemail control is-grouped">
                                            {$tsUser->info.user_email} (<a onclick="input_fake('pemail')">Cambiar</a>)
                                    </div>
                                        <div class="control is-grouped"><input type="text" style="display: none" value="{$tsUser->info.user_email}" maxlength="35" name="pemail" id="pemail" class="text cuenta-save-8 input-hidden-pemail input"></div>
                                    </div>
                                </fieldset>
                                <div class="buttons">
                                    <input type="button" value="Guardar" onclick="cuenta.save(8)" class="button is-primary"/>
                                </div>
								{else}
								<p>Hola {$tsUser->nick}, lamentamos informarle de su nula disponibilidad de cambios, contacte con la administraci&oacute;n o espere un a&ntilde;o.
								{/if}
                            </div>