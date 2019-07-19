1:
<div id="perfil_medallas" class="widget" status="activo">
        <h2 class="subtitle is-5">Medallas de {$tsUsername} ({$tsMedallas.total})</h2>
    {if $tsMedallas.medallas}
        <ul class="listado">
        {foreach from=$tsMedallas.medallas item=m}
        <li class="box ultimos_post seguidor">
        	<div class="listado-content clearfix">
        		<div>
				<figure class="image is-48x48 perfil">
        			<img src="{$tsConfig.tema.t_url}/images/icons/med/{$m.m_image}_32.png" class="qtip" title="{$m.medal_date|hace:true}"/>
                </figure>
				<p class="has-text-centered"><a href="#"><strong>{$m.m_title}</strong></a></p>
				<p class="has-text-centered"><em>{$m.m_description}</em></p>
        		</div>
        	</div>
        </li>
        {/foreach}
    </ul>
        {else}
        <div class="notification is-info has-text-centered"><span class="icon"><i class="fa fa-exclamation-circle"></i></span><span>No tiene medallas</span></div>
        {/if}
</div>