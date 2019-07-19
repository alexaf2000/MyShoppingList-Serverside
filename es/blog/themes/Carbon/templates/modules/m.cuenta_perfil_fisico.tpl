	                            <h3  style="cursor: pointer;" class="panel-block title is-5" onclick="cuenta.chgsec(this)">2. Como soy</h3>
                                <fieldset style="display: none">
                                    <div class="notification is-info has-text-centered alert-cuenta cuenta-3">
                                    </div>
                                    <div class="control is-horizontal">
                                        <div class="control-label"><label class="label" for="altura">Mi altura</label></div>
                                        <div class="input-fake control is-grouped">
                                            <input type="text" value="{if $tsPerfil.p_altura}{$tsPerfil.p_altura}{/if}" maxlength="3" name="altura" id="altura" class="text cuenta-save-3 input">&nbsp;cent&iacute;metros					</div>
                                    </div>
                                    <div class="control is-horizontal">
                                        <div class="control-label"><label class="label" for="peso">Mi peso</label></div>
                                        <div class="input-fake control is-grouped">
                                            <input type="text" value="{if $tsPerfil.p_peso > 0}{$tsPerfil.p_peso}{/if}" maxlength="3" name="peso" id="peso" class="text cuenta-save-3 input">&nbsp;kilogramos					</div>
                                    </div>
                                    <div class="control is-horizontal">
                                        <div class="control-label"><label class="label" for="pelo_color">Color de pelo</label></div>
                                        <div class="input-fake control is-grouped">
                                             <div class="select"><select class="cuenta-save-3" name="pelo_color" id="pelo_color">
                                            	{foreach from=$tsPData.pelo key=val item=text}
                                                <option value="{$val}" {if $tsPerfil.p_pelo == $val}selected="selected"{/if}>{$text}</option>
                                                {/foreach}
                                            </select></div>
                                        </div>
                                    </div>
                                    <div class="control is-horizontal">
                                       <div class="control-label"> <label class="label" for="ojos_color">Color de ojos</label></div>
                                        <div class="input-fake control is-grouped">
                                            <div class="select"><select class="cuenta-save-3" name="ojos_color" id="ojos_color">
                                            	{foreach from=$tsPData.ojos key=val item=text}
                                                <option value="{$val}" {if $tsPerfil.p_ojos == $val}selected="selected"{/if}>{$text}</option>
                                                {/foreach}
                                            </select></div>
                                        </div>
                                    </div>
                                    <div class="control is-horizontal">
                                        <div class="control-label"><label class="label" for="fisico">Complexi&oacute;n</label></div>
                                        <div class="input-fake control is-grouped">
                                             <div class="select"><select class="cuenta-save-3" name="fisico" id="fisico">
                                            	{foreach from=$tsPData.fisico key=val item=text}
                                                <option value="{$val}" {if $tsPerfil.p_fisico == $val}selected="selected"{/if}>{$text}</option>
                                                {/foreach}
                                            </select></div>
                                        </div>
                                    </div>
                                    <div class="control is-horizontal">
                                        <div class="control-label"><label class="label" for="dieta">Mi dieta es</label></div>
                                        <div class="input-fake control is-grouped">
                                             <div class="select"><select class="cuenta-save-3" name="dieta" id="dieta">
                                            	{foreach from=$tsPData.dieta key=val item=text}
                                                <option value="{$val}" {if $tsPerfil.p_dieta == $val}selected="selected"{/if}>{$text}</option>
                                                {/foreach}
                                            </select></div>
                                        </div>
                                    </div>
                                    <div class="control is-horizontal">
                                        <div class="control-label"><label class="label">Tengo</label></div>
                                        <div class="input-fake control is-grouped">
                                            <ul>
	                                            {foreach from=$tsPData.tengo key=val item=text}
                                                <li><input type="checkbox" name="t_{$val}" class="cuenta-save-3" value="1" {if $tsPerfil.p_tengo.$val == 1}checked="checked"{/if}>{$text}</li>
                                                {/foreach}
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="control is-horizontal">
                                        <div class="control-label"><label class="label" for="fumo">Fumo</label></div>
                                        <div class="input-fake control is-grouped">
                                             <div class="select"><select class="cuenta-save-3" name="fumo" id="fumo">
                                            	{foreach from=$tsPData.fumo_tomo key=val item=text}
                                                <option value="{$val}" {if $tsPerfil.p_fumo == $val}selected="selected"{/if}>{$text}</option>
                                                {/foreach}
                                            </select></div>
                                        </div>
                                    </div>
                                    <div class="control is-horizontal">
                                        <div class="control-label"><label class="label" for="tomo_alcohol">Tomo alcohol</label></div>
                                        <div class="input-fake control is-grouped">
                                             <div class="select"><select class="cuenta-save-3" name="tomo_alcohol" id="tomo_alcohol">
                                            	{foreach from=$tsPData.fumo_tomo key=val item=text}
                                                <option value="{$val}" {if $tsPerfil.p_tomo == $val}selected="selected"{/if}>{$text}</option>
                                                {/foreach}
                                            </select></div>
                                        </div>
                                    </div>
                                    <div class="buttons">
                                        <input type="button" value="Guardar y seguir" onclick="cuenta.save(3, true)" class="button is-info">
                                    </div>
                                </fieldset>