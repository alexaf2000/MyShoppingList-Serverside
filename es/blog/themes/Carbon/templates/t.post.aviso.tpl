{include file='sections/main_header.tpl'}
				
				<div class="box">
				<div class="columns">
				<div class="column is-3">
				<figure class="image">
                <img src="{$tsConfig.tema.t_url}/images/{$tsAviso.0}.svg" />
                </figure>
				</div>
				<div class="column is-9">
				<h3 class="title">{$tsAviso.1}</h3>
                    <p>Pero no pierdas las esperanzas, no todo est&aacute; perdido, la soluci&oacute;n est&aacute; en:</p>
                    <h4 class="title is-4">Post Relacionados</h4>
					<div class="content">
                    <ul>
                        {if $tsRelated}
                        {foreach from=$tsRelated item=p}
                        <li class="categoriaPost {$p.c_seo}">
                            <a class="{if $p.post_private}categoria privado{/if}"title="{$p.post_title}" href="{$tsConfig.url}/posts/{$p.c_seo}/{$p.post_id}/{$p.post_title|seo}.html" rel="dc:relation">{$p.post_title}</a>
                        </li>
                        {/foreach}
                        {else}
                        <li>No se encontraron posts relacionados.</li>
                        {/if}
                    </ul></div>
				</div>
                </div></div>
{include file='sections/main_footer.tpl'}