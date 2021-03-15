/*
Kevin Chen, James Marlin, Quoc Nguyen
*/

window.onload = initialize;

function initialize() {
    var action_button_left = document.getElementById('action_button_left');
    var action_button_right = document.getElementById('action_button_right');

    var horror_button_left = document.getElementById('horror_button_left');
    var horror_button_right = document.getElementById('horror_button_right');

    var shounen_button_left = document.getElementById('shounen_button_left');
    var shounen_button_right = document.getElementById('shounen_button_right');

    var drama_button_left = document.getElementById('drama_button_left');
    var drama_button_right = document.getElementById('drama_button_right');

    var romance_button_left = document.getElementById('romance_button_left');
    var romance_button_right = document.getElementById('romance_button_right');

    var adventure_button_left = document.getElementById('adventure_button_left');
    var adventure_button_right = document.getElementById('adventure_button_right');

    var comedy_button_left = document.getElementById('comedy_button_left');
    var comedy_button_right = document.getElementById('comedy_button_right');

    action_button_right.addEventListener('click',on_button_right_action);
    action_button_left.addEventListener('click',on_button_left_action);

    horror_button_right.addEventListener('click',on_button_right_horror);
    horror_button_left.addEventListener('click',on_button_left_horror);

    shounen_button_right.addEventListener('click',on_button_right_shounen);
    shounen_button_left.addEventListener('click',on_button_left_shounen);

    drama_button_right.addEventListener('click',on_button_right_drama);
    drama_button_left.addEventListener('click',on_button_left_drama);

    romance_button_right.addEventListener('click',on_button_right_romance);
    romance_button_left.addEventListener('click',on_button_left_romance);
    
    adventure_button_right.addEventListener('click',on_button_right_adventure);
    adventure_button_left.addEventListener('click',on_button_left_adventure);

    comedy_button_right.addEventListener('click',on_button_right_comedy);
    comedy_button_left.addEventListener('click',on_button_left_comedy);

    get_genre("action");
    get_genre("romance");
    get_genre("shounen");
    get_genre("horror");
    get_genre("drama");
    get_genre("adventure");
    get_genre("comedy");
}

function getAPIBaseURL() {
    var baseURL = window.location.protocol + '//' + window.location.hostname + ':' + window.location.port + '/api';
    return baseURL;
}

function on_button_right_action(){
    on_button_right("action");
}

function on_button_left_action(){
    on_button_left("action");
} 

function on_button_right_horror(){
    on_button_right("horror");
}

function on_button_left_horror(){
    on_button_left("horror");
} 

function on_button_right_shounen(){
    on_button_right("shounen");
}

function on_button_left_shounen(){
    on_button_left("shounen");
} 

function on_button_right_drama(){
    on_button_right("drama");
}

function on_button_left_drama(){
    on_button_left("drama");
} 

function on_button_right_romance(){
    on_button_right("romance");
}


function on_button_left_romance(){
    on_button_left("romance");
} 

function on_button_right_adventure() {
  on_button_right("adventure");
}

function on_button_left_adventure() {
  on_button_left("adventure");
}

function on_button_right_comedy() {
  on_button_right("comedy");
}

function on_button_left_comedy() {
  on_button_left("comedy");
}

function on_button_left(genre) {
    var button_left = $("#genre_" + genre);
    var distance_scroll = $(".genre_container")[0].offsetWidth; 
    distance_scroll_left = "-=" + distance_scroll + "px";
    button_left.animate({scrollLeft: distance_scroll_left }, 300);
}

function on_button_right(genre) {
    var button_right = $("#genre_" + genre);
    var distance_scroll = $(".genre_container")[0].offsetWidth; 
    distance_scroll_right = "+=" + distance_scroll + "px";
    button_right.animate({scrollLeft: distance_scroll_right}, 300);
}

function get_genre(genre) {
  var url = getAPIBaseURL() + "/anime?genre=" + genre;
  var genre_container = document.getElementById("genre_" + genre);
  console.log("genre_" + genre);
  fetch(url, {method: 'get'})
  .then((response) => response.json())
  .then(jsondata => {   
      var animes_html = '';
      for (var i = 0; i < 50; i++) 
      {
          anime = jsondata[i]
          type_item_class = genre + '_item'
          type_genre_item = genre + '_genre_item'
          image_address = anime['pic']
          alt_text = anime['anime_name'] + " image"
          anime_url = '/current/' + anime['anime_name']
          animes_html += "<div style='margin: 15px;' class = '" + type_genre_item + "'>"
                      + "  <div class = '" + type_item_class +  "' >"
                      + "    <a href='" + anime_url + "'>"
                      + "      <img src='" + image_address + "' style='width:200px;height:300px;' alt='" + alt_text + "'/>"
                      + "    </a>"
                      + "    <p style='font-weight: bold;'>" + anime['anime_name'] + "</p>"
                      + "  </div>"
                      + "</div>";
      }
      
          
      if (genre_container) 
      {
          genre_container.innerHTML += animes_html;
      }
  })
  .catch(error => {
      console.log(error);
  });
}





