<div class="section perfil-cuerpo">
      <div class="columns">
        <div class="column is-2">
		<a href="{$tsConfig.url}/perfil/{$tsInfo.nick}">
          <figure class="image is-128x128 perfil">
            <img class="round" src="{$tsConfig.url}/files/avatar/{if $tsInfo.p_avatar}{$tsInfo.uid}_120{else}avatar{/if}.jpg">
          <span title="{$tsInfo.status.t}" class="status {$tsInfo.status.css} icon" title="{$tsAutor.status.t}"><i class="fa fa-circle"></i></span>
		 </figure>
		  </a>
        </div>
        <div class="column is-6">
          <p>
            <span class="title is-bold">{$tsInfo.nick}</span>
			<span style="color:#{$tsInfo.stats.r_color}" class="subtitle is-bold">{$tsInfo.stats.r_name}</span>
			{if $tsUser->uid != $tsInfo.uid && $tsUser->is_member}
            <a onclick="notifica.unfollow('user', {$tsInfo.uid}, notifica.userInPostHandle, $(this).children('span'))" {if $tsInfo.follow == 0}style="display: none;"{/if} class="button unfollow_user_post is-primary is-outlined is-pulled-right">Dejar de seguir</a>
			<a onclick="notifica.follow('user', {$tsInfo.uid}, notifica.userInPostHandle, $(this).children('span'))" {if $tsInfo.follow == 1}style="display: none;"{/if} class="button follow_user_post is-primary is-outlined is-pulled-right">Seguir Usuario</a>
			{/if}
          </p>
		  <p class="subtitle is-6 is-marginless"><em>{$tsInfo.p_mensaje}</em></p>
          <p>{if $tsInfo.p_nombre != ''}{$tsInfo.p_nombre} es {else}Es {/if}{if $tsInfo.user_sexo == 1}un hombre <span class="icon is-small"><i class="fa fa-male"></i></span>{else}una mujer <span class="icon is-small"><i class="fa fa-female"></i></span>{/if}. <span class="icon is-small"><i class="fa fa-globe"></i></span> Vive en <span id="info_pais">{$tsInfo.user_pais}</span>. <span class="icon is-small"><i class="fa fa-calendar"></i></span> Se uni&oacute; a la familia de {$tsConfig.titulo} el {$tsInfo.user_registro|fecha:true}. {if $tsInfo.p_empresa}<span class="icon is-small"><i class="fa fa-building-o"></i></span> Trabaja en {$tsInfo.p_empresa}{/if}</p>
        {if $tsUser->uid != $tsInfo.uid && $tsUser->is_member}
		<nav class="level">
            <p class="level-item has-text-left">
                    <a class="button is-default" href="javascript:bloquear({$tsInfo.uid}, {if $tsInfo.block.bid}false{else}true{/if}, 'perfil')" id="bloquear_cambiar"><span class="icon"><i class="fa fa-ban"></i></span> <span>Bloquear</span></a>
                    <a class="button is-default" href="#" onclick="denuncia.nueva('usuario',{$tsInfo.uid}, '', '{$tsInfo.nick}'); return false"><span class="icon"><i class="fa fa-flag"></i></span> <span>Denunciar</span></a>
                    {if ($tsUser->is_admod || $tsUser->permisos.mosu) && !$tsInfo.user_baneado}<a class="button is-default" href="#" onclick="mod.users.action({$tsInfo.uid}, 'ban', true); return false;"><span class="icon"><i class="fa fa-legal"></i></span> <span>Suspender</span></a>{/if}
                    {if !$tsInfo.user_activo || $tsInfo.user_baneado}<a class="button is-dan is-disabled"><span class="icon"><i class="fa fa-times-circle-o"></i></span> <span>Cuenta {if !$tsInfo.user_activo}desactivada{else}baneada{/if}</span></a>{/if}
			{if $tsUser->uid != $tsInfo.uid}
			<a class="button is-default" href="#" onclick="mensaje.nuevo('{$tsInfo.nick}','','',''); return false"><span class="icon"><i class="fa fa-envelope-o"></i></span><span>Mensaje</span></a>
			{/if}
			</p>
        </nav>
		{/if}
		</div>
        <div class="column is-4">
        <nav class="level">
        <div class="level-item has-text-centered">
        <p class="heading">Posts</p>
        <p class="title">{$tsInfo.stats.user_posts}</p>
        </div>
        <div class="level-item has-text-centered">
        <p class="heading">Puntos</p>
        <p class="title">{$tsInfo.stats.user_puntos}</p>
        </div>
        <div class="level-item has-text-centered">
        <p class="heading">Comentarios</p>
        <p class="title">{$tsInfo.stats.user_comentarios}</p>
        </div>
  <div class="level-item has-text-centered">
    <p class="heading">Seguidores</p>
    <p class="title">{$tsInfo.stats.user_seguidores}</p>
  </div>
