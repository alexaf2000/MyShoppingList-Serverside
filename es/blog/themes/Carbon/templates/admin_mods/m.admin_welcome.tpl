                                    <h3 class="title">Centro de Administraci&oacute;n</h3>
                                <div id="res" class="boxy-content">
								<div class="columns notification is-info">
								<div class="column is-1 has-text-centered">
								<span class="icon is-large"><i class="fa fa-balance-scale"></i></span>
								</div>
								<div class="column is-11"><b>Bienvenido(a), {$tsUser->nick}!</b><br/>Este es tu &quot;Centro de Administraci&oacute;n de PHPost&quot;. Aqu&iacute; puedes modificar la configuraci&oacute;n de tu web, modificar usuarios, modificar posts, y muchas otras cosas.<br />Si tienes algun problema, por favor revisa la p&aacute;gina de &quot;Soporte y Cr&eacute;ditos&quot;.  Si esa informaci&oacute;n no te sirve, puedes <a href="http://www.phpost.net/" target="_blank">visitarnos para solicitar ayuda</a> acerca de tu problema.
                                    </div>
								</div>
                                	<hr>
									<div class="columns">
                                    <div class="phpost column is-9">
                                        <h1 class="panel-heading">PHPost en directo</h1>
                                        <ul id="news_pp" class="pp_list">
                                            <div class="phpostAlfa">Cargando...</div>
                                        </ul>
                                    </div>
                                    <div class="phpost version column is-3">
                                        <h1 class="panel-heading">PHPost Risus</h1>
                                        <ul id="version_pp" class="pp_list">
                                            <li>
                                                <div class="title">Versi&oacute;n instalada</div>
                                                <div class="title is-6">{$tsConfig.version}</div>
                                            </li>
                                        </ul>
										<hr>
                                        <h1 class="panel-heading">Administradores</h1>
                                        <ul class="pp_list">                                    
                                            {foreach from=$tsAdmins item=admin}
                                            <li><div class="title"><a href="{$tsConfig.url}/perfil/{$admin.user_name}" uid="{$admin.user_id}">{$admin.user_name}</a></div></li>                                    
                                            {/foreach}
                                        </ul>
										<hr>
                                            <div class="panel">
								                <h1 class="panel-heading">Instalaciones</h1>
                                                    <ul>
											             <li class="panel-block"><span>Fundaci&oacute;n: </span><span class="floatR number" title="{$tsInst.0|fecha}">{$tsInst.0|hace:true} &nbsp;</span></li>
											             <li class="panel-block"><span>Actualizado: </span><span class="floatR number" title="{$tsInst.1|fecha}">{$tsInst.1|hace:true} &nbsp;</span></li>
									               </ul>
                                            </div>                                    
                                    </div>
                                    </div>
                                </div>
{literal}
<script type="text/javascript">
$(document).ready(function(){
    $.ajax({
        type: "GET",
        url: global_data.url + "/feed-support.php",
        dataType: "json",
        success: function(r) {
            $('#news_pp').html('');
            for(var i = 0; i < r.length; i++){
                //
                var html = '<li>';
                html += '<div class="title"><a href="' + r[i].link + '" target="_blank">' + r[i].title +'</a></div>';
                html += '<div class="body">' + r[i].info +'</div>';
                html += '</li>';
                //
                $('#news_pp').append(html);
            }
    	}
    });
    $.ajax({
        type: "GET",
        url: global_data.url + "/feed-version.php?v=risus",
        dataType: "json",
        success: function(r) {
            for(var i = 0; i < r.length; i++){
                //
                var html = '<li>';
                html += '<div class="title">' + r[i].title +'</div>';
                html += '<div class="body">' + r[i].text +'</div>';
                html += '</li>';
                //
                $('#version_pp').append(html);
            }
    	}
    });
});
</script>
{/literal}