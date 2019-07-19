						<div class="box">
                        <p class="title is-5">&Uacute;ltimos visitantes</p> 
						<hr>
						<ul>
							{foreach from=$tsPost.visitas item=v}
        			         <a href="{$tsConfig.url}/perfil/{$v.user_name}" style="display:inline-block;">
							 <figure class="image is-48x48">
							 <img src="{$tsConfig.url}/files/avatar/{$v.user_id}_120.jpg" class="round" title="{$v.date|hace:true}"/>
							 </figure>
							 </a> 
                            {/foreach}
                        </ul>
						</div>