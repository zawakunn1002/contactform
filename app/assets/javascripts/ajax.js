// $(function() {

//   // 送信確認
//   $('#send-mail').click(function() {

//     // フォームから入力値を取得
//     var name = $('#send-name').val();
//     var email = $('#send-email').val();
//     var message = $('#send-message').val();

//     // 入力内容の確認
//     if(name != "" && email != "" && message != ""){

//       $.ajax({
//         type: 'POST',
//         url: "./inquiries#create",
//         data: {
//           name:name,
//           email:email,
//           message:message
//         }),
//         success: function( data ) {
//           if(data.match(/success/)){

//         },
//         error: function() {
//           alert("予期せぬエラーが発生しました。");
//         }
//       });
//     } else {
//       alert("キャンセルされました。");
//     }

//   }
// });