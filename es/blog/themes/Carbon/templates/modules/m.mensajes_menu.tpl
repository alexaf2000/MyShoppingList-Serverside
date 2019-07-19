            	<div class="column is-3">
           			<div class="box">
                            <p class="menu-label">Men&uacute;</p>
                        <div id="admin_menu">
                            <ul id="mp-menu" class="cat-list menu-list">
                                <li><a class="{if $tsAction == ''} is-active{/if}" href="{$tsConfig.url}/mensajes/"><span class="icon is-small"><i class="fa fa-inbox"></i></span><span>Mensajes Recibidos</span></a></li>
                                <li><a class="{if $tsAction == 'enviados'} is-active{/if}" href="{$tsConfig.url}/mensajes/enviados/"><span class="icon is-small"><i class="fa fa-share"></i></span><span>Mensajes Enviados</span></a></li>
                                <li><a class="{if $tsAction == 'respondidos'} is-active{/if}" href="{$tsConfig.url}/mensajes/respondidos/"><span class="icon is-small"><i class="fa fa-reply"></i></span><span>Mensajes Respondidos</span></a></li>
                                <hr>
                                {if $tsAction == 'search'}<li class="mp_search"><span class="cat-title"><a class="" href="#"><span class="icon is-small"><i class="fa fa-search"></i></span><span>Resultados de b&uacute;squeda</a></span></li>{/if}                         
                                <li><a href="#" onclick="mensaje.nuevo('','','',''); return false;"><span class="icon is-small"><i class="fa fa-pencil-square-o"></i></span><span>Escribir Nuevo Mensaje</span></a></li>
                                <hr>
                                <li><a class="{if $tsAction == 'avisos'} is-active{/if}" href="{$tsConfig.url}/mensajes/avisos/"><span class="icon is-small"><i class="fa fa-warning"></i></span><span>Avisos/Alertas</span></a></li>
                            </ul>
                        </div>
                    </div>
                    {if $tsMensajes}
                    <br />
                    <center>
                    {$tsConfig.ads_160}
                    </center>
                    {/if}
                </div>
