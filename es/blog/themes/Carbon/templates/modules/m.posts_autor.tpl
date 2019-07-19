<!--<p>Posteado por:</p>			  -->
		<div class="columns">
        <div class="column is-6">
          <figure class="image is-128x128 autor">
		   <a href="{$tsConfig.url}/perfil/{$tsAutor.user_name}"><img title="Ver perfil de {$tsAutor.user_name}" class="round" src="{$tsConfig.url}/files/avatar/{$tsAutor.user_id}_120.jpg"></a>
           <span class="status {$tsAutor.status.css} icon" title="{$tsAutor.status.t}"><i class="fa fa-circle"></i></span>
		  </figure>
        </div>
        <div class="column is-3 rango">
          <p><span style="color:#{$tsAutor.rango.r_color}" class="title">{$tsAutor.user_name}</span>
		  </p>
          <p class="title"><img src="{$tsConfig.default}/images/icons/ran/{$tsAutor.rango.r_image}" title="{$tsAutor.rango.r_name}" /> {$tsAutor.rango.r_name}</p>
		  <div style="display:block;" class="hero-buttons">
		  <!--{if !$tsUser->is_member}
		  <a title="Seguir Usuario" class="button is-primary is-outlined follow_user_post" href="#" onclick="registro_load_form(); return false"><i class="fa fa-user-plus"></i></a>
		  {elseif $tsAutor.user_id != $tsUser->uid}
          <a title="Dejar de seguir" class="button is-primary is-outlined unfollow_user_post" onclick="notifica.unfollow('user', {$tsAutor.user_id}, notifica.userInPostHandle, $(this).children('span'))" {if !$tsAutor.follow}style="display: none;"{/if}><i class="fa fa-user-times"></i></a>
		  <a title="Seguir Usuario" class="button is-primary is-outlined follow_user_post" onclick="notifica.follow('user', {$tsAutor.user_id}, notifica.userInPostHandle, $(this).children('span'))" {if $tsAutor.follow > 0}style="display: none;"{/if}><i class="fa fa-user-plus"></i></a>
		  {/if}
        {if $tsAutor.user_id != $tsUser->uid}<a title="Enviar mensaje" class="button is-primary" href="#" onclick="{if !$tsUser->is_member}registro_load_form();{else}mensaje.nuevo('{$tsAutor.user_name}','','','');{/if}return false"><i class="fa fa-fw fa-envelope"></i></a>{/if}-->
      </div>
        </div>
      </div>