var ajax = new Ajax('http://web.sfc.keio.ac.jp/~t11460ss/mail.json');
var place = [
  "ITC事務室入り口横(壁側)",
  "ITC 入り口横左",
  "ITC 入り口横右",
  "λ11左",
  "λ11右",
  "λ21",
  "λ18",
  "O17",
  "I18",
  "E17",
  "K18",
  "K教室棟2階",
  "I教室棟2階",
  "メディアセンター右",
  "メディアセンター左"
]

ajax.onget = function(data){
  var s = data['status'].split(' ').slice(2, 5);
  for(var i=0;i<data.place.length;i++){
    $('tbody').append(
      $('<tr></tr>')
        .append($('<td></td>').text(s[0]))
        .append($('<td></td>').text(s[1]))
        .append($('<td></td>').text(s[2]))
        );
  }
  // $('#date').append(date['date']);
  $('date').html("hello");
}

$(function() {
  var $reload = $("#reload");

  ajax.get();
  /* event */
  $reload.click({
  });

});
