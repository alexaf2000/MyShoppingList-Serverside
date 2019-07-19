						<div class="box">
                    			<h3 class="title is-5">Medallas {$tsGeneral.m_total}</h3>
                    			<hr>
                            {if $tsGeneral.m_total}
            				<ul>
                                {foreach from=$tsGeneral.medallas item=m}
							<img style="display:inline-block;" src="{$tsConfig.tema.t_url}/images/icons/med/{$m.m_image}_32.png" class="qtip" title="{$m.m_title} - {$m.m_description}"/>
                                {/foreach}
            				</ul>
                            {if $tsGeneral.m_total >= 21}<a href="#medallas" onclick="perfil.load_tab('medallas', $('#medallas'));" class="see-more">Ver m&aacute;s &raquo;</a>{/if}
                            {else}
                            <div class="notification is-info has-text-centered"><span class="icon"><i class="fa fa-info-circle"></i></span> No tiene medallas</div>
                            {/if}
             			</div>
                        <div class="box">
                    			<h3 class="title is-5">Seguidores {$tsInfo.stats.user_seguidores}</h3>
								<hr>
                            {if $tsGeneral.segs.data}
            				<ul>
                                {foreach from=$tsGeneral.segs.data item=s}
            					<li class="is-inline-block"><a class="qtip" title="{$s.user_name}" href="{$tsConfig.url}/perfil/{$s.user_name}">
								<figure class="image is-32x32">
								<img class="round" src="{$tsConfig.url}/files/avatar/{$s.user_id}_120.jpg"/>
								</figure>
								</a></li>
                                {/foreach}
            				</ul>
                            {if $tsGeneral.segs.total >= 21}<a href="#seguidores" onclick="perfil.load_tab('seguidores', $('#seguidores'));" class="see-more">Ver m&aacute;s &raquo;</a>{/if}
                            {else}
                            <div class="notification is-info has-text-centered"><span class="icon"><i class="fa fa-info-circle"></i></span> No tiene seguidores</div>
                            {/if}
             			</div>
                        <div class="box">
                              <h3 class="title is-5">Siguiendo {$tsGeneral.sigd.total}</h3>
							  <hr>
                            {if $tsGeneral.sigd.data}
            				<ul class="clearfix">
                                {foreach from=$tsGeneral.sigd.data item=s}
            					<li class="is-inline-block"><a class="qtip" title="{$s.user_name}" href="{$tsConfig.url}/perfil/{$s.user_name}">
								<figure class="image is-32x32">
								<img class="round" src="{$tsConfig.url}/files/avatar/{$s.user_id}_120.jpg"/>
								</figure>
								</a></li>
                                {/foreach}
            				</ul>
                            {if $tsGeneral.sigd.total >= 21}<a href="#siguiendo" onclick="perfil.load_tab('siguiendo', $('#siguiendo'));" class="see-more">Ver m&aacute;s &raquo;</a>{/if}
                            {else}
                            <div class="notification is-info has-text-centered"><span class="icon"><i class="fa fa-info-circle"></i></span> No sigue usuarios</div>
                            {/if}
            			</div>
						{if $tsInfo.can_hits}
						<div class="box">
                              <h3 class="title is-5">&Uacute;ltimas visitas {$tsInfo.visitas_total}</h3>
                              <hr>
                            {if $tsInfo.visitas}
            				<ul class="clearfix">
                                {foreach from=$tsInfo.visitas item=v}
            					<li class="is-inline-block">
								<a class="qtip" title="{$v.date|hace:true}" href="{$tsConfig.url}/perfil/{$v.user_name}"><img class="round" src="{$tsConfig.url}/files/avatar/{$v.user_id}_50.jpg"  width="32" height="32"/></a></li>
                                {/foreach}
            				</ul>
                            {else}
                            <div class="notification is-info has-text-centered"><span class="icon"><i class="fa fa-info-circle"></i></span> No tiene visitas</div>
                            {/if}
            			</div>
						{/if}
						                        <div class="banner">
                        	{$tsConfig.ads_300}
                        </div>