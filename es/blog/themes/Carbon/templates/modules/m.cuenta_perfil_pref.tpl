	                            <h3  style="cursor: pointer;" class="panel-block title is-5" onclick="cuenta.chgsec(this)">4. Intereses y preferencias</h3>
                                <fieldset style="display: none">
                                    <div class="notification is-info has-text-centered alert-cuenta cuenta-5">
                                    </div>
                                    <div class="control is-horizontal">
                                        <div class="control-label"><label class="label" for="mis_intereses">Mis intereses</label></div>
                                        <div class="input-fake control is-grouped">
                                            <textarea class="cuenta-save-5 textarea" name="intereses" id="mis_intereses">{$tsPerfil.p_intereses}</textarea>
                                        </div>
                                    </div>
                                    <div class="control is-horizontal">
                                        <div class="control-label"><label class="label" for="hobbies">Hobbies</label></div>
                                        <div class="input-fake control is-grouped">
                                            <textarea class="cuenta-save-5 textarea" name="hobbies" id="hobbies">{$tsPerfil.p_hobbies}</textarea>
                                        </div>
                                    </div>
                                    <div class="control is-horizontal">
                                        <div class="control-label"><label class="label" for="series_tv_favoritas">Series de TV favoritas:</label></div>
                                        <div class="input-fake control is-grouped">
                                            <textarea class="cuenta-save-5 textarea" name="tv" id="series_tv_favoritas">{$tsPerfil.p_tv}</textarea>
                                        </div>
                                    </div>
                                    <div class="control is-horizontal">
                                        <div class="control-label"><label class="label" for="musica_favorita">M&uacute;sica favorita</label></div>
                                        <div class="input-fake control is-grouped">
                                            <textarea class="cuenta-save-5 textarea" name="musica" id="musica_favorita">{$tsPerfil.p_musica}</textarea>
                                        </div>
                                    </div>
                                    <div class="control is-horizontal">
                                        <div class="control-label"><label class="label" for="deportes_y_equipos_favoritos">Deportes y equipos favoritos</label></div>
                                        <div class="input-fake control is-grouped">
                                            <textarea class="cuenta-save-5 textarea" name="deportes" id="deportes_y_equipos_favoritos">{$tsPerfil.p_deportes}</textarea>
                                        </div>
                                    </div>
                                    <div class="control is-horizontal">
                                        <div class="control-label"><label class="label" for="libros_favoritos">Libros favoritos</label></div>
                                        <div class="input-fake control is-grouped">
                                            <textarea class="cuenta-save-5 textarea" name="libros" id="libros_favoritos">{$tsPerfil.p_libros}</textarea>
                                        </div>
                                    </div>
                                    <div class="control is-horizontal">
                                        <div class="control-label"><label class="label" for="peliculas_favoritas">Pel&iacute;culas favoritas</label></div>
                                        <div class="input-fake control is-grouped">
                                            <textarea class="cuenta-save-5 textarea" name="peliculas" id="peliculas_favoritas">{$tsPerfil.p_peliculas}</textarea>
                                        </div>
                                    </div>
                                    <div class="control is-horizontal">
                                        <div class="control-label"><label class="label" for="comida_favorita">Comida favorita</label></div>
                                        <div class="input-fake control is-grouped">
                                            <textarea class="cuenta-save-5 textarea" name="comida" id="comida_favorita">{$tsPerfil.p_comida}</textarea>
                                        </div>
                                    </div> 
                                     <div class="control is-horizontal">
                                         <div class="control-label"><label class="label" for="mis_heroes_son">Mis h&eacute;roes son</label></div>
                                         <div class="input-fake control is-grouped">
                                             <textarea class="cuenta-save-5 textarea" name="heroes" id="mis_heroes_son">{$tsPerfil.p_heroes}</textarea>
                                         </div>
                                     </div>
                                    <div class="buttons">
                                        <input type="button" value="Guardar" onclick="cuenta.save(5)" class="button is-primary">
                                    </div>
                                </fieldset>