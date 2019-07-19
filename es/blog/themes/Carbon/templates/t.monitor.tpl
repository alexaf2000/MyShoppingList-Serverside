{include file='sections/main_header.tpl'}
                <div class="columns">
				{if $tsAction == ''}
                    {include file='modules/m.monitor_content.tpl'}
                    {include file='modules/m.monitor_sidebar.tpl'}
                {else}
	                {include file='modules/m.monitor_menu.tpl'}
                    {include file='modules/m.monitor_listado.tpl'}
                {/if}
                </div>
                
{include file='sections/main_footer.tpl'}