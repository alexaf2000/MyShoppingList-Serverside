					{if $tsUser->is_admod || $tsUser->permisos.gopp}
                        <div class="form-add-post">
                        	<form action="{$tsConfig.url}/agregar.php{if $tsAction == 'editar'}?action=editar&pid={$tsPid}{/if}" method="post" name="newpost" autocomplete="off">
                            	<input type="hidden" value="{$tsDraft.bid}" name="borrador_id"/>
                                <ul class="clearbeta">
								<div class="columns">
								<div class="column is-9">
                                    <li>
                                    <label class="label">T&iacute;tulo</label>
                                    <span style="display: none;" class="errormsg"></span>
                                    <input type="text" tabindex="1" name="titulo" maxlength="60" placeholder="Ingrese Titulo del Post" size="60" class="input is-large required" value="{$tsDraft.b_title}" />
                                    <div id="repost"></div>
                                    </li>
									<hr>
                                    <li>
                                    <a name="post"></a>
                                    <label class="label">Contenido del Post</label>
                                    <span style="display: none;" class="errormsg"></span>
                                    <textarea id="markItUp"  class="textarea required" name="cuerpo" tabindex="3" style="min-height:400px;" class="required">{$tsDraft.b_body}</textarea>
                                    <div style="margin:10px 0 0;">{include file='modules/m.global_emoticons.tpl'}</div>
                                    </li>
									{if ($tsUser->is_admod > 0 || $tsUser->permisos.moedpo) && $tsDraft.b_title && $tsDraft.b_user != $tsUser->uid}
									<hr>
									<li>
                                    <label class="label">Raz&oacute;n</label>
                                    <span style="display: none;" class="errormsg"></span>
                                    <input type="text" tabindex="8" name="razon" maxlength="150" size="60" class="input" value=""/>
                                   <p>Si has modificado el contenido de este post ingresa la raz&oacute;n por la cual lo modificaste.</p>
                                    </li>
                                    {/if}
									<hr>
									<li>
						<div class="box content">
                            	<p class="title is-5"> Consejos: Para hacer un buen post es importante que tengas en cuenta algunos puntos.
								<a onclick="$('#consejos').slideToggle();" class="button is-hidden-desktop is-primary is-outlined is-pulled-right"><span class="icon"><i class="fa fa-plus-circle"></i></span><span>Ver mas</span></a>
								</p>
                            <div id="consejos" class="consejos">
                					<div>
                						<strong>El Titulo</strong>
                						<ul>
                							<li><span class="icon is-small"><i class="fa fa-check good"></i></span><span>Que sea descriptivo</span></li>
                							<li><span class="icon is-small"><i class="fa fa-close error"></i></span><span>TODO EN MAYUSCULA</span></li>
                							<li><span class="icon is-small"><i class="fa fa-close error"></i></span><span>!!!!!!!Exagerados!!!!!!</span></li>
                							<li><span class="icon is-small"><i class="fa fa-close error"></i></span><span>PARCIALMENTE en may&uacute;sculas!</span></li>
                						</ul>
                					</div>
									<hr>
                					<div>
                						<b>Contenido</b>
                						<br/>
                						<ul class="is-inline-block">
                							<li><span class="icon is-small"><i class="fa fa-close error"></i></span><span>Informaci&oacute;n personal o de un tercero</span></li>
                							<li><span class="icon is-small"><i class="fa fa-close error"></i></span><span>Fotos de personas menores de edad</span></li>
                							<li><span class="icon is-small"><i class="fa fa-close error"></i></span><span>Muertos, sangre, v&oacute;mitos, etc.</span></li>
                							<li><span class="icon is-small"><i class="fa fa-close error"></i></span><span>Con contenido racista y/o peyorativo</span></li>
											<li><span class="icon is-small"><i class="fa fa-close error"></i></span><span>Software spyware, malware, virus o troyanos</span></li>
                						</ul>
                						<ul class="is-inline-block">
                							<li><span class="icon is-small"><i class="fa fa-close error"></i></span><span>Poca calidad (una imagen, texto pobre)</span></li>
                							<li><span class="icon is-small"><i class="fa fa-close error"></i></span><span>Chistes escritos, adivinanzas, trivias</span></li>
                							<li><span class="icon is-small"><i class="fa fa-close error"></i></span><span>Haciendo preguntas o cr&iacute;ticas</span></li>
											<li><span class="icon is-small"><i class="fa fa-close error"></i></span><span>Con intenci&oacute;n de armar pol&eacute;mica</span></li>
                							<li><span class="icon is-small"><i class="fa fa-close error"></i></span><span>Insultos o malos modos</span></li>
                						</ul>
                						</div>
                			</div>
                        </div>
									</li>
									</div>
									<div class="column is-3">
                                    <li>
                                    <label class="label">Tags</label>
                                    <span style="display: none;" class="errormsg"></span>
                                    <input type="text" tabindex="4" name="tags"  id="tagnew" maxlength="128" class="input required" value="{$tsDraft.b_tags}"/>
                                    <small>Una lista separada por comas, que describa el contenido. Ejemplo: <b>gol, ingleses, Copa Oro, futbol, Chicharito, M&eacute;xico</b></small>
                                    </li>
									<hr>
                                    <li>
                                    <label class="label">Portada</label>
                                    <span style="display: none;" class="errormsg"></span>
                                    <input type="text" id="thumb_url" tabindex="16" name="imagen" maxlength="190" placeholder="URL de la imagen en miniatura" size="60" class="input required" value="{$tsDraft.b_portada}"/>
                                    <input type="checkbox" name="valid_thumbnail" id="thumbnail" style="display:none" disable />
                                    <small>Actuara como Imagen identificatoria del Post.</small>
                                    <div id="thumb_preview" class="thumbnail-preview"><div class="thumbnail-img"></div></div>
                                    </li>
									<hr>
                                    <li>
                                    <label class="label">Categor&iacute;a</label>
                                    <span style="display: none;" class="errormsg"></span>
                                    <select class="agregar required" tabindex="5" size="9" style="width:100%;" size="{$tsConfig.categorias.ncats}" name="categoria">
                                    <option value="" selected="selected" style="color: #000; font-weight: bold; padding: 3px; background:none;">Elegir una categor&iacute;a</option>
                                        {foreach from=$tsConfig.categorias item=c}
                                        <option value="{$c.cid}" {if $tsDraft.b_category == $c.cid}selected="selected"{/if} style="background-image:url({$tsConfig.images}/icons/cat/{$c.c_img})">{$c.c_nombre}</option>
                                        {/foreach}
                                    </select>
                                    </li>
									<hr>
                                    <li class="box">
                                    <label class="label">Opciones</label>
                                    <div class="control">  
                                        
                                        <p>
                                            <label class="checkbox" for="privado">
											<input type="checkbox" tabindex="6" name="privado" id="privado" class="floatL" {if $tsDraft.b_private == 1}checked="checked"{/if} />
											<b>S&oacute;lo usuarios registrados</b></label>
                                        </p>
										<small>Tu post ser&aacute; visto s&oacute;lo por los usuarios que tengan cuenta en {$tsConfig.titulo}</small>
                                    </div>
                                    <div class="control">  
                                        <p>
                                            <label class="checkbox" for="sin_comentarios">
											<input type="checkbox" tabindex="7" name="sin_comentarios" id="sin_comentarios" class="checkbox" {if $tsDraft.b_block_comments == 1}checked="checked"{/if}>
											<b>Cerrar Comentarios</b></label>
                                        </p>
										<small>Si tu post es pol&eacute;mico ser&iacute;a mejor que cierres los comentarios.</small>
                                    </div>
									<div class="control">  
                                       <p>
                                            <label class="checkbox" for="visitantes">
											<input type="checkbox" tabindex="8" name="visitantes" id="visitantes" class="checkbox" {if $tsDraft.b_visitantes == 1}checked="checked"{/if} />
                                            <b>Mostrar visitantes recientes</b></label>
                                        </p>
										<small>Tu post mostrar&aacute; los &uacute;ltimos visitantes que ha tenido</small>
                                    </div>
									<div class="control">  
                                        <p>
                                            <label class="checkbox" for="smileys">
											<input type="checkbox" tabindex="9" name="smileys" id="smileys" class="checkbox" {if $tsDraft.b_smileys == 1}checked={/if}>
											<b>Sin Smileys</b></label>
                                        </p>
										<small>Si tu post no necesita smileys, desact&iacute;valos.</small>
                                    </div>
                                    {if $tsUser->is_admod == 1}
                                    <div class="control">  
                                        <p>
                                            <label class="checkbox" for="patrocinado">
											<input type="checkbox" tabindex="9" name="patrocinado" id="patrocinado" class="checkbox" {if $tsDraft.b_sponsored == 1}checked="checked"{/if} >
                                        <b>Patrocinado</b></label>
                                        </p>
										<small>Resalta este post entre los dem&aacute;s.</small>
                                    </div>
                                    {/if}
                                    {if $tsUser->is_admod || $tsUser->permisos.most}
                                    <div class="control">  
                                        <p>
                                            <label class="checkbox" for="sticky">
											 <input type="checkbox" tabindex="7" name="sticky" id="sticky" class="checkbox" {if $tsDraft.b_sticky == 1}checked="checked"{/if} >
											<b>Sticky</b></label>
                                        </p>
										<small>Colocar a este post fijo en la home.</small>
                                    </div>
                                    {/if}
                                    </li>
									</div></div>						
                                </ul>
								<hr>
                                <div class="box">
                                    <input type="button" tabindex="9" title="Guardar en borradores" value="Guardar en borradores" onclick="save_borrador()" class="button is-primary" id="borrador-save">
                                	<input type="button" tabindex="8" title="Previsualizar" value="Continuar &raquo;" name="preview" class="button is-info" style="width: auto; margin-left: 5px;">
                            <div id="borrador-guardado" style="float: right; font-style: italic; margin: 7px 0pt 0pt;"></div>
                                </div>
                            </form>
                        </div>
						{else}
						<div class="emptyData clearfix">
                    	Lo sentimos, pero no puedes publicar un nuevo post.
						</div>
						{/if}