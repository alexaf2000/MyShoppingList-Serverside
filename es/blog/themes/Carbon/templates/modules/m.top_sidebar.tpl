                	<div class="box menu">
                        	<p class="subtitle is-6">Filtrar</p>
                        	<p class="menu-label">Categor&iacute;a</p>
							<div class="select">
                            <select onchange="location.href='{$tsConfig.url}/top/{$tsAction}/?fecha={$tsFecha}&cat='+$(this).val()">
                            <option value="0">Todas</option>
                            {foreach from=$tsConfig.categorias item=c}
                                <option value="&cat={$c.cid}" {if $tsCat == $c.cid}selected="selected"{/if}>{$c.c_nombre}</option>
                            {/foreach}
                            </select>
                            </div>
                            <p class="menu-label">Per&iacute;odo</p>
                            <ul class="menu-list">
                                <li><a href="{$tsConfig.url}/top/{$tsAction}/?fecha=2&cat={$tsCat}&sub={$tsSub}" {if $tsFecha == 2}class="is-active"{/if}>Ayer</a></li>
                                <li><a href="{$tsConfig.url}/top/{$tsAction}/?fecha=1&cat={$tsCat}&sub={$tsSub}" {if $tsFecha == 1}class="is-active"{/if}>Hoy</a></li>
                                <li><a href="{$tsConfig.url}/top/{$tsAction}/?fecha=3&cat={$tsCat}&sub={$tsSub}" {if $tsFecha == 3}class="is-active"{/if}>&Uacute;ltimos 7 d&iacute;as</a></li>
                                <li><a href="{$tsConfig.url}/top/{$tsAction}/?fecha=4&cat={$tsCat}&sub={$tsSub}" {if $tsFecha == 4}class="is-active"{/if}>Del mes</a></li>
                                <li><a href="{$tsConfig.url}/top/{$tsAction}/?fecha=5&cat={$tsCat}&sub={$tsSub}" {if $tsFecha == 5}class="is-active"{/if}>Todos los tiempos</a></li>
                            </ul>
                    </div>