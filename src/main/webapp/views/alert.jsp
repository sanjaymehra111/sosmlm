<script>
	function alert(text){
		//console.log(text);
		$(".alert_body").html(text)
		$('.alert_box').show(500);
		setTimeout(function(){CloseAlertBox()}, 10000);
	}
	
	function CloseAlertBox(){
		$('.alert_box').hide(500);
	}
</script>

<div class="alert_box" style="display: none;">
		<div class="main_alert_head" style="position: fixed; top: 10; right: 10; background: radial-gradient(#cb91d4, #89719d); min-width: 250px; max-width: 350px; z-index: 999999999999!important; border: solid 1px #75678c; border-radius: 10px;">
			<div class="alert_head" style="background: white; padding: 5px; border-radius: 5px;"> 
				<%-- <img src="/images/adminicon2.png" style="width:20px; height:20px; float: left;"> --%>
				<strong style="color:gray">&nbsp; SOS  MLM</strong>
				<button type="button" onclick="CloseAlertBox();" class="close_alert_btn btn btn-danger" style="outline: none; float: right; background: transparent; border: none; padding: 3px; font-size: 20px; color:gray"><i class="fa fa-times-circle-o"></i></button>
			</div>
			<div class="alert_body" style="padding:10px;  display: -webkit-box; -webkit-line-clamp: 3; -webkit-box-orient: vertical; overflow: hidden; text-overflow: ellipsis; max-height: 72px; font-weight: bold; color: white;"> 
			</div>
		</div>
		
</div>