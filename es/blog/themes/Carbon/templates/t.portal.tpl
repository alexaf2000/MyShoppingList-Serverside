{include file='sections/main_header.tpl'}
				<script type="text/javascript" src="{$tsConfig.js}/perfil.js"></script>
                <script type="text/javascript" src="{$tsConfig.js}/portal.js"></script>
				<div class="columns">
                <div id="center_box" class="column is-9">
                    <div id="portal" class="box">
                        <div class="tabs is-boxed">
                            <ul id="tabs_menu">
                                <li class="is-active"><a onclick="portal.load_tab('news', this); return false"><span class="icon is-small"><i class="fa fa-newspaper-o"></i></span><span>Noticias</span></a></li>
                                <li><a onclick="portal.load_tab('activity', this); return false;"><span class="icon is-small"><i class="fa fa-rocket"></i></span><span>Actividad</span></a></li>
                                <li><a onclick="portal.load_tab('posts', this); return false;"><span class="icon is-small"><i class="fa fa-file-text-o"></i></span><span>Posts</span></a></li>
                                <li><a onclick="portal.load_tab('favs', this); return false;"><span class="icon is-small"><i class="fa fa-heart"></i></span><span>Favoritos</span></a></li>
                            </ul>
                        </div>
                        <div id="portal_content">
                            {include file='modules/m.portal_noticias.tpl'}
                            {include file='modules/m.portal_activity.tpl'}
                            {include file='modules/m.portal_posts.tpl'}
                            {include file='modules/m.portal_posts_favoritos.tpl'}
                        </div>
                    </div>
                </div>
                <div id="right_box" class="column is-3">
                    {include file='modules/m.home_stats.tpl'}
                    {include file='modules/m.portal_afiliados.tpl'}
					{include file='modules/m.global_ads_160.tpl'}
                    <!--Poner aqui mas modulos-->
                </div>
            </div>
{include file='sections/main_footer.tpl'}