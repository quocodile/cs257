/*
Kevin Chen, James Marlin, Quoc Nguyen
*/

window.onload = initialize;

function initialize() {
    var button_1 = document.getElementById('button_1');
    var button_2 = document.getElementById('button_2');
    var scrollleft = document.getElementById('scrollleft');
    var rightPaddle = document.getElementsByClassName("right-paddle");
    var leftPaddle = document.getElementsByClassName("left-paddle");
    scrollright.addEventListener('click',on_button_right);
    scrollleft.addEventListener('click',on_button_left);
    button_1.addEventListener('click',on_button_1);
    button_2.addEventListener('click',on_button_2);
    get_action();
    get_romance();
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

function on_button_1() {
    var url = getAPIBaseURL() + '/anime/';
    var animeElement = document.getElementById('put_data_here_1');
    var imageElement = document.getElementById('image_1');
    fetch(url, {method: 'get'})

    .then((response) => response.json())

    .then(anime => {
        current_anime = anime[0];
        image_address = current_anime['pic']
        var listBody = "";
        listBody += '<li>' + current_anime['anime_name']
            + ', ' + current_anime['num_episodes']
            + '-' + current_anime['genre']
            + ', ' + current_anime['mal_rating'];
            + '</li>\n';
        
        if (animeElement) {
            animeElement.innerHTML = listBody;
        }
        if (imageElement) {
            imageElement.src = image_address;
        }
    })
    .catch(function(error) {
        console.log(error);
    });
}

function on_button_2() {
    var url = getAPIBaseURL() + '/anime/';
    var animeElement = document.getElementById('put_data_here_2');
    var imageElement = document.getElementById('image_2');

    fetch(url, {method: 'get'})

    .then(response => response.json())

    .then(anime => {
        anime_2 = anime[1]
        image_address = anime_2['pic']
        var listBody = '';
        listBody += '<li>' + anime_2['anime_name']
            + ', ' + anime_2['num_episodes']
            + '-' + anime_2['genre']
            + ', ' + anime_2['mal_rating'];
            + '</li>\n';
        
        if (animeElement) {
            animeElement.innerHTML = listBody;
        }
        if (imageElement) {
            imageElement.src = image_address;
        }
    })
    .catch(function(error) {
        console.log(error);
    });
}

function get_action(){
    var url = getAPIBaseURL() + "/anime?genre=Action";

    fetch(url, {method: 'get'})
    .then((response) => response.json())
    .then(jsondata =>   
        {   
            var listBody = '';
            for (var i = 0; i < 10; i++) {
                anime = jsondata[i]
                image_address = anime['pic']
                anime_url = '/api/current/' + anime['anime_name']
                listBody += "<div style='margin: 15px;'>"
                         + "<a href='" + anime_url + "'>"
                         + "<img src='" + image_address + "' style='width:200px;height:300px;'/>"
                         + "</a>"
                         + '<p>' + anime['anime_name'] + '</p>'
                         +  '</div>';
        }

            var animeElement = document.getElementById('genre_action');
            if (animeElement) {
                animeElement.innerHTML = listBody;
            }
        })
    .catch(function(error) {
        console.log(error);
    });
}

function get_romance() {
    var url = getAPIBaseURL() + "/anime?genre=Romance";
    var animeElement = document.getElementById('genre_romance');

    fetch(url, {method: 'get'})
    .then((response) => response.json())
    .then(jsondata => {   
        var animes_html = '';
        for (var i = 0; i < 10; i++) 
        {
            anime = jsondata[i]
            image_address = anime['pic']
            animes_html += "<div style='margin: 15px;' class = 'romance_genre_item'>"
                     + "<div class = 'romance_item'>"
                     + "<img src='" + image_address + "' style='width:200px;height:300px;'/>"
                     + '<p>' + anime['anime_name'] + '</p>'
                     + '<p>' + anime['mal_rating'] + '</p>'
                     +  "</div>"
                     +  '</div>';
        }
        
            
        if (animeElement) 
        {
            animeElement.innerHTML += animes_html;
        }
    })
    .catch(error => {
        console.log(error);
    });
}




