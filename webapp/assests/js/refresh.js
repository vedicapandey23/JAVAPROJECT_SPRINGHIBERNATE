
    function ajaxView() {
        $.ajax({
            url :'cretieveAllSplit.html',
            success : function(data) {
            	
                $("#v2").html(data);
            }
        });
        /* alert("jjjj") */
    }
 

     var intervalId = 0;
    intervalId = setInterval(ajaxView, 500000000); 
