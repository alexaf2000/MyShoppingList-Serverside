{include file='sections/main_header.tpl'}
<div class="columns">
		<div class="column is-9">
                {if $tsAction == 'posts'}
				{include file='modules/m.top_posts.tpl'}
                {elseif $tsAction == 'usuarios'}
                {include file='modules/m.top_users.tpl'}
                {/if}
		</div>		
		<div class="column is-3">
				{include file='modules/m.top_sidebar.tpl'}
		</div>
				</div>
{include file='sections/main_footer.tpl'}