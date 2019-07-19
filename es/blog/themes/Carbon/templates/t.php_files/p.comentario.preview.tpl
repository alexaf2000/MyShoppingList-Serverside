1:
{if $tsType == 'new'} 
<div style="padding-left: 10px;" id="div_cmnt_{$tsComment.0}" class="{if $tsComment.4 == $tsUser->uid}especial1{else}especial3{/if}">
    <span id="citar_comm_{$tsComment.0}" style="display:none">{$tsComment.2}</span>
    <div class="comentario-post media">
        <div class="media-left">
            <a href="{$tsConfig.url}/perfil/{$tsUser->info.user_name}">
			<figure class="image is-64x64">
                <img class="round" title="{$tsUser->info.user_name}" src="{$tsConfig.url}/files/avatar/{$tsUser->uid}_120.jpg">
            </figure>
			</a>
        </div>
        <div class="media-content">
            <div class="content">
                <p style="margin-bottom: 0.3em;">
                    <a href="{$tsConfig.url}/perfil/{$tsUser->nick}" class="nick"><strong>{$tsUser->nick}</strong></a>  {if $tsUser->is_admod}<small>(<span style="color:red;">IP:</span> <a href="{$tsConfig.url}/moderacion/buscador/1/1/{$tsComment.6}" class="geoip" target="_blank">{$tsComment.6}</a>)</small>{/if}
                   <small> <span>{$tsComment.3|hace}</span></small> :
                </p>
            <div id="comment-body-{$tsComment.0}" class="comment-content">
                {$tsComment.1|nl2br}
            </div>
            </div>
			<div class="level answerOptions">
                    <ul class="level-left">{if $tsComment.0 > 0}
                    	{if $tsUser->is_member}
                        <li class="answerCitar level-item is-pulled-left">
                        	<a onclick="citar_comment({$tsComment.0}, '{$tsUser->nick}')" title="Citar">
                                <span class="icon is-small"><i class="fa fa-reply"></i></span>
                            </a>
                        </li>
                        {/if}
						{if $tsUser->is_admod || $tsUser->permisos.goepc}
                    	<li class="level-item is-pulled-left">
                        	<a onclick="comentario.editar({$tsComment.0}, 'show')" title="Editar">
                                <span class="icon is-small"><i class="fa fa-pencil"></i></span>
                            </a>
                        </li>
						{/if}
						{if $tsUser->is_admod || $tsUser->permisos.godpc}
                        <li class="iconDelete level-item is-pulled-left">
                            <a onclick="borrar_com({$tsComment.0}, {$tsUser->uid})" title="Borrar">
								<span class="icon is-small"><i class="fa fa-trash"></i></span>
							</a>
                        </li>
						{/if}
						{if $tsUser->is_admod || $tsUser->permisos.moaydcp}
						<li class="iconHide level-item is-pulled-left">                    	
							<a onclick="ocultar_com({$tsComment.0}, {$tsUser->uid});" title="Ocultar/Mostrar">						
								<span class="icon is-small"><i class="fa fa-eye-slash"></i></span>					
							</a>
                                                    
						</li>
						{/if}
                        {else}
                        <li><a><span  style="color:#ff3860" class="icon is-small"><i class="fa fa-magic"></i></span><span><strong style="color:#ff3860">VISTA PREVIA</strong></span></a></li>
                        {/if}
                    </ul>
                </div>
			
			
		</div>
    </div>
</div>
{elseif $tsType == 'edit'}
<div id="preview" class="box_cuerpo" style="margin: -15px 0 0; font-size:13px; line-height: 1.4em; min-width:300px;max-width: 760px; padding: 12px 20px; overflow-y: auto; text-align: left; border-top:1px solid #CCC">
    <div id="new-com-html">{$tsComment.1|nl2br}</div>
    <div id="new-com-bbcode" style="display:none">{$tsComment.5}</div>
</div>
{/if}