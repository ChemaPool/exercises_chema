$(document).ready(() => {
  $(".message-comision-visa").hide();
  $(".message-comision-mastercard").hide();
  $(".message-comision-amex").hide();
  $(".code-mastercard").hide();
  $(".button-footer").hide();

  $(".image-visa").click(() => {
    $(".button-footer").show();
    $(".message-comision-visa").show();
    $(".code-mastercard").hide();
    $(".message-comision-amex").hide();
    $(".message-comision-mastercard").hide();
    $(".image-visa").addClass("box-images-active");
    $(".image-amex").removeClass("box-images-active");
    $(".image-mastercard").removeClass("box-images-active");
  });

  $(".image-mastercard").click(() => {
    $(".button-footer").show();
    $(".message-comision-mastercard").show();
    $(".code-mastercard").show();
    $(".message-comision-visa").hide();
    $(".message-comision-amex").hide();
    $(".image-mastercard").addClass("box-images-active");
    $(".image-visa").removeClass("box-images-active");
    $(".image-amex").removeClass("box-images-active");
  });

  $(".image-amex").click(() => {
    $(".button-footer").show();
    $(".message-comision-amex").show();
    $(".message-comision-visa").hide();
    $(".code-mastercard").hide();
    $(".message-comision-mastercard").hide();
    $(".image-amex").addClass("box-images-active");
    $(".image-mastercard").removeClass("box-images-active");
    $(".image-visa").removeClass("box-images-active");
  });

});