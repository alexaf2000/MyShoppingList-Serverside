{if $tsUser->is_admod || $tsUser->permisos.moep || $tsAutor.user_id == $tsUser->uid || $tsUser->permisos.moedpo || $tsUser->permisos.moayca || $tsUser->permisos.most || $tsUser->permisos.moayca || $tsUser->permisos.moop || $tsUser->permisos.mosu || $tsUser->permisos.modu}
  <div class="tabs is-fullwidth" >
    <ul>
    	{if $tsUser->is_admod || $tsUser->permisos.modu || $tsUser->permisos.mosu}
        <li><a href="{$tsConfig.url}/moderacion/buscador/1/1/{$tsPost.post_ip}" target="_blank">
		<span class="icon is-small"><i class="fa fa-street-view"></i></span>
		<span>{$tsPost.post_ip}</span>
        </a></li>
        {/if}
        {if $tsUser->is_admod == 1}
        <li><a href="{$tsConfig.url}/admin/users?act=show&amp;uid={$tsAutor.user_id}">
		<span class="icon is-small"><i class="fa fa-address-card-o"></i></span>
		<span>Editar Usuario</span></a></li>{/if}
        {if $tsAutor.user_id != $tsUser->uid}
        <li><a href="#" onclick="mod.users.action({$tsAutor.user_id}, 'aviso', false); return false;">
		<span class="icon is-small"><i class="fa fa-warning"></i></span>
		<span>Enviar Aviso</span></a></li>
        {/if}
        {if $tsAutor.user_id != $tsUser->uid && $tsUser->is_admod || $tsUser->permisos.modu || $tsUser->permisos.mosu}
        {if $tsAutor.user_baneado}
        {if $tsUser->is_admod || $tsUser->permisos.modu}
        <li><a href="#" onclick="mod.reboot({$tsAutor.user_id}, 'users', 'unban', false); $(this).remove(); return false;">
		<span class="icon is-small"><i class="fa fa-refresh"></i></span>
		<span>Desuspender Usuario</span></a></li>
        {/if}
        {else}
        {if $tsUser->is_admod || $tsUser->permisos.mosu}
        <li><a href="#" onclick="mod.users.action({$tsAutor.user_id}, 'ban', false); $(this).remove(); return false;">
		<span class="icon is-small"><i class="fa fa-ban"></i></span>
		<span>Suspender Usuario</span></a></li>
        {/if}
        {/if}
        {/if}
        {if $tsPost.post_user == $tsUser->uid && $tsUser->is_admod == 0 && $tsUser->permisos.most == false && $tsUser->permisos.moayca == false && $tsUser->permisos.moo == false && $tsUser->permisos.moep ==  false && $tsUser->permisos.moedpo == false}
        <li><a title="Borrar Post" onclick="borrar_post(); return false;" href="#">
		<span class="icon is-small"><i class="fa fa-trash-o"></i></span>
		<span>Borrar Post</span></a><li>
        <li><a title="Editar Post" onclick="location.href='{$tsConfig.url}/posts/editar/{$tsPost.post_id}'; return false" href="#">
		<span class="icon is-small"><i class="fa fa-pencil"></i></span>
		<span>Editar Post</span></a></li>
    {elseif ($tsUser->is_admod && $tsPost.post_status == 0) || $tsUser->permisos.most || $tsUser->permisos.moayca || $tsUser->permisos.moop || $tsUser->permisos.moep || $tsUser->permisos.moedpo}
        {if $tsUser->is_admod || $tsUser->permisos.most}
        <li><a href="#" onclick="mod.reboot({$tsPost.post_id}, 'posts', 'sticky', false); if($(this).text() == 'Poner Sticky') $(this).text('Quitar Sticky'); else $(this).text('Poner Sticky'); return false;">
		<span class="icon is-small"><i class="fa fa-bookmark"></i></span>
		<span>{if $tsPost.post_sticky == 1}Quitar{else}Poner{/if} Sticky</span></a></li>
        {/if}                                
        {if $tsUser->is_admod || $tsUser->permisos.moayca}
       <li> <a href="#" onclick="mod.reboot({$tsPost.post_id}, 'posts', 'openclosed', false); if($(this).text() == 'Cerrar Post') $(this).html('Abrir Comentarios'); else $(this).html('Cerrar Comentarios'); return false;">
	   <span class="icon is-small"><i class="fa fa-comments-o"></i></span>
	   <span>{if $tsPost.post_block_comments == 1}Abrir{else}Cerrar{/if} Comentarios</span></a></li>
        {/if}								
        {if $tsUser->is_admod || $tsUser->permisos.moop}
        <li><a id="desaprobar" href="#" onclick="$('#desapprove').slideToggle(); return false;">
		<span class="icon is-small"><i class="fa fa-low-vision"></i></span>
		<span>Ocultar Post</span></a></li>
        {/if}								
        {if $tsUser->is_admod || $tsUser->permisos.moedpo || $tsAutor.user_id == $tsUser->uid}
        <li><a href="{$tsConfig.url}/posts/editar/{$tsPost.post_id}">
		<span class="icon is-small"><i class="fa fa-pencil"></i></span>
		<span>Editar Post</span></a></li>
        {/if}
        {if $tsUser->is_admod || $tsUser->permisos.moep || $tsAutor.user_id == $tsUser->uid}
      <li><a href="#" onclick="{if $tsAutor.user_id != $tsUser->uid}mod.posts.borrar({$tsPost.post_id}, 'posts', null);{else}borrar_post();{/if} return false;">
	  <span class="icon is-small"><i class="fa fa-trash-o"></i></span>
	  <span>Borrar Post</span></a></li>
        {/if}							                       
        {/if}
    </ul>
	</div>
	        <div id="desapprove" class="control has-addons"style="display:none;">
            <span style="display: none;" class="errormsg"></span>
            <input type="text" id="d_razon" name="d_razon" maxlength="150" class="input is-expanded" placeholder="Raz&oacute;n de la revisi&oacute;n" / required>
            <input type="button" class="button is-info" name="desapprove" value="Continuar" href="#" onclick="mod.posts.ocultar('{$tsPost.post_id}'); return false;" style="margin-bottom: 8px;" />
        </div>    
{/if}