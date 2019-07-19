									<h3 class="title">Buscador de Contenido</h3>
								<div id="res" class="boxy-content">
									{if !$tsAct}
									<div class="columns notification is-info">
								<div class="column is-1 has-text-centered">
								<span class="icon is-large"><i class="fa fa-info-circle"></i></span>
								</div>
								<div class="column is-11">Esa herramienta le mostrar&aacute; las coindicencias del contenido o ip en una publicaci&oacute;n de un muro, usuario, post, foto o comentario.
									 </div>
								</div>
									 <hr>
									 <p style="font-weight:bold;">IP</p>
									 <p>Se mostrar&aacute; todo el contenido relacionado con la IP introducida, si es parecida (parcial), o exactamente la misma (exacta).
									 <hr>
									 <p style="font-weight:bold;">Texto</p>
									 <p>El usuario se mostrar&aacute; por nombre.</p>
									 <p>En el muro, se buscar&aacute; por contenido de la publicaci&oacute;n</p>
									 <p>En los posts y las fotos, se buscar&aacute; por t&iacute;tulo o contenido/descripci&oacute;n.</p>
									 <p>En los comentarios, se buscar&aacute; por contenido o autor del comentario. Para buscar al autor, se introduce el ID de &eacute;ste.</p>
									<hr class="separator" />
									<form action="" method="post">
									<p class="control">
										<input class="input" type="search" name="texto" required></p>
											<div class="select">
											<select name="m">
												<option value="1">Parcial</option>
												<option value="2">Exacta</option>
											</select>
											</div>
											<div class="select">
											<select name="t">
												<option value="1">IP</option>
												<option value="2">Texto</option>
											</select></div>
											
										<input type="submit" name="buscar" value="Buscar Contenido" class="button is-primary"/>
									</form>
									{elseif $tsAct == 'search'}
									<form action="" method="post">
									<input class="input"  type="search" name="texto" value="{$tsContenido.contenido}" required>
									<div class="select">
									<select name="m">
									<option value="1" {if $tsContenido.metodo == 1}selected{/if}>Parcial</option>
									<option value="2" {if $tsContenido.metodo != 1}selected{/if}>Exacta</option>
									</select></div>
									<div class="select">
									<select name="t">
									<option value="1" {if $tsContenido.tipo == 1}selected{/if}>IP</option>
									<option value="2" {if $tsContenido.tipo != 1}selected{/if}>Texto</option>
									</select></div>
									<input type="submit" name="buscar" value="Buscar Contenido" class="button is-primary"/>
									</form>
									<hr class="separator" />
                                    <table cellpadding="0" cellspacing="0" border="0" class="admin_table table" id="usuarios">
                                    	<thead>
                                        	<th>Usuario</th>
											<th>IP</th>
											<th>Fecha</th>
                                            <th>Acciones</th>
                                        </thead>
                                        <tbody>
                                        	{if $tsContenido.usuarios}{foreach from=$tsContenido.usuarios item=u}
                                            <tr>
                                                <td><a href="{$tsConfig.url}/perfil/{$u.user_name}"   uid="{$u.user_id}">{$u.user_name}</a></td>
                                                <td><a href="http://oxi.mx/g/{$u.user_last_ip}" class="geoip" title="Información de IP" target="_blank">{$u.user_last_ip}</a></td>
												<td>{$u.user_lastlogin|hace:true}</td>
                                                <td class="admin_actions">
                                               <a href="#" onclick="mod.users.action({$u.user_id}, 'ban', false); return false;"><i class="fa fa-ban" title="Suspender Usuario"></i></a>
                                                </td>
                                            </tr>
                                            {/foreach}{else}
                                            <tr>
                                                <td colspan="5"><div class="notification is-info">No hay coincidencias en Usuarios.</div></td>
                                            </tr>
                                            {/if}
                                        </tbody>
                                        <tfoot>
                                            <th colspan="5">&nbsp;</th>
                                        </tfoot>
                                    </table>
									<hr/>
									<table cellpadding="0" cellspacing="0" border="0" class="admin_table table" id="muro">
                                    	<thead>
                                        	<th>Autor</th>
											<th>Contenido</th>
											<th>IP</th>
											<th>Fecha</th>
                                        </thead>
                                        <tbody>
                                        	{if $tsContenido.muro}{foreach from=$tsContenido.muro item=m}
                                            <tr>
                                                <td><a href="{$tsConfig.url}/perfil/{$m.user_name}" uid="{$m.user_id}">{$m.user_name}</a></td>
                                                <td>{$m.p_body}</td>
												<td><a href="http://oxi.mx/g/{$m.p_ip}" class="geoip" title="Información de IP" target="_blank">{$m.p_ip}</a></td>
												<td>{$m.p_date|hace:true}</td>
                                            </tr>
                                            {/foreach}{else}
                                            <tr>
                                                <td colspan="5"><div class="notification is-info">No hay coincidencias en Muro.</div></td>
                                            </tr>
                                            {/if}
                                        </tbody>
                                        <tfoot>
                                            <th colspan="5">&nbsp;</th>
                                        </tfoot>
                                    </table>
									<hr class="separator" />
                                    <table cellpadding="0" cellspacing="0" border="0" class="admin_table table" id="posts">
                                    	<thead>
                                        	<th>Post</th>
											<th>Autor</th>
											<th class="is-hidden-touch">IP</th>
											<th class="is-hidden-touch">Fecha</th>
                                            <th>Acciones</th>
                                        </thead>
                                        <tbody>
                                        	{if $tsContenido.posts}{foreach from=$tsContenido.posts item=p}
                                            <tr id="report_{$r.obj_id}">
                                                <td><a href="{$tsConfig.url}/posts/{$p.c_seo}/{$p.post_id}/{$p.post_title|seo}.html" target="_blank">{$p.post_title}</a></td>
												<td><a href="{$tsConfig.url}/perfil/{$p.user_name}"   uid="{$p.post_user}">{$p.user_name}</a></td>
                                                <td class="is-hidden-touch"><a href="http://oxi.mx/g/{$p.post_ip}" class="geoip" title="Información de IP" target="_blank">{$p.post_ip}</a></td>
												<td class="is-hidden-touch">{$p.post_date|hace:true}</td>
                                                <td class="admin_actions">
													<a href="#" onclick="mod.posts.borrar({$p.post_id}, 'posts'); return false"><i class="fa fa-trash" title="Borrar Post"></i></a>
                                                </td>
                                            </tr>
                                            {/foreach}{else}
                                            <tr>
                                                <td colspan="5"><div class="notification is-info">No hay coincidencias en Posts.</div></td>
                                            </tr>
                                            {/if}
                                        </tbody>
                                        <tfoot>
                                            <th colspan="5">&nbsp;</th>
                                        </tfoot>
                                    </table>
									<hr>
                                    <table cellpadding="0" cellspacing="0" border="0" class="admin_table table" id="p_comentarios">
                                    	<thead>
                                        	<th>Comentario</th>
											<th>Autor</th>
											<th class="is-hidden-touch">IP</th>
											<th class="is-hidden-touch">Fecha</th>
                                            <th class="is-hidden-touch">Acciones</th>
                                        </thead>
                                        <tbody>
                                        	{if $tsContenido.p_comentarios}{foreach from=$tsContenido.p_comentarios item=c}
                                            <tr id="comentario_{$c.cid}">
                                                <td>{$c.c_body|truncate:100}</td>
												<td><a href="{$tsConfig.url}/perfil/{$c.user_name}"   uid="{$c.c_user}">{$c.user_name}</a></td>
                                                <td class="is-hidden-touch"><a href="http://oxi.mx/g/{$c.c_ip}" class="geoip" title="Información de IP" target="_blank">{$c.c_ip}</a></td>
												<td class="is-hidden-touch">{$c.c_date|hace:true}</td>
                                                <td class="admin_actions is-hidden-touch">
                                                    <a href="#" onclick="ocultar_com({$c.cid}, {$c.user_id}); return false"><i class="fa fa-eye" title="Mostrar/Ocultar Comentario"></i></a>
                                                </td>
                                            </tr>
                                            {/foreach}{else}
                                            <tr>
                                                <td colspan="5"><div class="notification is-info">No hay coincidencias en comentarios de Posts.</div></td>
                                            </tr>
                                            {/if}
                                        </tbody>
                                        <tfoot>
                                            <th colspan="5">&nbsp;</th>
                                        </tfoot>
                                    </table>
                                    {/if}
                                </div>