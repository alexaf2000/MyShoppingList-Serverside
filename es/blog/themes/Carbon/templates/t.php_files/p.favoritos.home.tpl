{include file='sections/main_header.tpl'}
				<script type="text/javascript" src="{$tsConfig.js}/favoritos.js"></script>
				<script type="text/javascript">
                var favoritos_data = [{$tsFavoritos}];
                </script>
                <div class="columns">
                    {if !$tsFavoritos}<div class="column is-12 notification is-info has-text-centered"><span class="icon"><i class="fa fa-exclamation-circle"></i></span><span>No agregaste ning&uacute;n post a favoritos todav&iacute;a</span></div>{else}
                    <div id="izquierda" class="column is-3">
                        <div class="categoriaList home">
                        	<ul>
	                            <li class="panel-heading" id="cat_-1"><a href="" onclick="favoritos.active(this); favoritos.categoria = 'todas'; favoritos.query(); return false;">Categor&iacute;as</a></li>
                               <li class="panel-block"><input type="text" placeholder="Buscar..." class="input" autocomplete="off" onblur="favoritos.search_blur()" onfocus="favoritos.search_focus()" onkeyup="favoritos.search(this.value, event)" value=""  id="favoritos-search">
                        </li>
                            </ul>
                        </div>
                    </div>
                    <div id="centroDerecha" class="column is-9">
                        <div id="resultados" class="box">
                            <table class="table">
                    
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th style="text-align:left;width:350px;overflow:hidden;"><a href="" onclick="favoritos.active2(this); favoritos.orden = 'titulo'; favoritos.query(); return false;">T&iacute;tulo</a></th>
                                        <th class="is-hidden-touch"><a href="" onclick="favoritos.active2(this); favoritos.orden = 'fecha_creado'; favoritos.query(); return false;">Creado</a></th>
                                        <th class="is-hidden-touch"><a href="" onclick="favoritos.active2(this); favoritos.orden = 'fecha_guardado'; favoritos.query(); return false;" class="here">Guardado</a></th>
                                        <th><a href="" onclick="favoritos.active2(this); favoritos.orden = 'puntos'; favoritos.query(); return false;">Puntos</a></th>
                                        <th class="is-hidden-touch"><a href="" onclick="favoritos.active2(this); favoritos.orden = 'comentarios'; favoritos.query(); return false;">Comentarios</a></th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody></tbody>
                            </table>
                        </div>
                    </div>
                    {/if}
                </div>               
{include file='sections/main_footer.tpl'}