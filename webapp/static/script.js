/*
Kevin Chen, James Marlin, Quoc Nguyen
*/

window.onload = initialize;

function initialize() {
    let button_1 = document.getElementById('button_1');
    var button_2 = document.getElementById('button_2');

    button_1.addEventListener('click',on_button_1);
    button_2.addEventListener('click',on_button_2);
    get_action();
    get_romance();
}
function getAPIBaseURL() {
    var baseURL = window.location.protocol + '//' + window.location.hostname + ':' + window.location.port + '/api';
    return baseURL;
}

function on_button_1() {
    var url = getAPIBaseURL() + '/anime/';

    fetch(url, {method: 'get'})

    .then((response) => response.json())

    .then(function(anime) {
        anime_1 = anime[0];
        image_address = anime_1['pic']
        var listBody = "";
        listBody += '<li>' + anime_1['anime_name']
            + ', ' + anime_1['num_episodes']
            + '-' + anime_1['genre']
            + ', ' + anime_1['mal_rating'];
            + '</li>\n';
        
        var animeElement = document.getElementById('put_data_here_1');
        var imageElement = document.getElementById('image_1');
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

    fetch(url, {method: 'get'})

    .then((response) => response.json())

    .then(function(anime) {
        anime_2 = anime[1]
        image_address = anime_2['pic']
        var listBody = '';
        listBody += '<li>' + anime_2['anime_name']
            + ', ' + anime_2['num_episodes']
            + '-' + anime_2['genre']
            + ', ' + anime_2['mal_rating'];
            + '</li>\n';
        
        var animeElement = document.getElementById('put_data_here_2');
        var imageElement = document.getElementById('image_2');
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
            listBody += "<div style='margin: 15px;'>"
                + "<img src='" + image_address + "' style='width:200px;height:300px;'/>"
                + '<p>' + anime['anime_name'] + '</p>'
                + '<p>' + anime['mal_rating'] + '</p>'
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

function get_romance(){
    var url = getAPIBaseURL() + "/anime?genre=Romance";


fetch(url, {method: 'get'})

.then((response) => response.json())

.then(jsondata =>   
    {   
        var listBody = '';
        for (var i = 0; i < 10; i++) {
            anime = jsondata[i]
            image_address = anime['pic']
            listBody += "<div style='margin: 15px;'>"
                + "<img src='" + image_address + "' style='width:200px;height:300px;'/>"
                + '<p>' + anime['anime_name'] + '</p>'
                + '<p>' + anime['mal_rating'] + '</p>'
                +  '</div>';
        }

    var animeElement = document.getElementById('genre_romance');
    console.log(animeElement);
    if (animeElement) {
        animeElement.innerHTML = listBody;
    }
})
.catch(function(error) {
    console.log(error);
});

}


