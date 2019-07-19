{include file='sections/main_header.tpl'}
                <div id="resultados" class="resultadosFull"> 
                    <div class="columns">
                    <div id="showResult" class="column is-9">
					<div class="section">
					<p class="title is-5">Mostrando <strong>{$tsTotal}</strong> resultados de <strong>{$tsPages.total}</strong></p>
                            {if $tsUsers}
                                {foreach from=$tsUsers item=u}
                                <li class="box miembro">
								<div class="media" style="margin-bottom: 20px;">
                                <div class="media-left">
								<figure class="image is-48x48"><img src="{$tsConfig.url}/files/avatar/{$u.user_id}_120.jpg" class="round"/>
								<span class="status2 {$u.status.css} icon is-small" title="{$u.status.t}"><i class="fa fa-circle"></i></span>
								</figure>
                                </div>
                                <div class="media-content">
                                 <p class="title is-4"> <a href="{$tsConfig.url}/perfil/{$u.user_name}">{$u.user_name}</a>
								  {if $u.user_id != $tsUser->uid}<a class="button is-primary is-pulled-right" href="#" onclick="{if !$tsUser->is_member}registro_load_form();{else}mensaje.nuevo('{$u.user_name}','','','');{/if}return false"><i class="fa fa-paper-plane-o"></i></a>{/if}         
								 </p>
                                 <p class="subtitle is-5"><figure class="image rango is-16x16"><img src="{$tsConfig.default}/images/icons/ran/{$u.rango.image}"/></figure><span style="color:#{$u.rango.color}">{$u.rango.title}</span></p>
			                        </div>
                                </div>
                                <nav class="level is-mobile">
                                <div class="level-item has-text-centered"><p class="heading">Posts</p><p class="title">{$u.user_posts}</p></div>
                                <div class="level-item has-text-centered"><p class="heading">Puntos</p><p class="title">{$u.user_puntos}</p></div>
								<div class="level-item has-text-centered"><p class="heading">Comentarios</p><p class="title">{$u.user_comentarios}</p></div>
								</nav>
                        		</li>
                                {/foreach}
                            {else}
                                <div class="notification is-info has-text-centered">No se encontraro usuarios con los filtros seleccionados.</div>
                            {/if}
                            <div class="paginador">
                        		{if $tsPages.prev != 0}<div style="text-align:left" class="floatL"><a href="{$tsConfig.url}/usuarios/?page={$tsPages.prev}{if $tsFiltro.online == 'true'}&online=true{/if}{if $tsFiltro.avatar == 'true'}&avatar=true{/if}{if $tsFiltro.sex}&sex={$tsFiltro.sex }{/if}{if $tsFiltro.pais}&pais={$tsFiltro.pais}{/if}{if $tsFiltro.rango}&rango={$tsFiltro.rango}{/if}">&laquo; Anterior</a></div>{/if}
                        		{if $tsPages.next != 0}<div style="text-align:right" class="floatR"><a href="{$tsConfig.url}/usuarios/?page={$tsPages.next}{if $tsFiltro.online == 'true'}&online=true{/if}{if $tsFiltro.avatar == 'true'}&avatar=true{/if}{if $tsFiltro.sex}&sex={$tsFiltro.sex }{/if}{if $tsFiltro.pais}&pais={$tsFiltro.pais}{/if}{if $tsFiltro.rango}&rango={$tsFiltro.rango}{/if}">Siguiente &raquo;</a></div>{/if}
                              </div>
                            </div>
                    </div>
					        <div class="column is-3">
							<nav class="panel home">
                            <form action="" method="get" class="clear">
                            <p class="panel-heading">Filtrar:</p>
                                <label class="panel-block"><input type="checkbox" name="online" value="true" {if $tsFiltro.online == 'true'}checked="true"{/if}/>En linea</label>
                                <label class="panel-block"><input type="checkbox" value="true" name="avatar" {if $tsFiltro.avatar == 'true'}checked="true"{/if}/>Con foto</label> 
                                <label class="panel-block"><input type="radio" name="sexo" value="m" {if $tsFiltro.sex == 'm'}checked="true"{/if}/>Hombre</label> 
                                <label class="panel-block"><input type="radio" name="sexo" value="f" {if $tsFiltro.sex == 'f'}checked="true"{/if}/> Mujer</label> 
                                <label class="panel-block"><input type="radio" name="sexo" value="" {if $tsFiltro.sex == ''}checked="true"{/if}/>Ambos</label>
                                <label class="panel-block"><span class="select"><select name="pais" id="pais"><option value="">Todos los Pa&iacute;ses...</option>{foreach from=$tsPaises key=code item=pais}<option value="{$code}" {if $tsFiltro.pais == $code}selected="true"{/if}>{$pais}</option>{/foreach}</select></span></label>
                                <label class="panel-block"><span class="select"><select name="rango" id="rango"><option value="">Todos los Rangos...</option>{foreach from=$tsRangos item=r}<option value="{$r.rango_id}" {if $tsFiltro.rango == $r.rango_id}selected="true"{/if}>{$r.r_name}</option>{/foreach}</select></span></label>
                                <div class="panel-block"><input type="submit" class="button is-primary is-outlined is-fullwidth" value="Filtrar" /></div>
                            </form>
							</nav>
						 <div>
                        {$tsConfig.ads_160}
                    </div>
                        </div>
                </div></div>
{include file='sections/main_footer.tpl'}