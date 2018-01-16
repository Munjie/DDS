/**
 * Created with jing.zhao2013
 * Date: 13-8-12
 * Time: 上午11:24
 */
$(function($){
	$('.shopping_product_list_5 input').blur(function(){
		 priceTotal();
	})
    priceTotal();
})

function priceTotal(){
	var total =0;
	var pricesTds= $(".shopping_product_list_4"); 
	pricesTds.each(function(){
		 
		var price=$(this).find("label").html();
		var count=$(this).next().find("input").val();
		 
		total+=(parseFloat(price)*100*count)/100.00
	})
	
	$(".shopping_list_end_3").html(total);
	
}