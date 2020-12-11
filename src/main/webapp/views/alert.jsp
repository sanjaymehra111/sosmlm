<style>

.main_alert_head{
	position: fixed; top: 10; 
	right: 10; 
	background: radial-gradient(#cb91d4, #89719d); 
	min-width: 250px; 
	max-width: 350px; 
	z-index: 999999999999!important; 
	border: solid 1px #75678c; 
	border-radius: 10px;
}

.main_alert_head_success{
	background: radial-gradient(#14dd83, #198137); 
}

.main_alert_head_error{
	background: radial-gradient(#e61212, #ff6700); 
}

.alert_head{
	background: white; 
	padding: 5px; 
	border-radius: 5px;
}
.close_alert_btn{
	outline: none!important; 	
	float: right; 
	background: transparent!important; 
	border: none!important; 
	padding: 3px; 
	font-size: 20px; 
	color:gray!important;
}
.alert_body{
	padding:10px;  
	display: -webkit-box; 
	-webkit-line-clamp: 3; 
	-webkit-box-orient: vertical; 
	overflow: hidden; 
	text-overflow: ellipsis; 
	max-height: 72px; 
	font-weight: bold; 
	color: white;
}
.alert_box{
	display:none;
}

</style>

<script>
	var TimeOut;
	function alert(text, type){
		clearTimeout(TimeOut);
		$(".main_alert_head").removeClass("main_alert_head_error main_alert_head_success");
		if(type == "err")
			$(".main_alert_head").addClass("main_alert_head_error");
		else if(type == "suc")
			$(".main_alert_head").addClass("main_alert_head_success");
		
		$(".alert_body").html(text)
		$('.alert_box').show(500);
		TimeOut = setTimeout(function(){CloseAlertBox()}, 5000);
	}
	
	function CloseAlertBox(){
		$('.alert_box').hide(500);
	}
</script>

<div class="alert_box">
		<div class="main_alert_head">
			<div class="alert_head"> 
				<%-- <img src="/images/adminicon2.png" style="width:20px; height:20px; float: left;"> --%>
				<strong style="color:gray">&nbsp; SOS  MLM</strong>
				<button type="button" onclick="CloseAlertBox();" class="close_alert_btn btn btn-danger"><i class="fa fa-times-circle-o"></i></button>
			</div>
			<div class="alert_body"> 
			</div>
		</div>
		
</div>