        <script type="text/javascript">
			var menu_section_actual = '{if $tsDo == 'posts'}posts{else}{$tsPage}{/if}';
		</script>
		<section id="head" class="hero is-dark is-bold">
  <div class="hero-head">
    <header class="nav">
      <div class="container">
        <div class="nav-left">
			<a class="nav-item title is-active" href="/es/">
            <p class="logoup"><img style="height:20px;margin-left:-25px;position:absolute;margin-top:2px;" src="/files/images/cart.png">MyShoppingList</p>
			</a>
        </div>
		{if $tsUser->is_member}
		<div class="nav-center">
		{if $tsUser->is_admod || $tsUser->permisos.moacp}
        <a class="nav-item {if $tsPage == 'moderacion'}is-active{/if}" href="{$tsConfig.url}/moderacion/" title="Moderaci&oacute;n">
         <span class="icon"><i class="fa fa-legal"></i></span>
        </a>
		{/if}
		<a class="nav-item" title="{$tsUser->nick}" href="{$tsConfig.url}/perfil/{$tsUser->info.user_name}">
         <span><img class="ava_m round" src="{$tsConfig.url}/files/avatar/{$tsUser->uid}_120.jpg"/></span>
        </a>
		{if $tsUser->is_admod == 1}
		<a class="nav-item {if $tsPage == 'admin'}is-active{/if}" href="{$tsConfig.url}/admin/" title="Administraci&oacute;n">
         <span class="icon"><i class="fa fa-dashboard"></i></span>
        </a>
		{/if}
        </div>
		{/if}
        <span class="nav-toggle" onclick="$('#menu_p').slideToggle();">
          <span></span>
          <span></span>
          <span></span>
        </span>
        <div id="menu_p" class="nav-right nav-menu" style="margin-left:45%;color:white;text-transform:uppercase;font-weight:800;letter-spacing:0.05em;font-size:12px;font-family:'Poppins,SF-Pro-Display',Roboto,Sans-Serif;">
		  <!--{if $tsConfig.c_allow_portal && $tsUser->is_member == true}
		  <br>
          <a onclick="menu('home', this.href); return false;" href="{$tsConfig.url}/mi/" class="nav-item {if $tsPage != 'home' && $tsPage != 'posts' && $tsPage != 'tops' && $tsPage != 'buscador' && $tsPage != 'usuarios' && $tsPage != 'moderacion' && $tsPage != 'admin'}is-active{/if}"">
		  <span class="icon is-small"><i class="fa fa-commenting-o"></i></span><span class="p-5">Portal</span></a>
		  <a onclick="menu('posts', this.href);return false;" href="{$tsConfig.url}/posts/" class="nav-item {if $tsPage == 'posts' || $tsPage == 'home'}is-active{/if}"><span class="icon is-small"><i class="fa fa-clone"></i></span><span class="p-5">Posts</span></a>
          <a onclick="menu('tops', this.href); return false;" href="{$tsConfig.url}/top/" class="nav-item {if $tsPage == 'tops'}is-active{/if}"><span class="icon is-small"><i class="fa fa-trophy"></i></span><span class="p-5">TOPs</span></a>
          <a onclick="menu('tops', this.href); return false;" href="{$tsConfig.url}/buscador/" class="nav-item {if $tsPage == 'buscador'}is-active{/if}"><span class="icon is-small"><i class="fa fa-search"></i></span><span class="p-5">Buscar</span></a>
          <a onclick="menu('tops', this.href); return false;" href="{$tsConfig.url}/usuarios/" class="nav-item {if $tsPage == 'usuarios'}is-active{/if}"><span class="icon is-small"><i class="fa fa-users"></i></span><span class="p-5">Miembros</span></a>		  
		  {/if}-->
		  <a class="nav-item" href="/es/">
            Inicio
          </a>
          <a class="nav-item is-active" href="{$tsConfig.url}">
            Blog de desarrollo
          </a>
		</div>
      </div>
    </header>
  </div>
  
		<div class="hero-body">
    <div class="container has-text-centered">
     <a href="{$tsConfig.url}"> <h1 class="title">
        <img width=75px src="/files/images/favicon.png"></a>
      </h1>
      <h2 class="subtitle">
        Blog de desarrollo
		</h2>
    </div>
  </div>
  {if $tsUser->is_member}
    <div class="hero-foot">
    <nav class="tabs">
      <div class="container">
        <ul>
			{if $tsConfig.c_allow_portal && $tsUser->is_member == true}
		  <br>
          <a onclick="menu('home', this.href); return false;" href="{$tsConfig.url}/mi/" class="nav-item {if $tsPage != 'home' && $tsPage != 'posts' && $tsPage != 'tops' && $tsPage != 'buscador' && $tsPage != 'usuarios' && $tsPage != 'moderacion' && $tsPage != 'admin'}is-active{/if}"">
		  <span class="icon is-small"><i class="fa fa-commenting-o"></i></span><span class="p-5">Portal</span></a>
		  <a onclick="menu('posts', this.href);return false;" href="{$tsConfig.url}/posts/" class="nav-item {if $tsPage == 'posts' || $tsPage == 'home'}is-active{/if}"><span class="icon is-small"><i class="fa fa-clone"></i></span><span class="p-5">Posts</span></a>
          <a onclick="menu('tops', this.href); return false;" href="{$tsConfig.url}/top/" class="nav-item {if $tsPage == 'tops'}is-active{/if}"><span class="icon is-small"><i class="fa fa-trophy"></i></span><span class="p-5">TOPs</span></a>
          <a onclick="menu('tops', this.href); return false;" href="{$tsConfig.url}/buscador/" class="nav-item {if $tsPage == 'buscador'}is-active{/if}"><span class="icon is-small"><i class="fa fa-search"></i></span><span class="p-5">Buscar</span></a>
          <a onclick="menu('tops', this.href); return false;" href="{$tsConfig.url}/usuarios/" class="nav-item {if $tsPage == 'usuarios'}is-active{/if}"><span class="icon is-small"><i class="fa fa-users"></i></span><span class="p-5">Miembros</span></a>		  
		  {/if}
          <li><a href="{$tsConfig.url}/monitor/">Notificaciones <span class="badge">{$tsNots}</span></a></li>
          <li><a href="{$tsConfig.url}/mensajes/">Mensajes <span class="badge">{$tsMPs}</span></a></li>
		  {if $tsUser->is_admod || $tsUser->permisos.gopp}
		  <li><a href="{$tsConfig.url}/agregar/">Agregar</a></li>
          {/if}
		  {if $tsAvisos}
          <li><a href="{$tsConfig.url}/mensajes/avisos/">Avisos <span class="badge">{$tsAvisos}</span></a></li>
		  {/if}
		  <li><a href="{$tsConfig.url}/cuenta/">Cuenta</a></li>
		  <li><a href="{$tsConfig.url}/favoritos.php">Favoritos</a></li>
		  <li><a href="{$tsConfig.url}/borradores.php">Borradores</a></li>
		  <li><a href="{$tsConfig.url}/login-salir.php">Salir</a></li>
		  
        </ul>
      </div>
    </nav>
  </div>
 {/if}
</section>