                                    <script type="text/javascript">
										var action_menu = '{$tsAction}';
										//{literal} <-- no borrar
										$(function(){
											if(action_menu != '') $('#a_' + action_menu).addClass('active');
											else $('#a_main').addClass('active');
										});
                                        // {/literal}
									</script>
                                   <ul class="menu-list">
                                        <li id="a_main"><a href="{$tsConfig.url}/moderacion/"><span class="icon is-small"><i class="fa fa-institution"></i></span> Centro de Moderaci&oacute;n</a></li>
                                    </ul>
                                    
                                    <ul class="menu-list">
									<li><a onclick="$('#m_1').slideToggle();" class="is-active">Denuncias <span class="icon is-small is-pulled-right"><i class="fa fa-chevron-circle-down"></i></span></a>
									<ul class="oculto" id="m_1">
                                        <li id="a_posts"><span class="cat-title"><a onclick="$('#a_posts').addClass('active');" href="{$tsConfig.url}/moderacion/posts"><span class="icon is-small"><i class="fa fa-clone"></i></span> Post <span class="badge is-pulled-right cadGe_{if $tsConfig.novemods.repposts > 15}red{elseif $tsConfig.novemods.repposts > 5}purple{else}green{/if}">{$tsConfig.novemods.repposts}</span></a></span></li>
										<li id="a_mps"><span class="cat-title"><a onclick="$('#a_mps').addClass('active');" href="{$tsConfig.url}/moderacion/mps"><span class="icon is-small"><i class="fa fa-comment-o"></i></span> Mensajes  <span class="badge is-pulled-right cadGe_{if $tsConfig.novemods.repmps > 15}red{elseif $tsConfig.novemods.repmps > 5}purple{else}green{/if}">{$tsConfig.novemods.repmps}</span></a></span></li>
                                        <li id="a_users"><span class="cat-title"><a onclick="$('#a_users').addClass('active');" href="{$tsConfig.url}/moderacion/users"><span class="icon is-small"><i class="fa fa-user-circle"></i></span> Usuarios <span class="badge is-pulled-right cadGe_{if $tsConfig.novemods.repusers > 15}red{elseif $tsConfig.novemods.repusers > 5}purple{else}green{/if}">{$tsConfig.novemods.repusers}</span></a></span></li>
                                        </ul>
										</li>
										</ul>
									{if $tsUser->is_admod || $tsUser->permisos.movub || $tsUser->permisos.moub}
                                    <ul class="menu-list">
									<li><a onclick="$('#m_2').slideToggle();" class="is-active">Gesti&oacute;n <span class="icon is-small is-pulled-right"><i class="fa fa-chevron-circle-down"></i></span></a>
									<ul class="oculto" id="m_2">
										{if $tsUser->is_admod || $tsUser->permisos.movub}<li id="a_banusers"><span class="cat-title"><a onclick="$('#a_banusers').addClass('active');" href="{$tsConfig.url}/moderacion/banusers"><span class="icon is-small"><i class="fa fa-user-times"></i></span> Usuarios suspendidos <span class="badge is-pulled-right cadGe_{if $tsConfig.novemods.supusers > 15}red{elseif $tsConfig.novemods.suspusers > 5}purple{else}green{/if}">{$tsConfig.novemods.suspusers}</span></a></span></li>{/if}
                                        {if $tsUser->is_admod || $tsUser->permisos.moub}<li id="a_buscador"><span class="cat-title"><a onclick="$('#a_buscador').addClass('active');" href="{$tsConfig.url}/moderacion/buscador"><span class="icon is-small"><i class="fa fa-user-secret"></i></span> Buscador de Contenido</a></span></li>{/if}
									</ul>
									</li>
									</ul>
									{/if}
									{if $tsUser->is_admod || $tsUser->permisos.morp || $tsUser->permisos.morf}
                                    <ul class="menu-list">
									<li><a onclick="$('#m_3').slideToggle();" class="is-active">Papelera de Reciclaje <span class="icon is-small is-pulled-right"><i class="fa fa-chevron-circle-down"></i></span></a>
									<ul class="oculto" id="m_3">
                                        {if $tsUser->is_admod || $tsUser->permisos.morp}<li id="a_pospelera"><span class="cat-title"><a onclick="$('#a_pospelera').addClass('active');" href="{$tsConfig.url}/moderacion/pospelera"><span class="icon is-small"><i class="fa fa-trash-o"></i></span> Post eliminados <span class="badge is-pulled-right cadGe_{if $tsConfig.novemods.pospelera > 15}red{elseif $tsConfig.novemods.pospelera > 5}purple{else}green{/if}">{$tsConfig.novemods.pospelera}</span></a></span></li>{/if}
									</ul>
									</li>
									</ul>
									{/if}
									{if $tsUser->is_admod || $tsUser->permisos.mocp || $tsUser->permisos.mocc}
                                    <ul class="menu-list">
									<li><a onclick="$('#m_4').slideToggle();" class="is-active">Contenido desaprobado <span class="icon is-small is-pulled-right"><i class="fa fa-chevron-circle-down"></i></span></a>
									<ul class="oculto" id="m_4">
                                        {if $tsUser->is_admod || $tsUser->permisos.mocp}<li id="a_revposts"><span class="cat-title"><a onclick="$('#a_revposts').addClass('active');" href="{$tsConfig.url}/moderacion/revposts"><span class="icon is-small"><i class="fa fa-file-text-o"></i></span> Posts <span class="badge is-pulled-right cadGe_{if $tsConfig.novemods.revposts > 15}red{elseif $tsConfig.novemods.revposts > 5}purple{else}green{/if}">{$tsConfig.novemods.revposts}</span></a></span></li>{/if}
                                        {if $tsUser->is_admod || $tsUser->permisos.mocc}<li id="a_comentarios"><span class="cat-title"><a onclick="$('#a_comentarios').addClass('active');" href="{$tsConfig.url}/moderacion/comentarios"><span class="icon is-small"><i class="fa fa-comments"></i></span> Comentarios <span class="badge is-pulled-right cadGe_{if $tsConfig.novemods.revcomentarios > 15}red{elseif $tsConfig.novemods.revcomentarios > 5}purple{else}green{/if}">{$tsConfig.novemods.revcomentarios}</span></a></span></li>{/if}
									</ul>
									</li>
									</ul>
									{/if}