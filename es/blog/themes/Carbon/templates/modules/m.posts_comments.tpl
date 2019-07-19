					<div class="box" id="post-comentarios">
                        <div class="comentarios-title">
                            <p class="subtitle is-5"><span id="ncomments"><strong>{$tsPost.post_comments}</span> Comentarios</strong></p>
							<i style="margin-top: -2em; margin-right: 1em; display:none" id="com_gif" class="fa fa-circle-o-notch fa-spin"></i>
							<hr>
                        </div>
                        {if $tsPost.post_comments > $tsConfig.c_max_com}
                        <div class="comentarios-title">
	                        <div class="paginadorCom pagination"><!--HTML de las páginas--></div>
                        </div>{/if}
                        <div id="comentarios">
                            <script type="text/javascript">
                            // {literal}
                            $(document).ready(function(){
                                /*
                                top_cmt = $("#offset_cmts").offset().top;
                                //
                                function check_load(){
                                    if (!comentario.cargado && $(window).scrollTop() + $(window).height() > top_cmt ) {
                                        // {/literal} 
                                        */
                                        comentario.cargar({$tsPages.post_id}, 1, {$tsPages.autor});
                                        /*
                                        // {literal}
                                        comentario.cargado = true;
                                    }
                                }
                                $(window).scroll(check_load);
                                check_load();*/
                            });
                            // {/literal}
                            </script>
                            <div id="no-comments">Cargando comentarios espera un momento...</div>
                        </div>{if $tsPost.post_comments > $tsConfig.c_max_com}
                        <div class="comentarios-title">
	                        <div class="paginadorCom pagination"><!--HTML de las páginas--></div>
                        </div>{/if}
      
                        {if $tsPost.post_block_comments == 1 && ($tsUser->is_admod == 0 && $tsUser->permisos.mocepc == false)}
                            <div class="notification is-info has-text-centered" id="no-comments">El post se encuentra cerrado y no se permiten comentarios.</div>
						{elseif $tsUser->is_admod == 0 && $tsUser->permisos.gopcp == false}
                            <div class="notification is-danger has-text-centered" id="no-comments"><span class="icon"><i class="fa fa-exclamation-circle"></i></span> No tienes permisos para comentar.</div>
						{elseif $tsUser->is_member && ($tsPost.post_block_comments != 1 || $tsPost.post_user == $tsUser->uid || $tsUser->is_admod || $tsUser->permisos.gopcp) && $tsPost.block == 0}
                        <div class="miComentario">
		                    {include file='modules/m.posts_comments_form.tpl'}
                        </div>
                        {/if}
                    </div>