                        <div class="frameForm">
                            
                            <div class="attaFrame">
                                <div id="attaContent">
                                    <div id="statusFrame" style="padding:1px 5px; display:block">
                                        <textarea class="textarea" id="wall" onfocus="onfocus_input(this)" onblur="onblur_input(this)" title="{if $tsInfo.uid == $tsUser->uid}&iquest;Qu&eacute; est&aacute;s pensando?{else}Escribe algo....{/if}"></textarea>
                                    </div>
                                    <div id="fotoFrame">
									<p class="control has-addons">
                                        <input type="text" class="input is-expanded" name="ifoto" value="http://www.phpost.net/images/ejemplo.jpg" title="http://www.phpost.net/images/ejemplo.jpg" onfocus="onfocus_input(this)" onblur="onblur_input(this)"/>
                                        <a href="#" class="button is-dark" onclick="muro.stream.adjuntar(); return false;">Adjuntar</a>
										</p>
                                    </div>
                                    <div id="enlaceFrame">
									<p class="control has-addons">
                                        <input type="text" class="input is-expanded" name="ienlace" value="http://www.phpost.net/blog/ejemplo.html" title="http://www.phpost.net/blog/ejemplo.html" onfocus="onfocus_input(this)" onblur="onblur_input(this)"/>
                                        <a href="#" class="button is-dark" onclick="muro.stream.adjuntar(); return false;">Adjuntar</a>
                                    </p>
									</div>
                                    <div id="videoFrame">
									<p class="control has-addons">
                                        <input type="text" class="input is-expanded" name="ivideo" value="http://www.youtube.com/watch?v=f_30BAGNqqA" title="http://www.youtube.com/watch?v=f_30BAGNqqA" onfocus="onfocus_input(this)" onblur="onblur_input(this)"/>
                                        <a href="#" class="button is-dark" onclick="muro.stream.adjuntar(); return false;">Adjuntar</a>
                                    </p>
									</div>
                                </div>
                                <div class="attaDesc">
                                    <div class="wrap"><textarea class="input" id="attaDesc" onfocus="onfocus_input(this)" onblur="onblur_input(this)" title="Haz un comentario sobre esta foto..."></textarea></div>
                                    <input type="button" class="mBtn btnOk shareBtn" value="Compartir" onclick="muro.stream.compartir();" />
                                </div>
                            </div>
                            <div class="btnStatus">
                                <input type="button" class="mBtn btnOk shareBtn" value="Compartir" onclick="muro.stream.compartir();" />
                            </div>
							<ul class="options clearfix">
                                <li>
                                    <ul class="atta">
                                        <li><span class="uiComposer">
                                            <a href="#" style="display:flex;!important" class="button is-default hidden" onclick="muro.stream.load('status', this); return false;" id="stMain"><i class="fa fa-commenting-o"></i></a>
                                            <span class="button is-default is-disabled hidden"><i class="fa fa-commenting-o"></i></span>
                                        </span></li>
                                        <li><span class="uiComposer">
                                            <a href="#" class="button is-default" onclick="muro.stream.load('foto', this); return false;"><i class="fa fa-camera"></i></a>
                                            <span class="button is-default is-disabled hidden"><i class="fa fa-camera"></i></span>
                                        </span></li>
                                        <li><span class="uiComposer">
                                            <a href="#" class="button is-default" onclick="muro.stream.load('enlace', this); return false;"><i class="fa fa-chain"></i></a>
                                            <span class="button is-default is-disabled hidden"><i class="fa fa-chain"></i></span>
                                        </span></li>
                                        <li><span class="uiComposer">
                                            <a href="#" class="button is-default" onclick="muro.stream.load('video', this); return false;"><i class="fa fa-youtube-play"></i></a>
                                            <span class="button is-default is-disabled hidden"><i class="fa fa-youtube-play"></i></span>
                                        </span></li>
                                        <li class="streamLoader"><img width="16" height="11" alt="" src="http://static.ak.fbcdn.net/rsrc.php/yb/r/GsNJNwuI-UM.gif" class="img"/></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>