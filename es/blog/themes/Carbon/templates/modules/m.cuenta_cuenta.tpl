							<div class="content-tabs cuenta">
                            	<div class="notification is-info has-text-centered alert-cuenta cuenta-1"></div>
                                <fieldset>
                                    <div class="control is-horizontal">
									<div class="control-label">
                                        <label class="label" for="email">E-Mail:</label>
										</div>
                                        <div class="input-fake input-hide-email control is-grouped">
                                            {$tsUser->info.user_email} (<a onclick="input_fake('email')">Cambiar</a>)
                                        </div>
										 <div class="control is-grouped">
                                        <input type="text" style="display: none" value="{$tsUser->info.user_email}" maxlength="35" name="email" id="email" class="text input cuenta-save-1 input-hidden-email">
                                    </div></div>
                                    <div class="control is-horizontal">
									<div class="control-label">
                                        <label class="label" for="pais">Pa&iacute;s:</label>
										</div>
										<div class="control is-grouped">
										<div class="select">
                                        <select onchange="cuenta.chgpais()" class="cuenta-save-1" name="pais" id="pais">
                                            <option value="">Pa&iacute;s</option>
                                            {foreach from=$tsPaises key=code item=pais}
                                            	<option value="{$code}" {if $code == $tsPerfil.user_pais}selected="selected"{/if}>{$pais}</option>
                                            {/foreach}
										</select>
									</div></div></div>
                                    <div class="control is-horizontal">
									<div class="control-label">
                                        <label class="label" for="estado">Estado/Provincia:</label>
										</div>
										<div class="control is-grouped">
										<div class="select">
                                        <select name="estado" id="estado" class="cuenta-save-1">
                                        {foreach from=$tsEstados key=code item=estado}
                                            <option value="{$code+1}" {if $code+1 == $tsPerfil.user_estado}selected="selected"{/if}>{$estado}</option>
                                        {/foreach}
                                        </select>
                                    </div></div></div>
                                    <div class="control is-horizontal">
									<div class="control-label">
                                        <label class="label">Sexo</label>
										</div>
									<div class="control is-grouped">	
                                        <ul class="fields">
                                            <li>
                                                <label><input type="radio" value="m" name="sexo" class="radio cuenta-save-1" {if $tsPerfil.user_sexo == '1'}checked="checked"{/if}/>Masculino</label>
                                            </li>
                                            <li>
                                                <label><input type="radio" value="f" name="sexo" class="radio cuenta-save-1" {if $tsPerfil.user_sexo == '0'}checked="checked"{/if}/>Femenino</label>
                                            </li>
                                        </ul>
                                    </div></div>
                                </fieldset>
                                <div class="control is-horizontal">
								<div class="control-label">
									<label class="label">Nacimiento:</label>
									</div>
									<div class="control is-grouped">
										<div class="select">
									<select class="cuenta-save-1" name="dia">
                                        {section name=dias start=1 loop=32}
                                        <option value="{$smarty.section.dias.index}" {if $tsPerfil.user_dia ==  $smarty.section.dias.index}selected="selected"{/if}>{$smarty.section.dias.index}</option>
                                        {/section}                            
									</select></div>
									<div class="select">
									<select class="cuenta-save-1" name="mes">
                                    	{foreach from=$tsMeces key=mid item=mes}
                                        	<option value="{$mid}" {if $tsPerfil.user_mes == $mid}selected="selected"{/if}>{$mes}</option>
                                        {/foreach}
									</select></div>
									<div class="select">
									<select class="cuenta-save-1" name="ano">
                                    	{section name=year start=$tsEndY loop=$tsEndY step=-1 max=$tsMax}
                                        	 <option value="{$smarty.section.year.index}" {if $tsPerfil.user_ano ==  $smarty.section.year.index}selected="selected"{/if}>{$smarty.section.year.index}</option>
                                        {/section}
									</select></div>
								</div></div>
                                {if $tsConfig.c_allow_firma}
                                <div class="control is-horizontal">
								<div class="control-label">
                                    <label class="label" for="firma">Firma:<br /> <small style="font-weight:normal">(Acepta BBCode) Max. 300 car.</small></label>
								</div>
								<div class="control is-grouped">
                                    <textarea name="firma" id="firma" class="cuenta-save-1 textarea">{$tsPerfil.user_firma}</textarea>
									</div>
                                </div>
                                {/if}
                                <div class="buttons">
                                    <input type="button" value="Guardar" onclick="cuenta.save(1)" class="button is-primary ">
                                </div>
                            </div>