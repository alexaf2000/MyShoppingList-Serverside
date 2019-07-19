							<div class="content-tabs bloqueados" style="display:none">
                            	<fieldset>
                                    <div class="field">
                                        {if $tsBlocks}
                                        <ul class="bloqueadosList">
                                            {foreach from=$tsBlocks item=b}
                                        	<li class="panel-block"><a class="title is-5" href="{$tsConfig.url}/perfil/{$b.user_name}">{$b.user_name}</a><span><a title="Desbloquear Usuario" href="javascript:bloquear('{$b.b_auser}', false, 'mis_bloqueados')" class="tag is-danger is-small bloquear_usuario_{$b.b_auser}">Desbloquear</a></span></li>
                                            {/foreach}
                                         </ul>
                                        {else}
                                        <div class="notification is-info has-text-centered">No hay usuarios bloqueados</div>
                                        {/if}
                                     </div>
                                </fieldset>
                            </div>