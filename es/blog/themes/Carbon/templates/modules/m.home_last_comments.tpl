<nav class="panel home" id="lastCommBox">
  <p class="panel-heading">
    &Uacute;ltimos comentarios
	<a onclick="actualizar_comentarios('-1','0'); return false;" class="is-pulled-right" href="#"><span class="icon"><i class="fa fa-clock-o"></i></span></a>
  </p>
  <div id="ult_comm">
  <div id="filterByTodos">
  {foreach from=$tsComments key=i item=c}
<div class="panel-block">
    <a class="title is-5" href="{$tsConfig.url}/perfil/{$c.user_name}/">{$c.user_name}</a>
    <a href="{$tsConfig.url}/posts/{$c.c_seo}/{$c.post_id}/{$c.post_title|seo}.html#comentarios-abajo">{$c.post_title|truncate:25}</a>
  </div>
  {/foreach}
  </div>
  </div>
</nav>				