{include file='sections/main_header.tpl'}
				
			<section class="message is-info">
                <div class="message-header">
                    <h1>{$tsAviso.titulo}</h1>
                </div>
				<div class="message-body has-text-centered">
				<h1 class="title is-5">{$tsAviso.mensaje}</h1>

                {if $tsAviso.but}
                <h2><input type="button" onclick="location.href='{if $tsAviso.link}{$tsAviso.link}{else}{$tsConfig.url}{/if}'" value="{$tsAviso.but}" class="button is-primary"></h2>
				{/if}
                {if $tsAviso.return}
                <h2><input type="button" onclick="history.go(-{$tsAviso.return})" title="Volver" value="Volver" style="font-size:13px" class="button is-primary"></h2>
                {/if}
				</div>		
			</div>           
{include file='sections/main_footer.tpl'}