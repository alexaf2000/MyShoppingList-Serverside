{include file='sections/main_header.tpl'}
        {literal}
        <script type="text/javascript">
        var buscador = {
            // {/literal}
        	tipo: '{if !$tsEngine}web{$tsEngine}{/if}',
            // {literal}
        	select: function(tipo){
        		if(this.tipo==tipo)
        			return;
        
        		//Cambio de action form
        		//$('form[name="buscador"]').attr('action', '?e='+tipo+'');
                $('input[name="e"]').val(tipo);
        
        		//Solo hago los cambios visuales si no envia consulta
        		if(!this.buscadorLite){
        			//Cambio here en <a />
        			$('a#select_' + this.tipo).removeClass('is-active');
        			$('a#select_' + tipo).addClass('is-active');
        
        			//Cambio de logo
        			$('img#buscador-logo-'+this.tipo).css('display', 'none');
        			$('img#buscador-logo-'+tipo).css('display', 'inline');
        
        		}
        
        		//Muestro/oculto los input google
        		if(tipo=='google'){ 
                    //Ahora es google {/literal}
        			$('form[name="buscador"]').append('<input type="hidden" name="cx" value="{$tsConfig.ads_search}" /><input type="hidden" name="cof" value="FORID:10" /><input type="hidden" name="ie" value="ISO-8859-1" />');
                    // {literal}
        		}else if(this.tipo=='google'){ //El anterior fue google
        			$('input[name="cx"]').remove();
        			$('input[name="cof"]').remove();
        			$('input[name="ie"]').remove();
        		}
        
        		this.tipo = tipo;
        	}
        }
        </script>
        {/literal}
        {if $tsQuery || $tsAutor}
        <div id="buscadorLite" class="box">
        	<div class="searchCont">
        		<form action="" method="GET" name="buscador">
        			<div class="searchFil">
        				<div class="nav has-shadow">
                        <label class="nav-left">
                        <a href="javascript:buscador.select('web')" id="select_web" class="nav-item is-tab  {if !$tsEngine || $tsEngine == 'web'}is-active{/if}"><span class="icon is-small"><i class="fa fa-bullseye"></i></span><span>{$tsConfig.titulo}</span></a>
        			     <a href="javascript:buscador.select('tags')" id="select_tags" class="nav-item is-tab  {if $tsEngine == 'tags'}is-active{/if}"><span class="icon is-small"><i class="fa fa-tags"></i></span><span>Tags</span></a>
						 </label>
                        </div>
                        <div class="section">
                            <div class="control has-addons">
                                <input placeholder="Buscar..." type="text" value="{$tsQuery}"  class="input  is-expanded" size="25" name="q"/>
        						<input type="submit" title="Buscar" value="Buscar" class="button is-dark "/>
                                <input type="hidden" name="e" value="{$tsEngine}" />
                                {if $tsEngine == 'google'}
                                <input type="hidden" name="cx" value="{$tsConfig.ads_search}" /><input type="hidden" name="cof" value="FORID:10" /><input type="hidden" name="ie" value="ISO-8859-1" />
                                {/if}
        					</div><!-- End Filter -->
                            <div class="control is-horizontal">
                                <div class="control-label">
                                    <label class="label">Categoria</label></div>
								<div class="control is-grouped">
                                	<div class="select">							
        							<select name="cat">
        								<option value="-1">Todas</option>
                                        {foreach from=$tsConfig.categorias item=c}
                                        <option value="{$c.cid}"{if $tsCategory == $c.cid} selected="true"{/if}>{$c.c_nombre}</option>
                                        {/foreach}
        							</select>
									</div></div>
        							<span id="filtro_autor" class="control-label">
        								<label class="label">Usuario</label></span>
										<div class="control is-grouped">
        								<input class="input" type="text" name="autor" value="{$tsAutor}"/>
										</div>
                            </div><!-- End SearchFill -->
                        </div>
                    </div><!-- End SearchFill -->
              </form>
              </div>
        </div>
            {if $tsEngine == 'google'}
        <div id="cse-search-results"></div>
        <script type="text/javascript">
          var googleSearchIframeName = "cse-search-results";
          var googleSearchFormName = "cse-search-box";
          var googleSearchFrameWidth = '940';
          var googleSearchDomain = "www.google.com.mx";
          var googleSearchPath = "/cse";
        </script>
        <script type="text/javascript" src="http://www.google.com/afsonline/show_afs_search.js"></script>
            {else}
        <div id="resultados" class="box">
            <div id="showResult">
			<p class="title is-5">Mostrando <strong>{$tsResults.total}</strong> de <strong>{$tsResults.pages.total}</strong> resultados totales</p>
              <div class="columns">  
				<div class="column is-9">
                    {foreach from=$tsResults.data item=r}
                    <div class="media" id="div_{$r.post_id}">
                        <div class="media-left"><a class="image is-128x128" href="{$tsConfig.url}/posts/{$r.c_seo}/{$r.post_id}/{$r.post_title|seo}.html"><img src="{$r.post_portada}"/></a></div>
                        <div class="media-content">
                            <a class="title is-4" href="{$tsConfig.url}/posts/{$r.c_seo}/{$r.post_id}/{$r.post_title|seo}.html">{$r.post_title}</a>
                            <div class="info">
                                <i class="fa fa-clock-o" aria-hidden="true"></i> <strong>{$r.post_date|hace:true}</strong> -
                                <i class="fa fa-retweet" aria-hidden="true"></i> <a href="{$tsConfig.url}/buscador/?q={$r.post_title}&e={$tsEngine}&cat={$tsCategory}&autor={$tsAutor}">Relacionados</a> -
                                <i class="fa fa-fw fa-user"></i><a href="{$tsConfig.url}/perfil/{$r.user_name}"> {$r.user_name}</a>
                            </div>
                        </div>
                    </div>
                    {/foreach}
				            <div class="pagination">
                {if $tsResults.pages.prev != 0}<div><a class="button" href="{$tsConfig.url}/buscador/?page={$tsResults.pages.prev}{if $tsQuery}&q={$tsQuery}{/if}{if $tsEngine}&e={$tsEngine}{/if}{if $tsCategory}&cat={$tsCategory}{/if}{if $tsAutor}&autor={$tsAutor}{/if}">&laquo; Anterior</a></div>{/if}
				{if $tsResults.pages.prev != 0}<ul></ul>{/if}
          		{if $tsResults.pages.next != 0}<div><a class="button" href="{$tsConfig.url}/buscador/?page={$tsResults.pages.next}{if $tsQuery}&q={$tsQuery}{/if}{if $tsEngine}&e={$tsEngine}{/if}{if $tsCategory}&cat={$tsCategory}{/if}{if $tsAutor}&autor={$tsAutor}{/if}">Siguiente &raquo;</a></div>{/if}
            </div>
            </div>
					<div class="column is-3">
            <center>{$tsConfig.ads_160}<center>
        </div>
        </div>
		</div>
		</div>
            {/if}
        {else}
        <div id="buscadorBig" class="box">
        	<div class="searchCont">
        		<form action="" method="GET" name="buscador" style="padding: 0pt; margin: 0pt;">
        			<div class="searchFil">
        				<div class="nav has-shadow">
        					<label class="nav-left">
							<a href="javascript:buscador.select('web')" id="select_web" class="nav-item is-tab is-active"><span class="icon is-small"><i class="fa fa-bullseye"></i></span><span>{$tsConfig.titulo}</span></a>
        					<a href="javascript:buscador.select('tags')" id="select_tags" class="nav-item is-tab" ><span class="icon is-small"><i class="fa fa-tags"></i></span><span>Tags</span></a>
        					</label>
        				</div>
        				<div class="section">
        					<div class="control has-addons">
        						<input placeholder="Buscar..." type="text" value="" class="input is-expanded" size="25" name="q"/>
        						<input type="submit" title="Buscar" value="Buscar" class="button is-dark "/>
                                <input type="hidden" name="e" value="web" />
        					</div>
        					<!-- End Filter -->
							 <div class="control is-horizontal">
                                <div class="control-label">
                                    <label class="label">Categoria</label></div>
								<div class="control is-grouped">
                                	<div class="select">							
        							<select name="cat">
        								<option value="-1">Todas</option>
                                        {foreach from=$tsConfig.categorias item=c}
                                        <option value="{$c.cid}">{$c.c_nombre}</option>
                                        {/foreach}
        							</select>
									</div></div>
        							<span id="filtro_autor" class="control-label">
        								<label class="label">Usuario</label></span>
										<div class="control is-grouped">
        								<input class="input" type="text" name="autor" value="{$tsAutor}"/>
										</div></div>
        					<!-- End SearchFill -->
        				</div>
        			</div>
        			<!-- End SearchFill -->
        		</form>
        	</div>
        </div>
        {/if}               
{include file='sections/main_footer.tpl'}