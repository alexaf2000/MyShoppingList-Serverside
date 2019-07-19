{include file='sections/main_header.tpl'}
                <div class="columns">
                {include file='modules/m.mensajes_menu.tpl'}
                <div class="column is-9">
                	<div style="display: none;" id="m-mensaje"></div>
                    <div class="box">
                            <h3 class="title is-pulled-left">Mensajes</h3>
                            <form method="get" action="{$tsConfig.url}/mensajes/search/">
                                <input type="text" name="qm" placeholder="Buscar en Mensajes" title="Buscar en Mensajes" value="{$tsMensajes.texto}" class="mpb input is-small"/>
							</form>
							<div class="is-clearfix"></div>
                        <div class="boxy-content" style="padding:0" id="mensajes">
                            {if $tsAction == '' || $tsAction == 'enviados' || $tsAction == 'respondidos' || $tsAction == 'search'}
                            {include file='modules/m.mensajes_list.tpl'}
                            {elseif $tsAction == 'leer'}
                            {include file='modules/m.mensajes_leer.tpl'}
                            {elseif $tsAction == 'avisos'}
                            {include file='modules/m.mensajes_avisos.tpl'}
                            
                            {/if}
						</div>
						<div class="is-clearfix"></div>
                    </div>
                </div> </div>             
{include file='sections/main_footer.tpl'}