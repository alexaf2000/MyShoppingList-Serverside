<link href="{$tsConfig.css}/imgloading.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="{$tsConfig.js}/blazy.min.js"></script>
{literal}
<script>
	   var bLazy = new Blazy({
       selector: '.imgload img',
       successClass: 'loaded',
   });	</script>{/literal}
    
	
	<div>
                    {if $tsPostsStickys}
                        	{foreach from=$tsPostsStickys item=p}
							 <div class="card animated zoomIn">
        <div class="card-image">
		<a class="imgload imgFade image is-16by9" href="{$tsConfig.url}/posts/{$p.c_seo}/{$p.post_id}/{$p.post_title|seo}.html">
	  <img src="data:image/gif;base64,R0lGODlhLAH6APEBAIKCggAAAP///wAAACH/C05FVFNDQVBFMi4wAwEAAAAh/wtYTVAgRGF0YVhNUDw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlUmVmIyIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ1M1IE1hY2ludG9zaCIgeG1wOkNyZWF0ZURhdGU9IjIwMTItMDEtMzBUMTk6NDItMDg6MDAiIHhtcDpNb2RpZnlEYXRlPSIyMDEyLTAxLTMxVDAzOjQ1OjE0LTE2OjAwIiB4bXA6TWV0YWRhdGFEYXRlPSIyMDEyLTAxLTMxVDAzOjQ1OjE0LTE2OjAwIiBkYzpmb3JtYXQ9ImltYWdlL2dpZiIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDo1Mzc5Rjc1MzQzRTIxMUUxQTgzOEUyRjlFRTYxRDMzMSIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDo1Mzc5Rjc1NDQzRTIxMUUxQTgzOEUyRjlFRTYxRDMzMSI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOjUzNzlGNzUxNDNFMjExRTFBODM4RTJGOUVFNjFEMzMxIiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOjUzNzlGNzUyNDNFMjExRTFBODM4RTJGOUVFNjFEMzMxIi8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+Af/+/fz7+vn49/b19PPy8fDv7u3s6+rp6Ofm5eTj4uHg397d3Nva2djX1tXU09LR0M/OzczLysnIx8bFxMPCwcC/vr28u7q5uLe2tbSzsrGwr66trKuqqainpqWko6KhoJ+enZybmpmYl5aVlJOSkZCPjo2Mi4qJiIeGhYSDgoGAf359fHt6eXh3dnV0c3JxcG9ubWxramloZ2ZlZGNiYWBfXl1cW1pZWFdWVVRTUlFQT05NTEtKSUhHRkVEQ0JBQD8+PTw7Ojk4NzY1NDMyMTAvLi0sKyopKCcmJSQjIiEgHx4dHBsaGRgXFhUUExIREA8ODQwLCgkIBwYFBAMCAQAAIfkEBQoAAQAsAAAAACwB+gAAAv+Mj6nL7Q+jnLTai7PevPsPhuJIluaJpurKtu4Lx/JM1/aN5/rO9/4PDAqHxKLxiEwql8ym8wmNSqfUqvWKzWq33K73Cw6Lx+Sy+YxOq9fstvsNj8vn9Lr9js/r9/y+/w8YKDhIWGh4iJiouMjY6PgIGSk5SVlpeYmZqbnJ2en5CRoqOkpaanqKmqq6ytrq+gobKztLW2t7i5uru8vb6/sLHCw8TFxsfIycrLzM3Oz8DB0tPU1dbX2Nna29zd3t/Q0eLj5OXm5+jp6uvs7e7v4OHy8/T19vf4+fr7/P3+//DzCgwIEECxo8iDChwoUMGzp8eAOAxIkTF1C8aPFixYLGGjEi6EgxAciNA0dKFGkS5UiOKT+2PGASAMuVLmnCfCkwpkqQOzvO5FkT6E2bOXEG0BnUJ0GkQ4UaYFqU6FGjUKNqzKi0Z0iIXLt6/Qo2rNixZMuaPYs2rdq1bNu6fQs3rty5dOvavYs3r969fPv6/Qs4sODBhAsbPow4seLFjBs7fgw5suTJlCtbvow5s+bNnDt7/gw6tOjRpEubPo06terVrFu7fg07tuzZtGvbvo07t+7dvHv7/g08uPDhxIsbP448+dgCACH5BAUKAAAALIAAdwALAAsAAAIMRI5oye0Po5yULgcKACH5BAUKAAIALIAAdwAbAAsAAAIrFI4oyxIPoUkUNBdzqPTqzCXeB4VKQ5amhabbOqYry7ivGZNz/k3ctUgJCgAh+QQFCgACACyQAHcAGwALAAACKxSOKMsSD6FJFDQXc6j06swl3geFSkOWpoWm2zqmK8u4rxmTc/5N3LVICQoAOw==" data-src="{$p.post_portada}" >
	  <div class="sticky"><i class="fa fa-thumb-tack"></i></div>
	</a>
  </div>
  <div class="card-content">
    <div class="media">
      <div class="media-content">
        <a href="{$tsConfig.url}/posts/{$p.c_seo}/{$p.post_id}/{$p.post_title|seo}.html" class="title is-5">{$p.post_title|truncate:50}</a>
     </div>
    </div>
	<div class="borde-p"></div>
    <div class="content s-descrip">
      {$p.post_body}
    </div>
	<div class="media">
      <div class="media-left">
	  <a href="{$tsConfig.url}/perfil/{$p.user_name}" title="{$p.user_name}">
                <figure class="image is-32x32">
                  <img class="round" src="{$tsConfig.url}/files/avatar/{$p.post_user}_50.jpg" alt="{$p.user_name}">
                </figure>
				</a>
              </div>
              <div class="media-content">
                <p class="title is-5 has-text-right"> <span class="icon"><i class="fa fa-clock-o"></i></span>{$p.post_date|hace}</p>
                </div>
            </div>
            </div>
              </div>
                            {/foreach}
                    {/if}
      {if $tsPosts}
      {foreach from=$tsPosts item=p}
       <div class="card animated zoomIn">
        <div class="card-image">
		<a class="image imgload imgFade is-16by9" href="{$tsConfig.url}/posts/{$p.c_seo}/{$p.post_id}/{$p.post_title|seo}.html">
      <img src="data:image/gif;base64,R0lGODlhLAH6APEBAIKCggAAAP///wAAACH/C05FVFNDQVBFMi4wAwEAAAAh/wtYTVAgRGF0YVhNUDw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlUmVmIyIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ1M1IE1hY2ludG9zaCIgeG1wOkNyZWF0ZURhdGU9IjIwMTItMDEtMzBUMTk6NDItMDg6MDAiIHhtcDpNb2RpZnlEYXRlPSIyMDEyLTAxLTMxVDAzOjQ1OjE0LTE2OjAwIiB4bXA6TWV0YWRhdGFEYXRlPSIyMDEyLTAxLTMxVDAzOjQ1OjE0LTE2OjAwIiBkYzpmb3JtYXQ9ImltYWdlL2dpZiIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDo1Mzc5Rjc1MzQzRTIxMUUxQTgzOEUyRjlFRTYxRDMzMSIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDo1Mzc5Rjc1NDQzRTIxMUUxQTgzOEUyRjlFRTYxRDMzMSI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOjUzNzlGNzUxNDNFMjExRTFBODM4RTJGOUVFNjFEMzMxIiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOjUzNzlGNzUyNDNFMjExRTFBODM4RTJGOUVFNjFEMzMxIi8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+Af/+/fz7+vn49/b19PPy8fDv7u3s6+rp6Ofm5eTj4uHg397d3Nva2djX1tXU09LR0M/OzczLysnIx8bFxMPCwcC/vr28u7q5uLe2tbSzsrGwr66trKuqqainpqWko6KhoJ+enZybmpmYl5aVlJOSkZCPjo2Mi4qJiIeGhYSDgoGAf359fHt6eXh3dnV0c3JxcG9ubWxramloZ2ZlZGNiYWBfXl1cW1pZWFdWVVRTUlFQT05NTEtKSUhHRkVEQ0JBQD8+PTw7Ojk4NzY1NDMyMTAvLi0sKyopKCcmJSQjIiEgHx4dHBsaGRgXFhUUExIREA8ODQwLCgkIBwYFBAMCAQAAIfkEBQoAAQAsAAAAACwB+gAAAv+Mj6nL7Q+jnLTai7PevPsPhuJIluaJpurKtu4Lx/JM1/aN5/rO9/4PDAqHxKLxiEwql8ym8wmNSqfUqvWKzWq33K73Cw6Lx+Sy+YxOq9fstvsNj8vn9Lr9js/r9/y+/w8YKDhIWGh4iJiouMjY6PgIGSk5SVlpeYmZqbnJ2en5CRoqOkpaanqKmqq6ytrq+gobKztLW2t7i5uru8vb6/sLHCw8TFxsfIycrLzM3Oz8DB0tPU1dbX2Nna29zd3t/Q0eLj5OXm5+jp6uvs7e7v4OHy8/T19vf4+fr7/P3+//DzCgwIEECxo8iDChwoUMGzp8eAOAxIkTF1C8aPFixYLGGjEi6EgxAciNA0dKFGkS5UiOKT+2PGASAMuVLmnCfCkwpkqQOzvO5FkT6E2bOXEG0BnUJ0GkQ4UaYFqU6FGjUKNqzKi0Z0iIXLt6/Qo2rNixZMuaPYs2rdq1bNu6fQs3rty5dOvavYs3r969fPv6/Qs4sODBhAsbPow4seLFjBs7fgw5suTJlCtbvow5s+bNnDt7/gw6tOjRpEubPo06terVrFu7fg07tuzZtGvbvo07t+7dvHv7/g08uPDhxIsbP448+dgCACH5BAUKAAAALIAAdwALAAsAAAIMRI5oye0Po5yULgcKACH5BAUKAAIALIAAdwAbAAsAAAIrFI4oyxIPoUkUNBdzqPTqzCXeB4VKQ5amhabbOqYry7ivGZNz/k3ctUgJCgAh+QQFCgACACyQAHcAGwALAAACKxSOKMsSD6FJFDQXc6j06swl3geFSkOWpoWm2zqmK8u4rxmTc/5N3LVICQoAOw==" data-src="{$p.post_portada}" >
	  <a href="{$tsConfig.url}/posts/{$p.c_seo}/" class="cate">{$p.c_nombre}</a>
	</a>
  </div>
  <div class="card-content">
    <div class="media">
      <div class="media-content">
        <a href="{$tsConfig.url}/posts/{$p.c_seo}/{$p.post_id}/{$p.post_title|seo}.html" class="title is-5">{$p.post_title|truncate:50}</a>
      </div>
    </div>
	<div class="borde-p"></div>
    <div class="content descrip">
      {$p.post_body}
    </div>
	<div class="media">
      <div class="media-left">
	  <a href="{$tsConfig.url}/perfil/{$p.user_name}" title="{$p.user_name}">
                <figure class="image is-32x32">
                  <img class="round" src="{$tsConfig.url}/files/avatar/{$p.post_user}_50.jpg" alt="{$p.user_name}">
                </figure>
				</a>
              </div>
              <div class="media-content">
                <p class="title is-5 has-text-right"> <span class="icon"><i class="fa fa-clock-o"></i></span>{$p.post_date|hace}</p>
                <p class="subtitle is-6 has-text-right"><span class="icon is-small"><i class="fa fa-money"></i></span> {$p.post_puntos} <span class="icon is-small"><i class="fa fa-commenting-o"></i></span> {$p.post_comments}</p>
              </div>
            </div>
            </div>
              </div>
                            {/foreach}
                            {else}
                            <li class="emptyData">No hay posts aqu&iacute;</li>
                            {/if}
				 </div>
				        <div class="pagination pag">
                        {if $tsPages.prev > 0 && $tsPages.max == false}<a href="pagina{$tsPages.prev}" class="button is-primary">&laquo; Anterior</a>{/if}
						<ul></ul>
                        {if $tsPages.next <= $tsPages.pages}<a href="pagina{$tsPages.next}" class="button is-primary">Siguiente &raquo;</a>
                        {elseif $tsPages.max == true}<a href="pagina2" class="button is-primary">Siguiente &raquo;</a>{/if}
                    </div>