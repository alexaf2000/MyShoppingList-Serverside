                <div id="portal_posts" class="showHide lastPosts" status="" style="display:none">
                    	<h3 class="title is-3 is-pulled-left">&Uacute;ltimos posts de tu inter&eacute;s</h3>
                            <a onclick="$('#config_posts').slideDown();" title="Configurar" class="qtip is-pulled-right"><span class="icon"><i class="fa fa-gear"></i></span></a>
                    <div class="is-clearfix"></div>
                    <div id="config_posts" style="display:none">
                        <div class="notification is-info has-text-centered"><span class="icon"><i class="fa fa-info-circle"></i></span>Elige las categor&iacute;as que quieras filtrar en los &uacute;ltimos posts.</div>
                        <ul class="clearbeta" id="config_inputs">
                        {foreach from=$tsCategories item=c}
                            <li><label><input type="checkbox" value="{$c.cid}" {if $c.check == 1}checked="true"{/if} /><span style="background-image:url({$tsConfig.default}/images/icons/cat/{$c.c_img})">{$c.c_nombre}</span></label></li>
                        {/foreach}
                        </ul>
						<hr>
                        <a class="button is-primary" onclick="portal.save_configs();" class="next">Guardar cambios &raquo;</a>
                    </div>
                    <div id="portal_posts_content"></div>
                </div>