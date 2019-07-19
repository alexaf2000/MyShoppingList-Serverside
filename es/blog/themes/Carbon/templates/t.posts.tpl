{include file='sections/main_header.tpl'}
				<a name="cielo"></a>
                {if $tsPost.post_status > 0 || $tsAutor.user_activo != 1}
                    <div class="notification is-danger media">
					<div class="media-left"><p><span class="icon"><i class="fa fa-exclamation-circle"></i></span></p></div>
					<div class="media-content">
					<p class="title is-5">Este post se encuentra {if $tsPost.post_status == 2}eliminado{elseif $tsPost.post_status == 1} inactivo por acomulaci&oacute;n de denuncias{elseif $tsPost.post_status == 3} en revisi&oacute;n{elseif $tsPost.post_status == 3} en revisi&oacute;n{elseif $tsAutor.user_activo != 1} oculto porque pertenece a una cuenta desactivada{/if}, t&uacute; puedes verlo porque {if $tsUser->is_admod == 1}eres Administrador{elseif $tsUser->is_admod == 2}eres Moderador{else}tienes permiso{/if}.</div></p>
				</div>
				{/if}
				<div class="columns">
				<div class="column is-9 animated fadeInUp">	
                    {include file='modules/m.posts_content.tpl'}
				</div>
 
				<div class="column is-3">
				<!--{include file='modules/m.posts_tags.tpl'}-->
				{if $tsPost.visitas}
						<!--{include file='modules/m.posts_visitas.tpl'}-->
						 {/if}
						{if $tsPost.medallas}
						<!--{include file='modules/m.posts_medallas.tpl'}-->
						{/if}
					    <!--{include file='modules/m.posts_related.tpl'}-->
                        <!--{include file='modules/m.posts_banner.tpl'}-->
				</div>	</div>
{include file='sections/main_footer.tpl'}