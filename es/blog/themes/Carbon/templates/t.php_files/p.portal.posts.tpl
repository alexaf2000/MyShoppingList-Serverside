                    <div class="body">
                    	<ul>
                            {if $tsPosts}
                            {foreach from=$tsPosts item=p}
                            <li class="panel-block">
							<p> 
			                <span class="icon">
							<a class="qtip" title="{$p.c_nombre}" href="{$tsConfig.url}/posts/{$p.c_seo}/">
			                <img src="{$tsConfig.default}/images/icons/cat/{$p.c_img}">
							</a>
			                </span>
                            <a class="title is-5"  title="{$p.post_title}" href="{$tsConfig.url}/posts/{$p.c_seo}/{$p.post_id}/{$p.post_title|seo}.html">	
					        {$p.post_title|truncate:55}</a><br>
				            <span class="subtitle is-6">Puntos: {$p.post_puntos} <span class="icon is-small"><i class="fa fa-money"></i></span></span>
                            <span class="subtitle is-6">Comentarios: {$p.post_comments} <span class="icon is-small"><i class="fa fa-comments-o"></i></span></span>   
							<span class="subtitle is-6">Fecha: {$p.post_date|hace} <span class="icon is-small"><i class="fa fa-clock-o"></i></span></span>	
								</p>
                            </li>
                            {/foreach}
                            {else}
                            <li class="notification is-info has-text-centered">
                                <span class="icon"><i class="fa fa-exclamation-circle"></i></span> <span>No hay posts aqu&iacute;,
                                {if $tsType == 'posts'} <a onclick="$('#config_posts').slideDown();">configura</a> tus categor&iacute;as preferidas.
                                {elseif $tsType == 'favs'} puedes agregar un post a tus favoritos para visitarlo m&aacute;s tarde.
                                {elseif $tsType == 'shared'} los usuarios que sigues podr&aacute;n recomentarte posts.
                                {/if}</span>
                            </li>
                            {/if}
                        </ul>
                    </div>
                    <div class="pagination pag">
                		{if $tsPages.prev != 0}<a class="button is-primary" onclick="portal.posts_page('{$tsType}', {$tsPages.prev}, true); return false">&laquo; Anterior</a>{/if}
                		{if $tsPages.next != 0}<a class="button is-primary" onclick="portal.posts_page('{$tsType}', {$tsPages.next}, true); return false">Siguiente &raquo;</a>{/if}
                    </div>