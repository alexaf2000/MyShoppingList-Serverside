                	<div class="box">							
							<h1 class="title">{$tsPost.post_title}</h1>
                            <p class="subtitle is-5"><a href="{$tsConfig.url}/posts/{$tsPost.categoria.c_seo}/">{$tsPost.categoria.c_nombre}</a></p>
                        <p class="subtitle is-6"><span class="icon is-small"><i class="fa fa-calendar"></i></span> {$tsPost.post_date} <span class="icon is-small"><i class="fa fa-money"></i></span> {$tsPost.post_puntos} <span class="icon is-small"><i class="fa fa-eye"></i></span> {$tsPost.post_hits} <span class="icon is-small"><i class="fa fa-star"></i></span> {$tsPost.post_favoritos} </p>							
						<div class="post-contenido">
							{if !$tsUser->is_member}{include file='modules/m.global_ads_728.tpl'}{/if}                         
							<span>
								{$tsPost.post_body}
							</span>
							{if $tsPost.user_firma && $tsConfig.c_allow_firma}
							<hr/>
							<span class="title is-5" style="font-style: italic;">{$tsPost.user_firma}</span>
							{/if}
							  <hr>
							{include file='modules/m.posts_metadata.tpl'}   
							<nav class="level">
 <!-- <div class="level-left">
    <div class="level-item">
    {if !$tsUser->is_member}
	<li class="seguir"><a class="button is-primary is-outlined follow_user_post" href="#" onclick="registro_load_form(); return false"><span class="icon"><i class="fa fa-eye"></i></span> <span>Seguir Post</span></a></li>
        {elseif $tsPost.post_user != $tsUser->uid}
        <li class="seguir" {if !$tsPost.follow} style="display: none;"{/if}>
        <a class="button is-primary is-outlined unfollow_post" onclick="notifica.unfollow('post', {$tsPost.post_id}, notifica.inPostHandle, $(this).children('span'))"><span class="icon"><i class="fa fa-eye-slash"></i></span> <span>Dejar de seguir</span></a>
        </li>
        <li class="seguir"{if $tsPost.follow > 0} style="display: none;"{/if}>
        <a class="button is-primary is-outlined follow_post" onclick="notifica.follow('post', {$tsPost.post_id}, notifica.inPostHandle, $(this).children('span'))"><span class="icon"><i class="fa fa-eye"></i></span> <span>Seguir Post</span></a>
        </li>
	{/if}
    </div>
  </div>
  <div class="level-right">
    <p class="level-item">
	{if !$tsUser->is_member}
	 {elseif $tsPost.post_user != $tsUser->uid}
	<a href="#" onclick="{if !$tsUser->is_member}registro_load_form(){else}add_favoritos(){/if}; return false" class="button is-primary is-outlined"><span class="icon"><i class="fa fa-star"></i></span> <span>Agregar a Favoritos</span></a>
	<a href="#" onclick="denuncia.nueva('post',{$tsPost.post_id}, '{$tsPost.post_title}', '{$tsPost.user_name}'); return false;" class="button is-outlined is-primary"><span class="icon"><i class="fa fa-flag"></i></span> <span>Denunciar</span></a>
	{/if}
	<a href="{if !$tsUser->is_member}javascript:registro_load_form(); return false{else}javascript:notifica.sharePost({$tsPost.post_id}){/if}" class="button is-primary"><span class="icon"><i class="fa fa-share-alt"></i></span> <span>{$tsPost.post_shared}</span></a>-->
	<div class="level-right">
    <p class="level-item">
	<a name="fb_share" share_url="{$tsConfig.url}/posts/{$tsPost.categoria.c_seo}/{$tsPost.post_id}/{$tsPost.post_title|seo}.html" type="box_count" href="https://www.facebook.com/sharer.php" class="button is-info"><i class="fa fa-facebook fa-fw"></i></a><script type="text/javascript" src="https://platform.twitter.com/widgets.js"></script>
	<a href="https://twitter.com/share" data-count="vertical" data-via="{$tsConfig.titulo}" data-lang="es" class="button is-primary" style="background-color: #3cf;"><i class="fa fa-twitter fa-fw"></i></a><script type="text/javascript" src="https://platform.twitter.com/widgets.js"></script>	
	</p>
  </div>
</nav>
							{include file='modules/m.global_ads_728.tpl'}
						</div>
						<hr>
						{include file='modules/m.posts_autor.tpl'}
						    {include file='modules/m.posts_herramientas.tpl'}
						</div>
					<a name="comentarios"></a>
                    <!--{include file='modules/m.posts_comments.tpl'}-->
                   	{if !$tsUser->is_member}
                    <!--<div class="notification is-dark has-text-centered">
                    	<span class="icon"><i class="fa fa-info-circle"></i></span> Para poder comentar necesitas estar <a onclick="registro_load_form(); return false" href="">Registrado.</a> O.. ya tienes usuario? <a onclick="open_login_box('open')" href="#">Logueate!</a>
                    </div>-->
                    {elseif $tsPost.block > 0}
                    <div class="emptyData clearfix">
                    	&iquest;Te has portado mal? {$tsPost.user_name} te ha bloqueado y no podr&aacute;s comentar sus post.
                    </div>
                    {/if}
					</div>