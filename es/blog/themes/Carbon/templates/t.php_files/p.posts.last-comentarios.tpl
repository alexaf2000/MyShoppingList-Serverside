                            <ol id="filterByTodos" class="filterBy cleanlist" style="display:block;">
                            	{foreach from=$tsComments key=i item=c}
								<div class="panel-block">
								<a class="title is-5" href="{$tsConfig.url}/perfil/{$c.user_name}/">{$c.user_name}</a>
                                    <a href="{$tsConfig.url}/posts/{$c.c_seo}/{$c.post_id}/{$c.post_title|seo}.html#comentarios-abajo">
                                    {$c.post_title|truncate:25}</a>
                                </div>
                                {/foreach}
								 </ol>
