1:
<div id="perfil_posts" status="activo">
    <div class="widget w-posts clearfix">
            <h3 class="subtitle is-5">&Uacute;ltimos Posts creados por {$tsUsername}</h3>
        {if $tsGeneral.posts}
        <ul class="ultimos">
            {foreach from=$tsGeneral.posts item=p}
        	<li class="panel-block">
			<p> 
			<span class="icon">
			<img src="{$tsConfig.tema.t_url}/images/icons/cat/{$p.c_img}" />
			</span>
            <a class="title is-5" title="{$p.post_title}" target="_self" href="{$tsConfig.url}/posts/{$p.c_seo}/{$p.post_id}/{$p.post_title|seo}.html">	
					{$p.post_title|truncate:45}</a><br>
				<span class="subtitle is-6">Puntos: {$p.post_puntos} <span class="icon is-small"><i class="fa fa-money"></i></span></span>
             </p>   
            </li>
            {/foreach}
            {if $tsGeneral.total >= 18}
            <li class="see-more"><a href="{$tsConfig.url}/buscador/?autor={$tsGeneral.username}">Ver m&aacute;s &raquo;</a></li>
            {/if}
        </ul>
        {else}
        <div class="emptyData">No hay posts</div>
        {/if}
    </div>
</div>