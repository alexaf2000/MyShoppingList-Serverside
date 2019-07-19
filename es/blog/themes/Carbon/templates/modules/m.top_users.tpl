				<div class="tabs is-fullwidth">
    <ul>
    <li><a href="{$tsConfig.url}/top/posts/"><span class="icon"><i class="fa fa-file-text-o"></i></span><span>Posts</span></a></li>
    <li><a href="{$tsConfig.url}/top/usuarios/"><span class="icon"><i class="fa fa-user-circle-o"></i></span><span>Usuarios</span></a></li>
    </ul>
    </div>	
				<div class="is-inline-block">
                	<!--PUNTOS-->
                	<div class="panel home tops">
                    	<p class="panel-heading">Top usuario con m&aacute;s puntos</p>
                        <div class="boxy-content">
                        	{if !$tsTops.puntos}<div class="notification is-info has-text-centered"><span class="icon"><i class="fa fa-exclamation-circle"></i></span> Nada por aqui</div>
                            {else}
                        	<ol>
                            	{foreach from=$tsTops.puntos key=i item=u}
                            	<li class="panel-block">
							    <div class="media">
                                <div class="media-left">
								<p class="title"><strong>{if $i+1 < 10}0{/if}{$i+1}.</strong></p>
                                </div>
                                <div class="media-content columns is-mobile">
			                     <div class="column is-2">
                                       <div class="image is-32x32"><img class="round" src="{$tsConfig.url}/files/avatar/{$u.user_id}_120.jpg" title="{$u.user_name}"></div>
                                 </div>
		                         <div class="column is-10">
                                 <p class="title is-5"> <a href="{$tsConfig.url}/perfil/{$u.user_name}">{$u.user_name}</a></p>
                                 <p class="subtitle is-6">Puntos: {$u.total} <span class="icon is-small"><i class="fa fa-money"></i></span></p>
                                </div>
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
                    	<p class="panel-heading">Top usuario con m&aacute;s seguidores</p>
                        <div class="boxy-content">
                        	{if !$tsTops.seguidores}<div class="notification is-info has-text-centered"><span class="icon"><i class="fa fa-exclamation-circle"></i></span> Nada por aqui</div>
                            {else}
                        	<ol>
                            	{foreach from=$tsTops.seguidores key=i item=u}
                            	<li class="panel-block">
									  <div class="media">
                                <div class="media-left">
								<p class="title"><strong>{if $i+1 < 10}0{/if}{$i+1}.</strong></p>
                                </div>
                                <div class="media-content columns is-mobile">
			                     <div class="column is-2">
                                       <div class="image is-32x32"><img class="round" src="{$tsConfig.url}/files/avatar/{$u.user_id}_120.jpg" title="{$u.user_name}"></div>
                                 </div>
		                         <div class="column is-10">
                                 <p class="title is-5"> <a href="{$tsConfig.url}/perfil/{$u.user_name}">{$u.user_name}</a></p>
                                 <p class="subtitle is-6">Puntos: {$u.total} <span class="icon is-small"><i class="fa fa-users"></i></span></p>
                                </div>
			                    </div>
                                </div>
                                </li>
                                {/foreach}
                            </ol>
                            {/if}
                        </div>
                    </div>
					<!--MEDALLAS-->
                	<div class="panel home tops">
                    	<p class="panel-heading">Top usuario con m&aacute;s medallas</p>
                        <div class="boxy-content">
                        	{if !$tsTops.medallas}<div class="notification is-info has-text-centered"><span class="icon"><i class="fa fa-exclamation-circle"></i></span> Nada por aqui</div>
                            {else}
                        	<ol>
                            	{foreach from=$tsTops.medallas key=i item=u}
                            	<li class="panel-block">
                                      <div class="media">
                                <div class="media-left">
								<p class="title"><strong>{if $i+1 < 10}0{/if}{$i+1}.</strong></p>
                                </div>
                                <div class="media-content columns is-mobile">
			                     <div class="column is-2">
                                       <div class="image is-32x32"><img class="round" src="{$tsConfig.url}/files/avatar/{$u.user_id}_120.jpg" title="{$u.user_name}"></div>
                                 </div>
		                         <div class="column is-10">
                                 <p class="title is-5"> <a href="{$tsConfig.url}/perfil/{$u.user_name}">{$u.user_name}</a></p>
                                 <p class="subtitle is-6">Medallas: {$u.total} <span class="icon is-small"><i class="fa fa-ge"></i></span></p>
                                </div>
			                    </div>
                                </div>
                                </li>
                                {/foreach}
                            </ol>
                            {/if}
                        </div>
                    </div>      
                </div>