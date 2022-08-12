// $(document).bind('ready ajaxComplete', function() {
$(document).ready(function() {
  $('#sake_select').change(function() {
      // $(this).parent().submit();
      $('.sake-select-btn').trigger('click')
    // var num = $.trim($(this).val());
    // console.log(num)
    // $.ajax({
    //   type: 'POST', // リクエストのタイプ
    //   url: '/search_sake_select', // リクエストを送信するURL
    //   data:  { sake_select: num }, // サーバーに送信するデータ
    //   dataType: 'json', // サーバーから返却される型
    // })
  });
});

$(document).ready(function() {
  $('#shop_select').change(function() {
      $('.shop-select-btn').trigger('click')
  });
});