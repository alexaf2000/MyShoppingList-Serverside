{include file='sections/main_header.tpl'}
{literal}
<style>
#head{display:none;}
.container{max-width: 100%;}
.section{padding:0;}
.hero{padding: 3rem 1.5rem;}
</style>
{/literal}
<section class="hero is-dark is-bold">
<div class="hero-head">
<h1 class="title has-text-centered">{$tsConfig.offline_message}</h1>
 <p class="hero-buttons">
        <a class="button is-white is-outlined is-large" href="javascript:open_login_box('open');">
          <span class="icon">
            <i class="fa fa-download"></i>
          </span>
          <span>Identificarme</span>
        </a>
      </p>
	   </div>
  <div class="hero-body">
    <div class="container">
      
      <h2 class="has-text-centered mantenimiento">
      <i class="fa fa-cog fa-spin"></i>
      </h2>
	 
    </div>
  </div>
</section>
{include file='sections/main_footer.tpl'}
                                    