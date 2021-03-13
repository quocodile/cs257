/*
Kevin Chen, James Marlin, Quoc Nguyen
*/

window.onload = initialize;

function initialize() {
    var scrollleft = document.getElementById('scrollleft');
    var rightPaddle = document.getElementsByClassName("right-paddle");
    var leftPaddle = document.getElementsByClassName("left-paddle");
    scrollright.addEventListener('click',on_button_right);
    scrollleft.addEventListener('click',on_button_left);
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


function on_button_right(){
    var scrollright = document.getElementById('genre_romance');
    scrollright.scrollLeft += 100;
}

function on_button_left(){
    scrollleft.scrollLeft -= 100;
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