</nav>
        </div>
      </div>
    </div>
                    <div class="tabs home">
                    	<ul id="tabs_menu">
                            {if $tsType == 'news' || $tsType == 'story'}
                            <li class="is-active"><a href="#" onclick="perfil.load_tab('news', this); return false">{if $tsType == 'story'}Publicaci&oacute;n{else}Noticias{/if}</a></li>
                            {/if}
                            <li {if $tsType == 'wall'}class="is-active"{/if}><a href="#" onclick="perfil.load_tab('wall', this); return false"><span class="icon is-small"><i class="fa fa-thumbs-up"></i></span><span>Muro</span></a></li>
                            <li><a href="#" onclick="perfil.load_tab('actividad', this); return false" id="actividad"><span class="icon is-small"><i class="fa fa-universal-access"></i></span><span>Actividad</span></a></li>
                            <li><a href="#" onclick="perfil.load_tab('info', this); return false" id="informacion"><span class="icon is-small"><i class="fa fa-info"></i></span><span>Informaci&oacute;n</span></a></li>
                            <li><a href="#" onclick="perfil.load_tab('posts', this); return false"><span class="icon is-small"><i class="fa fa-folder-open-o"></i></span><span>Posts</span></a></li>
                            <li><a href="#" onclick="perfil.load_tab('seguidores', this); return false" id="seguidores"><span class="icon is-small"><i class="fa fa-group"></i></span><span>Seguidores</span></a></li>
                            <li><a href="#" onclick="perfil.load_tab('siguiendo', this); return false" id="siguiendo"><span class="icon is-small"><i class="fa fa-heart"></i></span><span>Siguiendo</span></a></li>
                            <li><a href="#" onclick="perfil.load_tab('medallas', this); return false"><span class="icon is-small"><i class="fa fa-ge"></i></span><span>Medallas</span></a></li>
							{if $tsUser->uid != $tsInfo.uid}
                            <li class="enviar-mensaje">
                                {if $tsUser->is_member}
                                {/if}
                            </li>
                            {/if}
                            {if $tsInfo.p_socials.f}
                            <li><a target="_blank" href="http://www.facebook.com/{$tsInfo.p_socials.f}"><span class="icon is-small"><i class="fa fa-facebook"></i></span><span>Facebook</span></a></li>
                            {/if}
                            {if $tsInfo.p_socials.t}
                            <li><a target="_blank" href="http://www.twitter.com/{$tsInfo.p_socials.t}"><span class="icon is-small"><i class="fa fa-twitter"></i></span><span>Twitter</span></a></li>
                            {/if}
							{if $tsUser->is_admod == 1}
                            <li><a href="#" onclick="location.href = '{$tsConfig.url}/admin/users?act=show&amp;uid={$tsInfo.uid}'"><span class="icon is-small"><i class="fa fa-pencil-square"></i></span><span>Editar</span></a></li>
                            {/if}
                        </ul>
                    </div>