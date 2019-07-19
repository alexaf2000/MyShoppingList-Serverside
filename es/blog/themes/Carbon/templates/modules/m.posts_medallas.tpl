						<div class="box" {if $tsPost.m_total == 0} style="display:none;"{/if}>
                        <p class="title is-5">Medallas</p>
						<hr>
						<ul>
							{foreach from=$tsPost.medallas item=m}
        			<img src="{$tsConfig.tema.t_url}/images/icons/med/{$m.m_image}_32.png" style="display:inline-block;" class="qtip" title="{$m.m_title} - {$m.m_description}"/>
                            {/foreach}
                        </ul>                         
                    </div>