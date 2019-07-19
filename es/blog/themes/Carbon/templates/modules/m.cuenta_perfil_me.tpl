	                            <h3 style="cursor: pointer;" class="panel-block title is-5" onclick="cuenta.chgsec(this)">1. M&aacute;s sobre mi</h3>
								<fieldset>
                                    <div class="notification is-info has-text-centered alert-cuenta cuenta-2">
                                    </div>
                                    <div class="control is-horizontal">
									<div class="control-label">
                                        <label class="label" for="nombrez">Nombre completo</label></div>
										<div class="control is-grouped">
                                        <input type="text" value="{$tsPerfil.p_nombre}" maxlength="60" name="nombrez" id="nombrez" class="text cuenta-save-2 input">
                                    </div></div>
                                    <div class="control is-horizontal">
									<div class="control-label">
                                        <label class="label" for="sitio">Mensaje Personal</label></div>
										<div class="control is-grouped">
                                        <textarea value="" maxlength="60" name="mensaje" id="mensaje" class="cuenta-save-2 textarea">{$tsPerfil.p_mensaje}</textarea>
                                    </div></div>
                                    
                                    <div class="control is-horizontal">
									<div class="control-label">
                                        <label class="label" for="sitio">Sitio Web</label></div>
										<div class="control is-grouped">                                       
										<input type="text" value="{$tsPerfil.p_sitio}" maxlength="60" name="sitio" id="sitio" class="text cuenta-save-2 input">
                                    </div></div>
                                    <div class="control">
                                        <label class="label" for="ft">Redes sociales</label></div>
									<div class="control is-horizontal">	
									<div class="control-label"><label class="label">facebook.com/</label></div>
                                        <div class="control is-grouped"><input type="text" value="{$tsPerfil.p_socials.f}" maxlength="64" name="facebook" id="ft" class="text cuenta-save-2 input"></div>
                                    <div class="control-label"><label class="label">twitter.com/</label></div>
										<div class="control is-grouped"><input type="text" value="{$tsPerfil.p_socials.t}" maxlength="64" name="twitter" id="ft2" class="text cuenta-save-2 input"></div>
                                    </div>
                                    <div class="control is-horizontal">
									<div class="control-label">
                                        <label class="label">Me gustar&iacute;a</label></div>
                                        <div class="input-fake control is-grouped">
                                            <ul>
                                            	{foreach from=$tsPData.gustos key=val item=text}
                                                <li><input type="checkbox" name="g_{$val}" class="cuenta-save-2" value="1" {if $tsPerfil.p_gustos.$val == 1}checked="checked"{/if}>{$text}</li>
                                                {/foreach}
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="control is-horizontal">
									<div class="control-label">
                                        <label class="label" for="estado">Estado Civil</label></div>
                                        <div class="input-fake control is-grouped">
                                            <div class="select"><select class="cuenta-save-2" name="estado" id="estado">
                                            	{foreach from=$tsPData.estado key=val item=text}
                                                <option value="{$val}" {if $tsPerfil.p_estado == $val}selected="selected"{/if}>{$text}</option>
                                                {/foreach}
                                            </select></div>
                                        </div>
                                    </div>
                                    <div class="control is-horizontal">
									<div class="control-label">
                                        <label class="label" for="hijos">Hijos</label></div>
                                        <div class="input-fake control is-grouped">
                                            <div class="select"><select class="cuenta-save-2" name="hijos" id="hijos">
                                            	{foreach from=$tsPData.hijos key=val item=text}
                                                <option value="{$val}" {if $tsPerfil.p_hijos == $val}selected="selected"{/if}>{$text}</option>
                                                {/foreach}
                                            </select></div>
                                        </div>
                                    </div>
                                    <div class="control is-horizontal">
									<div class="control-label">
                                        <label class="label" for="vivo">Vivo con</label></div>
                                        <div class="input-fake control is-grouped">
                                           <div class="select"><select class="cuenta-save-2" name="vivo" id="vivo">
                                            	{foreach from=$tsPData.vivo key=val item=text}
                                                <option value="{$val}" {if $tsPerfil.p_vivo == $val}selected="selected"{/if}>{$text}</option>
                                                {/foreach}
                                            </select></div>
                                        </div>
                                    </div>
                                    <div class="buttons">
                                        <input type="button" value="Guardar y seguir" onclick="cuenta.save(2, true)" class="button is-info">
                                    </div>
                                </fieldset>