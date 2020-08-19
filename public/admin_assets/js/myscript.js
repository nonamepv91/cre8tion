(function($)
{
  $(document).ready(function()
  {
    var main = $('#form');
    
    // Tabs
    main.contentTabs();
  });
})(jQuery);

 



$(document).ready(function(){
  $('#addImages').click(function(){
    $('#insert').append('<div class="formRight"><div class="left"><input type="file"  id="image_list" name="fProductDetail[]" multiple></div><div name="image_list_error" class="clear error"></div></div>')
  });
});



$(document).ready(function(){
	$('a#del-img').on('click',(function(){
		var url = "admin/product/delimg/";
		var _token = $("form[name='frmEditProduct']").find("input[name='_token']").val();
		var idimg = $(this).parent().find("img").attr("idimg");
		var img = $(this).parent().find("img").attr("src");
		var rid = $(this).parent().find("img").attr('id');
		$.ajax({
			url: url + idimg,
			type: 'GET',
			cache: false,
			data: {"_token": _token, "idimg": idimg, "urlimg": img},
			success: function(data){
				if(data == "ok"){
					$("#"+rid).remove();	
				}else{
					alert("Error!");
				}
			}
		});
	}));
});