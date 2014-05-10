var ajax = new Ajax('http://web.sfc.keio.ac.jp/~t11460ss/json.php');
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
  /* parse */
  var json = $.parseJSON(data);
  var date = json['date'];
  var p_status = json['status'];

  $('#date').text('hello');

  /* insert into table */
  for(var i=0;i<p_status.length;i++){
    $('tbody').append(
      $('<tr></tr>')
        .append($('<td></td>').text(place[i]))
        .append($('<td></td>').text(table[i][0]))
        .append($('<td></td>').text(table[i][1]))
        .append($('<td></td>').text(table[i][2]))
        );
  }
  $('#date').text('hello');
}

$(function() {
  var $reload = $("#reload");

  ajax.get();
  /* event */
  $reload.click(
    ajax.get()
  );

});
