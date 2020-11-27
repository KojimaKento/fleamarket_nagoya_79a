$(function(){
  $( document ).on( 'keyup', '.form2__price', function(){ 
    let amount = $( this ).val();
    let tax = Math.ceil(amount * 0.1);
    let profit = Math.floor(amount * 0.9);
    $('.tag3').html(tax);
    $('.tag4').html(profit);
  });
 });