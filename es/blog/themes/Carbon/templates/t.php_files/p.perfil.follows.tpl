1:
{if $tsHide != 'true'}<div id="perfil_{$tsType}" class="widget" status="activo">{/if}
        <h2 class="subtitle is-5">{if $tsType == 'seguidores'}Usuarios que siguen a {$tsUsername}{else}Usuarios que {$tsUsername} sigue{/if}</h2>
    {if $tsData.data}
    <ul class="listado">
        {foreach from=$tsData.data item=u}
        <li class="box ultimos_post seguidor">
        	<div class="listado-content clearfix">
        		<div >
        			<a href="{$tsConfig.url}/perfil/{$u.user_name}">
					<figure class="image is-48x48 perfil">
					<img src="{$tsConfig.url}/files/avatar/{$u.user_id}_120.jpg" class="round"/></a>
        			</figure>
					<p class="has-text-centered"><a href="{$tsConfig.url}/perfil/{$u.user_name}"><b>{$u.user_name}</b></a></p>
        			<p class="has-text-centered"><em>{$u.p_mensaje}</em></p>
        		</div>
        	</div>
        </li>
        {/foreach}
        <li class="listado-paginador clearfix">
    		{if $tsData.pages.prev != 0}<a href="#" onclick="perfil.follows('{$tsType}', {$tsData.pages.prev}); return false;" class="anterior-listado floatL">Anterior</a>{/if}
    		{if $tsData.pages.next != 0}<a href="#" onclick="perfil.follows('{$tsType}', {$tsData.pages.next}); return false;" class="siguiente-listado floatR">Siguiente</a>{/if}
        </li>
    </ul>
    {else}
    <div class="notification is-info has-text-centered"><span class="icon"><i class="fa fa-exclamation-circle"></i></span><span>{if $tsType == 'seguidores'}No tiene seguidores{else}No sigue usuarios{/if}</span></div>
    {/if}    
{if $tsHide != 'true'}</div>{/if}