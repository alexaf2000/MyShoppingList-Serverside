<div id="preview" class="preview" style="line-height: 1.4em; width: 750px; overflow-y: auto; text-align: left">
	{$tsPreview.cuerpo}
</div>
{literal}
<script type="text/javascript">
$(window).bind(
	'resize',
	function(){
		$('#preview').height((document.documentElement.clientHeight - 140) + 'px');
		mydialog.center();
	}
);
$(window).trigger('resize');
</script>
{/literal}