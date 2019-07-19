<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="es" xml:lang="es">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" sizes="76x76" href="{$tsConfig.images}/apple-touch-icon.png">
<link rel="icon" type="image/png" href="/files/images/favicon.png">
<script src="/files/js/pace.min.js"></script>
<link href="/files/css/pace-theme-loading-bar.css" rel="stylesheet" />
<link rel="stylesheet" href="/files/css/smooth-scrollbar.css">
<link rel="manifest" href="{$tsConfig.images}/manifest.json">
<link rel="mask-icon" href="{$tsConfig.images}/safari-pinned-tab.svg" color="#5bbad5">
<!--  Android Chrome Color-->
<meta name="theme-color" content="#4286f4">
<title>{$tsTitle}</title>
<link href="/files/css/bulma.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="{$tsConfig.tema.t_url}/estilo.css" rel="stylesheet" type="text/css" />
<link href="{$tsConfig.tema.t_url}/phpost.css" rel="stylesheet" type="text/css" />
<link href="{$tsConfig.tema.t_url}/extras.css" rel="stylesheet" type="text/css" />
<link href="/files/css/animate.css" rel="stylesheet" type="text/css" />

{if $tsUser->is_admod && $tsConfig.c_see_mod && $tsConfig.novemods.total}
<!-- AGREGAMOS ESTILO DE MODERACIÓN SI HAY CONTENIDO PARA REVISAR -->
<link href="{$tsConfig.tema.t_url}/css/moderacion.css" rel="stylesheet" type="text/css" />
<div id="stickymsg" onmouseover="$('#brandday').css('opacity',0.5);" onmouseout="$('#brandday').css('opacity',1);" onclick="location.href = '{$tsConfig.url}/moderacion/'" style="cursor:default;">Hay {$tsConfig.novemods.total} contenido{if $tsConfig.novemods.total != 1}s{/if} esperando revisi&oacute;n</div>
{/if}

<!-- AGREGAMOS UN ESTILO EXTRA SI EXISTE -->
<link href="{$tsConfig.css}/{$tsPage}.css" rel="stylesheet" type="text/css" />
<script src="{$tsConfig.js}/jquery.min.js" type="text/javascript"></script>
<script src="{$tsConfig.js}/jquery.plugins.js" type="text/javascript"></script>
<script src="{$tsConfig.js}/acciones.js" type="text/javascript"></script>
<script src="{$tsConfig.js}/funciones.js" type="text/javascript"></script>
{if $tsUser->is_admod || $tsUser->permisos.moacp || $tsUser->permisos.most || $tsUser->permisos.moayca || $tsUser->permisos.mosu || $tsUser->permisos.modu || $tsUser->permisos.moep || $tsUser->permisos.moop || $tsUser->permisos.moedcopo || $tsUser->permisos.moaydcp || $tsUser->permisos.moecp}
<script src="{$tsConfig.js}/moderacion.js" type="text/javascript"></script>
{/if}
{if $tsConfig.c_allow_live}
<link href="{$tsConfig.css}/live.css" rel="stylesheet" type="text/css" />
<script src="{$tsConfig.js}/live.js" type="text/javascript"></script>
{/if}
<script type="text/javascript">
// {literal}
var global_data={
// {/literal}
	user_key:'{$tsUser->uid}',
	postid:'{$tsPost.post_id}',
	fotoid:'{$tsFoto.foto_id}',
	img:'{$tsConfig.tema.t_url}/',
	url:'{$tsConfig.url}',
	domain:'{$tsConfig.domain}',
    s_title: '{$tsConfig.titulo}',
    s_slogan: '{$tsConfig.slogan}'
// {literal}
};
// {/literal} {literal}
$(document).ready(function(){
// {/literal}
    {if $tsNots > 0} 
	notifica.popup({$tsNots});
    {/if}
    {if $tsMPs > 0 &&  $tsAction != 'leer'}
    mensaje.popup({$tsMPs});
    {/if}
// {literal}
});
//	{/literal}
</script>

</head>

<body>
<!-- Cookies Mensaje De Alerta  -->
<div id="barraaceptacion" style="display: block;">
    <div class="inner">
        MyShoppingList utiliza cookies. Para eliminar este mensaje, haga clic en el siguiente botón:
        <a href="javascript:void(0);" class="ok" onclick="PonerCookie();"><b>Acepto el uso de cookies</b></a> | 
        <a href="https://myshoppinglist.cat/es/blog/pages/privacypolicy/" target="_blank" class="info">Política de Privacidad.</a>
    </div>
</div>
<script src="/files/js/cookies.js" type="text/javascript"></script>
<!-- Cookies Mensaje De Alerta  -->
<main id="main-scrollbar" data-scrollbar>
{if $tsUser->is_admod == 1}{$tsConfig.install}{/if}
<!--JAVASCRIPT-->

<div id="loading" style="display:none">Procesando...<i class="fa fa-circle-o-notch fa-spin fa-fw"style="olor: #3498DB;"></i></div>
<div id="swf"></div>
<div id="js" style="display:none"></div>
<div id="mask"></div>
<div id="mydialog"></div>
<div class="UIBeeper" id="BeeperBox"></div>
<div id="brandday">
    <div id="maincontainer">
	        {include file='sections/head_menu.tpl'}
    	<!--MAIN CONTAINER-->
        <div id="contenido_principal" class="section main">
        
        <div id="cuerpocontainer" class="container">
		{include file='sections/head_noticias.tpl'}
        <!--Cuperpo-->