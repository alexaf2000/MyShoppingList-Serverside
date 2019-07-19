{include file='sections/main_header.tpl'}

<div class="box">
   <div class="columns">
	<div class="column is-3">
	<figure class="image">
    <img src="{$tsConfig.tema.t_url}/images/private.svg" />
    </figure>
	</div>
	<div class="column is-9">
		<h3 class="title">Este post es privado, s&oacute;lo los usuarios registrados de {$tsConfig.titulo} pueden acceder. <b>Registrate en {$tsConfig.titulo}</b></h3>
        {if $tsType == 'post'}Pero no te preocupes, tambi&eacute;n puedes formar parte de nuestra gran familia. <a title="Reg&iacute;strate!" onclick="registro_load_form(); return false" href=""><b>Reg&iacute;strate!</b></a>{/if}
				<div class="reg-login">
			<div class="login-panel">
				<h4 class="subtitle">...O identif&iacute;cate</h4>
				 <div class="columns">
				<div class="login_cuerpo column is-6 ">
					<span class="gif_cargando floatR" id="login_cargando"></span>
					<div id="login_error"></div>
					<form action="javascript:login_ajax('registro-logueo')" id="login-registro-logueo" method="POST">
						<input type="hidden" value="/registro" name="redirect">
						<label class="label">Usuario</label>
						<input class="input" type="text" tabindex="20" class="ilogin" id="nickname" name="nick" maxlength="64"/>
						<label class="label">Contrase&ntilde;a</label>
						<input class="input" type="password" tabindex="21" class="ilogin" id="password" name="pass" maxlength="64"/>
						<hr/>
						<input type="submit" tabindex="22" title="Entrar" value="Entrar" class="button is-primary"/>
						<div style="color: #666; padding:5px;font-weight: normal; display:none" class="floatR">
							<input type="checkbox"> Recordarme?
						</div>
					</form>
					<div class="login_footer">
						<a tabindex="23" href="#" onclick="remind_password();">&iquest;Olvidaste tu contrase&ntilde;a?</a> o <a tabindex="23" href="#" onclick="resend_validation();">&iquest;Quieres activar tu cuenta?</a>
					</div>
				</div>
				<div class="column is-6">
				<div class="notification is-danger has-text-centered">
					<strong>&iexcl;Atenci&oacute;n!</strong>
					<br>Antes de ingresar tus datos asegurate que la URL de esta p&aacute;gina pertenece a <strong>{$tsConfig.titulo}</strong></div>
				</div></div>
			</div>
		</div>
		</div>
	</div>
</div>
{include file='sections/main_footer.tpl'}