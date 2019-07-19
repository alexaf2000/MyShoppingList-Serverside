{if $tsAction == 'denuncia-post'}
<div>
    <label class="label">Denunciar el post:</label>
    <p class="title is-5">{$tsData.obj_title}</p>
    <label class="label">Creado por:</label>
    <a href="{$tsConfig.url}/perfil/{$tsData.obj_user}" target="_blank">{$tsData.obj_user}</a><br/>
    <label class="label">Raz&oacute;n de la denuncia:</label>
	<p class="control"><div class="select">
    <select name="razon">
    {foreach from=$tsDenuncias key=i item=denuncia}
    	{if $denuncia}<option value="{$i}">{$denuncia}</option>{/if}
    {/foreach}
    </select></div></p>
    <label class="label">Aclaraci&oacute;n y comentarios:</label>
    <textarea class="textarea" tabindex="6" rows="5" cols="40" name="extras"></textarea>
    <small>En el caso de ser Re-post se debe indicar el link del post original.</small>
</div>
{elseif $tsAction == 'denuncia-foto'}
<div align="center" style="padding:10px 10px 0">
    <label class="label">Denunciar foto:</label>
    {$tsData.obj_title}
    <label class="label">Raz&oacute;n de la denuncia:</label>
    <select name="razon">
    {foreach from=$tsDenuncias key=i item=denuncia}
    	{if $denuncia}<option value="{$i}">{$denuncia}</option>{/if}
    {/foreach}
    </select>
    <label class="label">Aclaraci&oacute;n y comentarios:</label>
    <textarea tabindex="6" rows="5" cols="40" name="extras"></textarea>
    <span class="size9">Para atender tu caso r&aacute;pidamente, adjunta pruevas de tu denuncia. (capturas de pantalla)</span>
</div>
{elseif $tsAction == 'denuncia-mensaje'}
<div class="notification is-info has-text-centered">Si reportas este mensaje ser&aacute; eliminado de tu bandeja. &iquest;Realmente quieres denunciar este mensaje como correo no deseado?</div>
<input type="hidden" name="razon" value="spam" />
{elseif $tsAction == 'denuncia-usuario'}
<div>
    <label class="label">Denunciar usuario:</label>
    <p class="title is-5">{$tsData.nick}</p>
    <label class="label">Raz&oacute;n de la denuncia:</label>
	<p class="control"><div class="select">
    <select name="razon">
    {foreach from=$tsDenuncias key=i item=denuncia}
    	{if $denuncia}<option value="{$i}">{$denuncia}</option>{/if}
    {/foreach}
    </select></div></p>
    <label class="label">Aclaraci&oacute;n y comentarios:</label>
    <textarea class="textarea" tabindex="6" rows="5" cols="40" name="extras"></textarea>
    <small>Para atender tu caso r&aacute;pidamente, adjunta pruevas de tu denuncia. (capturas de pantalla)</small>
</div>
{/if}