var navVue = new Vue({
	el:"#nav",
	data:{
		logged:false,
		username:"",
	}
});

$.ajax({
	url : "api/check",
	type : "post",
	data : {},
	contentType : "application/x-www-form-urlencoded;charset=UTF-8",
	success:function(data){
		if(data.message=="已登录"){
			navVue.logged=true;
			navVue.username=data.data.username;
		}
	}
});