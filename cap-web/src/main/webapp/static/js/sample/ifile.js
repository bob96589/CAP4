$(document).ready(function(){
	$("#upload").click(function(){
    	$.capFileUpload({
	        url: "webroot/samplehandler/upload",
	        fileElementId: "ufile",
	       // fileCheck: ["jpg", "jpeg", "png", "gif", "txt"],
	        successMsg:false,
	        limitSize: 1*1024*1024,
	        fileEncoding:'UTF-8',
	        data: {
	            testStr: "test!!test!!"
	        },
	        success: function(data){
	            //API.showMessage(data.mktMatlType, data.mktMatl, $("#showMessage"), data.size);
	        }
	    });
	});
	$("#dwnload").click(function(){
		$.capFileDownload({
			url:"webroot/samplehandler/dwnload",
			data:{
				fileName : "我是log.log"
			}
		});
	});
});