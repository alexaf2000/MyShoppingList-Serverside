{include file='sections/main_header.tpl'}
                <script type="text/javascript" src="{$tsConfig.js}/perfil.js"></script>
				{include file='modules/m.perfil_headinfo.tpl'}
                <div class="columns {$tsGeneral.stats.user_rango.1}">
                	<div class="column is-9">
                        <div id="info" pid="{$tsInfo.uid}"></div>
                        <div id="perfil_content" class="box">
                        {if $tsPrivacidad.m.v == false}
                        <div id="perfil_wall" status="activo" class="widget">
                            <div class="emptyData">{$tsPrivacidad.m.m}</div>
                            <script type="text/javascript">
                                perfil.load_tab('info', $('#informacion'));
                            </script>
                        </div>
                        {elseif $tsType == 'story'}
                        {include file='modules/m.perfil_story.tpl'}
                        {elseif $tsType == 'news'}
                        {include file='modules/m.perfil_noticias.tpl'}
                        {else}
	                	{include file='modules/m.perfil_muro.tpl'}
                        {/if}
                        </div>
                        <div style="width:100%;text-align:center;display:none" id="perfil_load"><i class="fa fa-circle-o-notch fa-spin fa-3x"></i></div>
                    </div>
                    <div class="column is-3">
                        {include file='modules/m.perfil_sidebar.tpl'}
                    </div>
                </div>
                
{include file='sections/main_footer.tpl'}