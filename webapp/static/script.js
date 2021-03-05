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

function get_action(){
    var url = getAPIBaseURL() + "/anime?genre=Action";


fetch(url, {method: 'get'})

.then((response) => response.json())

.then(jsondata =>   
    {   
        var listBody = '';
        for (var i = 0; i < 10; i++) {
            anime = jsondata[i]
            //image_address = anime['pic']
            listBody += '<li>' + anime['anime_name']
                + ', ' + anime['mal_rating'];
                + '</li>\n';
        }

    var animeElement = document.getElementById('genre_action');
    console.log(animeElement);
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
            //image_address = anime['pic']
            listBody += '<li>' + anime['anime_name']
                + ', ' + anime['mal_rating'];
                + '</li>\n';
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

// function onAuthorsButtonClicked() {
//     var url = getAPIBaseURL() + '/search/';

//     // Send the request to the Books API /authors/ endpoint
//     fetch(url, {method: 'get'})

//     // When the results come back, transform them from a JSON string into
//     // a Javascript object (in this case, a list of author dictionaries).
//     .then((response) => response.json())

//     // Once you have your list of author dictionaries, use it to build
//     // an HTML table displaying the author names and lifespan.
//     .then(function(authorsList) {
//         // Build the table body.
//         var tableBody = '';
//         for (var k = 0; k < authorsList.length; k++) {
//             tableBody += '<tr>';

//             tableBody += '<td><a onclick="getAuthor(' + authorsList[k]['id'] + ",'"
//                             + authorsList[k]['first_name'] + ' ' + authorsList[k]['last_name'] + "')\">"
//                             + authorsList[k]['last_name'] + ', '
//                             + authorsList[k]['first_name'] + '</a></td>';

//             tableBody += '<td>' + authorsList[k]['birth_year'] + '-';
//             if (authorsList[k]['death_year'] != 0) {
//                 tableBody += authorsList[k]['death_year'];
//             }
//             tableBody += '</td>';
//             tableBody += '</tr>';
//         }

//         // Put the table body we just built inside the table that's already on the page.
//         var resultsTableElement = document.getElementById('results_table');
//         if (resultsTableElement) {
//             resultsTableElement.innerHTML = tableBody;
//         }
//     })

