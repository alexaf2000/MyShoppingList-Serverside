                        	<div id="procesando"><div id="post"></div></div>
                             <hr>
							<div class="answerTxt">
                            	<div class="Container">
								<div class="error"></div>
                                <textarea id="body_comm" class="textarea autogrow" tabindex="1" title="Escribir un comentario..." style="resize:none;" onfocus="onfocus_input(this)" onblur="onblur_input(this)">Escribir un comentario...</textarea>
                                <div class="buttons" style="text-align:left">
                                    <div class="floatL">
                                    	<input type="hidden" id="auser_post" value="{$tsPost.post_user}" />
                                        <input type="button" onclick="comentario.nuevo('true')" class="button is-primary" value="Enviar Comentario" tabindex="3" id="btnsComment"/>
                                        &nbsp;<input type="button" onclick="comentario.preview('body_comm','new')" class="button is-info" value="Vista Previa" tabindex="2" style="width:auto;" />
                                    <div id="gif_cargando" style="text-align:center; margin-top:1em; display:none">
                                	<img src="{$tsConfig.images}/tload.gif" style="border:0;" />
                                    </div>
									</div>
                                    <div class="floatR">
                                        <a href="#" onclick="moreEmoticons(true); return false;" class="floatR" id="moreemofn"> M&aacute;s emoticones</a>
                                    </div>
                                    {include file='modules/m.global_emoticons.tpl'}
                                    <div class="clearfix"></div>
                                </div>
                                </div>
                            </div>