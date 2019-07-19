1:
    <li class="panel-block">
        <div class="media">
		   	<div class="media-left">
                 <a href="{$tsConfig.url}/perfil/{$tsUser->nick}">
				 <figure class="image is-48x48"><img class="round" src="{$tsConfig.url}/files/avatar/{$tsUser->uid}_120.jpg" /></figure></a>
             </div>
            <div class="media-content">
                <div class="content">
				<p><a href="{$tsConfig.url}/perfil/{$tsUser->nick}">{$tsUser->nick}</a> {if $tsUser->is_admod}<a href="{$tsConfig.url}/moderacion/buscador/1/1/{$mp.mp_ip}"><small>{$mp.mp_ip}</small></a>{/if} <small>{$mp.mp_date|hace:true}</small></p>
                <div>{$mp.mp_body|nl2br}</div>
				</div>
            </div>
        </div>
    </li>