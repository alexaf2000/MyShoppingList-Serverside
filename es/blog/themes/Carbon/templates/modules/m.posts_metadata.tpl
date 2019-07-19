                	<div class="post-metadata">
                        	<div style="display:none" class="mensajes"></div>
                            {if ($tsUser->is_admod || $tsUser->permisos.godp) && $tsUser->is_member == 1 && $tsPost.post_user != $tsUser->uid && $tsUser->info.user_puntosxdar >= 1}
                            <div class="dar-puntos">
							{if $tsPunteador.rango >= 11}
							<center>
							<div class="control has-addons">
							<input type="number" id="points" class="input is-expanded" value="{$tsPunteador.rango}" min="1" max="{$tsPunteador.rango}"/> 	
							<input type="submit" onclick="votar_post(document.getElementById('points').value); return false;" value="Votar" class="button is-dark ">  
							</div>
							</center>
							{else}
								<div class="control has-addons">
                                {section name=puntos start=1 loop=$tsUser->info.user_puntosxdar+1 max=$tsPunteador.rango}
                                <a class="button is-info is-medium" href="#" onclick="votar_post({$smarty.section.puntos.index}); return false;">{$smarty.section.puntos.index}</a> 
                                {/section}
								</div>
								{/if}
                                 (de {$tsUser->info.user_puntosxdar} Disponibles)
                            </div>
							 <hr>
                            {/if}							
						</div>	