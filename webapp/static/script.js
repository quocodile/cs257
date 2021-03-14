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

    var rightPaddle = document.getElementsByClassName("right-paddle");
    var leftPaddle = document.getElementsByClassName("left-paddle");



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
    

    get_genre("action");
    get_genre("romance");
    get_genre("shounen");
    get_genre("horror");
    get_genre("drama");
}

function getAPIBaseURL() {
    var baseURL = window.location.protocol + '//' + window.location.hostname + ':' + window.location.port + '/api';
    return baseURL;
}

function on_button_right_action(){
    var action_button_right = document.getElementById("genre_action");
    action_button_right.scrollLeft += 180;
}

function on_button_left_action(){
    var scrollleft = document.getElementById('genre_action');
    scrollleft.scrollLeft -= 180;
} 

function on_button_right_horror(){
    var horror_button_right = document.getElementById("genre_horror");
    horror_button_right.scrollLeft += 180;
}

function on_button_left_horror(){
    var horror_button_left = document.getElementById('genre_horror');
    horror_button_left.scrollLeft -= 180;
} 

function on_button_right_shounen(){
    var shounen_button_right = document.getElementById("genre_shounen");
    shounen_button_right.scrollLeft += 180;
}

function on_button_left_shounen(){
    var shounen_button_left = document.getElementById('genre_shounen');
    shounen_button_left.scrollLeft -= 180;
} 

function on_button_right_drama(){
    var drama_button_right = document.getElementById("genre_drama");
    drama_button_right.scrollLeft += 180;
}

function on_button_left_drama(){
    var drama_button_left = document.getElementById('genre_drama');
    drama_button_left.scrollLeft -= 180;
} 

function on_button_right_romance(){
    var romance_button_right = document.getElementById("genre_romance");
    romance_button_right.scrollLeft += 180;
}

function on_button_left_romance(){
    var romance_button_left = document.getElementById('genre_romance');
    romance_button_left.scrollLeft -= 180;
} 

function get_genre(genre) {
  var url = getAPIBaseURL() + "/anime?genre=" + genre;
  var genre_container = document.getElementById("genre_" + genre);
  console.log("genre_" + genre);
  fetch(url, {method: 'get'})
  .then((response) => response.json())
  .then(jsondata => {   
      var animes_html = '';
      for (var i = 0; i < 10; i++) 
      {
          anime = jsondata[i]
          type_item_class = genre + '_item'
          type_genre_item = genre + '_genre_item'
          image_address = anime['pic']
          alt_text = anime['anime_name'] + " image"
          anime_url = '/api/current/' + anime['anime_name']
          animes_html += "<div style='margin: 15px;' class = '" + type_genre_item + "'>"
                      + "  <div class = '" + type_item_class +  "' >"
                      + "    <a href='" + anime_url + "'>"
                      + "      <img src='" + image_address + "' style='width:200px;height:300px;' alt='" + alt_text + "'/>"
                      + "    </a>"
                      + "    <p>" + anime['anime_name'] + "</p>"
                      + "    <p>" + anime['mal_rating'] + "</p>"
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





