                            <div class="box">
                            	<p class="title is-5">Tags:</p>
								<hr>
                                {foreach from=$tsPost.post_tags key=i item=tag}
                                <a class="tag is-primary is-small" rel="tag" href="{$tsConfig.url}/buscador/?q={$tag|seo}&e=tags">{$tag}</a>
                                {/foreach}
                            </div>	