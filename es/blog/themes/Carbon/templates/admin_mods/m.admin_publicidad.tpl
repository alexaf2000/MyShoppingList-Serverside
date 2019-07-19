                                <h3 class="title">Administrar Publicidad</h3>
								<hr/>
                                <div id="res" class="boxy-content">
                                {if $tsSave}<div style="display: block;" class="mensajes ok">Tus cambios han sido guardados.</div>{/if}
                                    <form action="" method="post" autocomplete="off">
                                            
                                                <label class="label" for="ai_ban_1">Banner 300x250:</label>
                                                <textarea class="textarea" name="ad300" id="ai_ban_1" rows="5" cols="50" onclick="select(this);">{$tsConfig.ads_300}</textarea>
                                            
                                            
                                                <label class="label" for="ai_ban_2">Banner 468x60:</label>
                                                <textarea class="textarea" name="ad468" id="ai_ban_2" rows="5" cols="50" onclick="select(this);">{$tsConfig.ads_468}</textarea>
                                            
                                            
                                                <label class="label" for="ai_ban_3">Banner 160x600:</label>
                                                <textarea class="textarea" name="ad160" id="ai_ban_3" rows="5" cols="50" onclick="select(this);">{$tsConfig.ads_160}</textarea>
                                            
                                            
                                                <label class="label" for="ai_ban_4">Banner 728x90:</label>
                                                <textarea class="textarea" name="ad728" id="ai_ban_4" rows="5" cols="50" onclick="select(this);">{$tsConfig.ads_728}</textarea>                                            
                                            
                                            <p class="control">
                                            <label class="label" for="ai_ban_5">Search ID:</label><span>ID de tu buscador de GOOGLE</span>
                                            <input class="input" type="text" name="adSearch" id="ai_ban_5" value="{$tsConfig.ads_search}" />
                                            </p>
											<hr/>
                                            <p><input type="submit" value="Guardar cambios" name="save" class="button is-primary"/></p>
                                    </form>
                                </div>