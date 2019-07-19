{include file='sections/main_header.tpl'}
                {if $tsAction == 'ayuda'}
                <div class="notification is-info has-text-centered">Hola <u>{$tsUser->nick}</u>, S&iacute; necesitas ayuda, por favor cont&aacute;ctanos a trav&eacute;s del siguiente <a href="{$tsConfig.url}/pages/contacto/">formulario</a>.</div>
                {elseif $tsAction == 'chat'}
                {include file='modules/m.pages_chat.tpl'}
                {elseif $tsAction == 'protocolo'}
                {include file='modules/m.pages_protocolo.tpl'}
                {elseif $tsAction == 'terminos-y-condiciones'}
                {include file='modules/m.pages_terminos.tpl'}
                {elseif $tsAction == 'privacidad'}
                {include file='modules/m.pages_privacidad.tpl'}
                {elseif $tsAction == 'dmca'}
                {include file='modules/m.pages_dmca.tpl'}
                {elseif $tsAction == 'privacypolicy'}
                {include file='modules/m.pages_cookies.tpl'}
                {/if}                
{include file='sections/main_footer.tpl'}