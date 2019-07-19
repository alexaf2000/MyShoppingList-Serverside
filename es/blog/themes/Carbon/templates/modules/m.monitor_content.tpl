                <div id="centroDerecha" class="column is-9">
				<div class="box">
                        <h2 class="title is-5"><span class="icon"><i class="fa fa-bell"></i></span> &Uacute;ltimas {$tsData.total} notificaciones</h2>
                    {if $tsData.data}
                    <ul class="notification-detail listado-content">
                    	{foreach from=$tsData.data item=noti}
                    	<li class="panel-block"{if $noti.unread > 0} class="unread"{/if}>
						<div class="media">
                        	<div class="media-left">
                            	<a href="{$tsConfig.url}/perfil/{$noti.user}">
								<figure class="image is-48x48">
                            		<img class="round" src="{$tsConfig.url}/files/avatar/{$noti.avatar}"/>
								</figure>
                                </a>
                            </div>
                            <div class="media-content">
                            	<p class="title is-5">{if $noti.total == 1}<a href="{$tsConfig.url}/perfil/{$noti.user}">{$noti.user}</a>{/if} 
                            		<small title="{$noti.date|fecha}">{$noti.date|fecha}</small>
                                </p>
                                <p class="subtitle is-6">
                                	<span class="icon monac_icons ma_{$noti.style}"></span><span>{$noti.text}</span>
                                    <a href="{$noti.link}">{$noti.ltext}</a>
                                </p>
                            </div>
						 </div>	
                        </li>
                        {/foreach}
                    </ul>
                    {else}
                    <div class="notification is-info has-text-centered"><span class="icon"><i class="fa fa-exclamation-circle"></i></span><span>No tienes notificaciones</span></div>
                    {/if}
                </div></div>
