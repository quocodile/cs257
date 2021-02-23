
window.onload = initialize;

function initialize() {
    let button_1 = document.getElementById('button_1');
    var button_2 = document.getElementById('button_2');
    var button_3 = document.getElementById('button_3');
    var button_4 = document.getElementById('button_4');

    button_1.addEventListener('click',on_button_1);
    button_2.addEventListener('click',on_button_2);

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
        var listBody = '';
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

