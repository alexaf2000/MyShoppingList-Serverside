	                            <h3  style="cursor: pointer;" class="panel-block title is-5" onclick="cuenta.chgsec(this)">3. Formaci&oacute;n y trabajo</h3>
                                <fieldset style="display: none">
                                    <div class="notification is-info has-text-centered alert-cuenta cuenta-4">
                                    </div>
                                    <div class="control is-horizontal">
                                        <div class="control-label"><label class="label" for="estudios">Estudios</label></div>
                                        <div class="input-fake control is-grouped">
                                            <div class="select"><select  class="cuenta-save-4" name="estudios" id="estudios">
                                            	{foreach from=$tsPData.estudios key=val item=text}
                                                <option value="{$val}" {if $tsPerfil.p_estudios == $val}selected="selected"{/if}>{$text}</option>
                                                {/foreach}
                                            </select></div>
                                        </div>
                                    </div>
                                    <div class="control is-horizontal">
                                        <div class="control-label"><label class="label">Idiomas</label></div>
                                        <div class="input-fake control is-grouped">
                                            <ul>
                                            	{foreach from=$tsPData.idiomas key=iid item=idioma}
                                                <li>
                                                    <span class="label-id">{$idioma}</span>
                                                    <div class="select"><select  class="cuenta-save-4" name="idioma_{$iid}">
                                                        {foreach from=$tsPData.inivel key=val item=text}
                                                        <option value="{$val}" {if $tsPerfil.p_idiomas.$iid == $val}selected="selected"{/if}>{$text}</option>
                                                        {/foreach}
                                                    </select></div>
                                                </li>
                                                {/foreach}
                                            </ul>
                                        </div>
                                    </div> 
                                    <div class="control is-horizontal">
                                        <div class="control-label"><label class="label" for="profesion">Profesi&oacute;n</label></div>
                                        <div class="control is-grouped"><input class="text cuenta-save-4 input" maxlength="32" name="profesion" id="profesion" value="{$tsPerfil.p_profesion}"/></div>
                                    </div>
                                    <div class="control is-horizontal">
                                        <div class="control-label"><label class="label" for="empresa">Empresa</label></div>
                                        <div class="control is-grouped"><input class="text cuenta-save-4 input" maxlength="32" name="empresa" id="empresa" value="{$tsPerfil.p_empresa}"/></div>
                                    </div>
                                    <div class="control is-horizontal">
                                        <div class="control-label"><label class="label" for="sector">Sector</label></div>
                                        <div class="input-fake control is-grouped">
                                            <div class="select"><select  class="cuenta-save-4" name="sector" id="sector">
                                                {foreach from=$tsPData.sector key=val item=text}
                                                <option value="{$val}" {if $tsPerfil.p_sector == $val}selected="selected"{/if}>{$text}</option>
                                                {/foreach}
                                            </select></div>
                                        </div>
                                    </div>
                                    <div class="control is-horizontal">
                                        <div class="control-label"><label class="label" for="ingresos">Nivel de ingresos</label></div>
                                        <div class="input-fake control is-grouped">
                                            <div class="select"><select  class="cuenta-save-4" name="ingresos" id="ingresos">
                                                {foreach from=$tsPData.ingresos key=val item=text}
                                                <option value="{$val}" {if $tsPerfil.p_ingresos == $val}selected="selected"{/if}>{$text}</option>
                                                {/foreach}
                                            </select></div>
                                        </div>
                                    </div>
                                    <div class="control is-horizontal">
                                        <div class="control-label"><label class="label" for="intereses_profesionales">Intereses Profesionales</label></div>
                                        <div class="input-fake control is-grouped">
                                            <textarea class="cuenta-save-4 textarea" name="intereses_profesionales" id="intereses_profesionales">{$tsPerfil.p_int_prof}</textarea>
                                        </div>
                                    </div>
                                    <div class="control is-horizontal">
                                        <div class="control-label"><label class="label" for="habilidades_profesionales">Habilidades Profesionales</label></div>
                                        <div class="input-fake control is-grouped">
                                            <textarea class="cuenta-save-4 textarea" name="habilidades_profesionales" id="habilidades_profesionales">{$tsPerfil.p_hab_prof}</textarea>
                                        </div>
                                    </div>
                                    <div class="buttons">
                                        <input type="button" value="Guardar y seguir" onclick="cuenta.save(4, true)" class="button is-info">
                                    </div>
                                </fieldset>