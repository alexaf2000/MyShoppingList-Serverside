{include file='sections/main_header.tpl'}

				<script type="text/javascript" src="{$tsConfig.js}/borradores.js"></script>
                <div id="borradores" class="columns">
                	<script type="text/javascript">
					var borradores_data = [{$tsDrafts}];
					</script>
                    	<div class="column is-3">
                   			<div class="box menu">
                                    <p class="subtitle is-6">Filtrar</p>
                                    <p class="menu-label">Mostrar</p>
                    
                                    <ul class="menu-list" id="borradores-filtros">
                                        <li id="todos"><p><a class="is-active" href="" onclick="borradores.active(this); borradores.filtro = 'todos'; borradores.query(); return false;">Todos <span class="count"></span></a></p> </li>
                                        <li id="borradores"><p><a href="" onclick="borradores.active(this); borradores.filtro = 'borradores'; borradores.query(); return false;">Borradores <span class="count"></span></a></p> </li>
                                        <li id="eliminados"><p><a href="" onclick="borradores.active(this); borradores.filtro = 'eliminados'; borradores.query(); return false;">Eliminados <span class="count"></span></a></p> </li>
                                    </ul>
                                    <p class="menu-label">Ordenar por</p>
                    
                                    <ul id="borradores-orden" class="menu-list">
                                        <li class="active"><span><a href="" onclick="borradores.active(this); borradores.orden = 'fecha_guardado'; borradores.query(); return false;">Fecha guardado</a></span></li>
                                        <li><p><a href="" onclick="borradores.active(this); borradores.orden = 'titulo'; borradores.query(); return false;">T&iacute;tulo</a></p></li>
                                        <li><p><a href="" onclick="borradores.active(this); borradores.orden = 'categoria'; borradores.query(); return false;">Categor&iacute;a</a></p></li>
                                    </ul>
                                    <p class="menu-label">Categorias</p>
                    
                                    <ul class="menu-list" id="borradores-categorias">
                                        <li id="todas" class="active"><p><a class="is-active" href="" onclick="borradores.active(this); borradores.categoria = 'todas'; borradores.query(); return false;">Ver todas <span class="count"></span></a> </p></li>
                                    </ul>
                            </div>
                        </div>
                        <div class="column is-9">
                            <div class="box">
                                    <h3 class="title is-3 is-pulled-left">Posts</h3>
                                    <input class="input mpb" placeholder="Buscar.." type="text" id="borradores-search" value="" onKeyUp="borradores.search(this.value, event)" onFocus="borradores.search_focus()" onBlur="borradores.search_blur()" autocomplete="off" />
                                <div class="is-clearfix"></div>
                                <div id="res">
                                 	{if $tsDrafts}<ul id="resultados-borradores"></ul>{else}
                                    <div class="notification is-info has-text-centered"><span class="icon"><i class="fa fa-exclamation-circle"></i></span><span>No tienes ning&uacute;n borrador ni post eliminado.</span></div>{/if}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="template-result-borrador" style="display:none">
                        <li class="media" id="borrador_id___id__">
						<div class="media-left">
						<figure class="image is-16x16"><img src="{$tsConfig.tema.t_url}/images/icons/cat/__imagen__"/></figure>
						</div>
						<div class="media-content">
                            <a title="__categoria_name__" class="categoriaPost __categoria__ __tipo__" href="__url__" onclick="__onclick__">__titulo__</a>
                            <span class="causa">Causa: __causa__</span>
                            <span class="gray">&Uacute;ltima vez guardado el __fecha_guardado__</span> 
						</div>
						<div class="media-right">
							<a style="float:right" href="" onclick="borradores.eliminar(__borrador_id__, true); return false;"><i class="delete"></i></a>
                        </div>
                        </li>
                </div>     
{include file='sections/main_footer.tpl'}