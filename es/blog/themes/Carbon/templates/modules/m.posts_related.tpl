                		<div class="box">
    	                	<p class="title is-5">Posts Relacionados:</p>
							<hr>
                            <ul>
                            	{if $tsRelated}
                                {foreach from=$tsRelated item=p}
                            	<li class="categoriaPost">
									<a class="{if $p.post_private}categoria privado{/if}"title="{$p.post_title}" href="{$tsConfig.url}/posts/{$p.c_seo}/{$p.post_id}/{$p.post_title|seo}.html" rel="dc:relation"><span class="icon"><img src="{$tsConfig.tema.t_url}/images/icons/cat/{$p.c_img}" /></span><span>{$p.post_title}</span></a>
								</li>
                                {/foreach}
                                {else}
                                <li class="notification is-info has-text-centered"><span class="icon"><i class="fa fa-exclamation-circle"></i></span> No se encontraron posts relacionados.</li>
                                {/if}
                            </ul>
	                    </div>