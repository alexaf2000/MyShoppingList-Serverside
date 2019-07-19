	<div class="tabs is-fullwidth">
    <ul>
    <li><a href="{$tsConfig.url}/top/posts/"><span class="icon"><i class="fa fa-file-text-o"></i></span><span>Posts</span></a></li>
    <li><a href="{$tsConfig.url}/top/usuarios/"><span class="icon"><i class="fa fa-user-circle-o"></i></span><span>Usuarios</span></a></li>
    </ul>
    </div>

				<div class="is-inline-block">
                	<!--PUNTOS-->
                	<div class="panel home tops">
                    	<p class="panel-heading">Top post con m&aacute;s puntos</p>
                        <div class="boxy-content">
                        	{if !$tsTops.puntos}<div class="notification is-info has-text-centered"><span class="icon"><i class="fa fa-exclamation-circle"></i></span> Nada por aqui</div>
                            {else}
                        	<ol>
                            	{foreach from=$tsTops.puntos key=i item=p}
                            	<li class="panel-block">
								<div class="media">
                                <div class="media-left">
								<p class="title"><strong>{if $i+1 < 10}0{/if}{$i+1}.</strong></p>
                                </div>
                                <div class="media-content">
                                 <p class="title is-5"> <a href="{$tsConfig.url}/posts/{$p.c_seo}/{$p.post_id}/{$p.post_title|seo}.html">{$p.post_title|truncate:45}</a></p>
                                 <p class="subtitle is-6"><span class="icon"><img src="{$tsConfig.tema.t_url}/images/icons/cat/{$p.c_img}"></span> Puntos: {$p.post_puntos} <span class="icon is-small"><i class="fa fa-money"></i></span></p>
			                        </div>
                                </div>
								</li>
                                {/foreach}
                            </ol>
                            {/if}
                        </div>
                    </div>
                    <!--SEGUIDORES-->
                	<div class="panel home tops">
                    	<p class="panel-heading">Top post m&aacute;s favoritos</p>
                        <div class="boxy-content">
                        	{if !$tsTops.favoritos}<div class="notification is-info has-text-centered"><span class="icon"><i class="fa fa-exclamation-circle"></i></span> Nada por aqui</div>
                            {else}
                        	<ol>
                            	{foreach from=$tsTops.favoritos key=i item=p}
                            	<li class="panel-block">
								<div class="media">
                                <div class="media-left">
								<p class="title"><strong>{if $i+1 < 10}0{/if}{$i+1}.</strong></p>
                                </div>
                                <div class="media-content">
                                 <p class="title is-5"> <a href="{$tsConfig.url}/posts/{$p.c_seo}/{$p.post_id}/{$p.post_title|seo}.html">{$p.post_title|truncate:45}</a></p>
                                 <p class="subtitle is-6"><span class="icon"><img src="{$tsConfig.tema.t_url}/images/icons/cat/{$p.c_img}"></span> Favoritos: {$p.post_favoritos} <span class="icon is-small"><i class="fa fa-star"></i></span></p>
			                        </div>
                                </div>
								</li>
                                {/foreach}
                            </ol>
                            {/if}
                        </div>
                    </div>
                    <!--COMENTARIOS-->
                	<div class="panel home tops">
                    	<p class="panel-heading">Top post m&aacute;s comentado</p>
                        <div class="boxy-content">
                        	{if !$tsTops.comments}<div class="notification is-info has-text-centered"><span class="icon"><i class="fa fa-exclamation-circle"></i></span> Nada por aqui</div>
                            {else}
                        	<ol>
                            	{foreach from=$tsTops.comments key=i item=p}
                            	<li class="panel-block">
									<div class="media">
                                <div class="media-left">
								<p class="title"><strong>{if $i+1 < 10}0{/if}{$i+1}.</strong></p>
                                </div>
                                <div class="media-content">
                                 <p class="title is-5"> <a href="{$tsConfig.url}/posts/{$p.c_seo}/{$p.post_id}/{$p.post_title|seo}.html">{$p.post_title|truncate:45}</a></p>
                                 <p class="subtitle is-6"><span class="icon"><img src="{$tsConfig.tema.t_url}/images/icons/cat/{$p.c_img}"></span> Comentarios: {$p.post_comments} <span class="icon is-small"><i class="fa fa-comments-o"></i></span></p>
			                        </div>
                                </div>
								</li>
                                {/foreach}
                            </ol>
                            {/if}
                        </div>
                    </div>
                    
                    <!--SEGUIDORES-->
                	<div class="panel home tops">
                    	<p class="panel-heading">Top post con m&aacute;s seguidores</p>
                        <div class="boxy-content">
                        	{if !$tsTops.seguidores}<div class="notification is-info has-text-centered"><span class="icon"><i class="fa fa-exclamation-circle"></i></span> Nada por aqui</div>
                            {else}
                        	<ol>
                            	{foreach from=$tsTops.seguidores key=i item=p}
                            	<li class="panel-block">
									<div class="media">
                                <div class="media-left">
								<p class="title"><strong>{if $i+1 < 10}0{/if}{$i+1}.</strong></p>
                                </div>
                                <div class="media-content">
                                 <p class="title is-5"> <a href="{$tsConfig.url}/posts/{$p.c_seo}/{$p.post_id}/{$p.post_title|seo}.html">{$p.post_title|truncate:45}</a></p>
                                 <p class="subtitle is-6"><span class="icon"><img src="{$tsConfig.tema.t_url}/images/icons/cat/{$p.c_img}"></span> Seguidores: {$p.post_seguidores} <span class="icon is-small"><i class="fa fa-users"></i></span></p>
			                        </div>
                                </div>
								</li>
                                {/foreach}
                            </ol>
                            {/if}
                        </div>
                    </div>
                </div>