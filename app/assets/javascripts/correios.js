 $(document).ready(function () {
        	    	$("#loading-div-background").css({ opacity: 0.8 });
            		HideResult();
        		});

        		function ShowProgressAnimation() {
            		$("#loading-div-background").show();

		        }

        		function HideProgressAnimation() { 
					$("#loading-div-background").hide();
				}

				function ShowResult(){
					$("#div-result").show();
				}

				function HideResult(){
					$("#div-result").hide();
				}

 	  
        		$("#calcular").click(function() {
      				ShowProgressAnimation();
      				HideResult();
        			values = $('#calcfrete').serialize()
 		    		$.ajax({
            			type: 'GET',
            			url: "/fretes/calcFrete.json",
            			data: values,
            			error: function(){  },
            			success: function(data){               
                  			$('#pac').text('R$ ' + data.pac.valor); 
                  			$('#sedex').text('R$ '+ data.sedex.valor); 
                  			HideProgressAnimation();
                  			ShowResult();
      	                },
         			   	complete: function (){  }
            		});
    	 	  		return false;
});