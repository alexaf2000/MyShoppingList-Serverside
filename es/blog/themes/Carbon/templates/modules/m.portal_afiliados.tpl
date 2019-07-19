					<nav class="panel home" id="webAffs">
                            <p class="panel-heading">Afiliados</p>
                            <div class="wMod-data">
                                <ul>
                                {foreach from=$tsAfiliados item=af}
                                <li class="panel-block has-text-centered"><a href="#" onclick="afiliado.detalles({$af.aid}); return false;" title="{$af.a_titulo}">
                                    <img src="{$af.a_banner}" width="190" height="40"/>
                                </a></li>
                                {/foreach}
                                </ul>
                            </div>
                            <div class="panel-block"><a class="button is-primary is-outlined is-fullwidth" onclick="afiliado.nuevo(); return false">Afiliate a {$tsConfig.titulo}</a></div>
                    </nav>