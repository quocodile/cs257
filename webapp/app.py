'''
Kevin Chen, James Marlin, Quoc Nguyen
Description: This is main page for website Anime Central. 
'''

import sys
import psycopg2
import argparse
import api
import flask
from api import get_search_results, get_watchlist, cursor_init
from flask import request
from flask_login import login_required, current_user
from __init__ import app
from config import database, user, password
import json
animes_imagepaths = json.loads(open('animes_imagepaths.json', 'r').read())  

app.register_blueprint(api.api, url_prefix='/api')

'''Homepage route'''
@app.route('/')
def home():
    return flask.render_template('index.html')

'''Route for login'''
@app.route('/login')
def login_page():
    return flask.render_template('login.html')

'''Route for signup'''
@app.route('/signup')
def signup_page():
    return flask.render_template('signup.html')

'''Route for profile'''
@app.route('/profile')
@login_required
def profile_page():
    watchlist = get_watchlist()
    html_content = ""
    for anime in watchlist:
        anime_name = anime['anime_name']
        path_to_image = anime['pic']
        html_content += "<div class='watchlist_anime_container'>"
        html_content += "  <a style='text-decoration: none;' href='/current/" + anime_name + "'>"
        html_content += "    <div class='watchlist_anime'>"
        html_content += "      <h3>" + anime_name + "</h3>"
        html_content += "      <img src='" + path_to_image + "' alt='" + anime_name + "'/>"
        html_content += "    </div>"
        html_content += "  </a>"
        html_content += "</div>"
    return flask.render_template('profile.html', name = current_user.username, watchlist = html_content)

'''Route that displays search route'''
@app.route('/search', methods=['POST'])
def search_results():
    search_string = (request.form['search_string'])
    search_type = request.form['search_type']
    search_word, search_results = get_search_results(search_string, search_type)
    search_word = "'" + search_word + "'"
    anime_html = ""
    for anime in search_results:
        anime_name = anime["anime_name"]
        num_episodes = anime["num_episodes"]
        mal_rating = anime["mal_rating"]
        img_path = anime["pic"]
        anime_url = '/current/' + anime_name
        #contains the search results content in html form that will be rendered in search.html
        anime_html += "<div class='search_result'>"
        anime_html += "  <p style='margin-left: 20px; width: 200px; height: 50px;'>" + anime_name + "</p>"
        anime_html += "  <a href='" + anime_url + "'>"
        anime_html += "    <img class='search_anime_image' src='" + img_path + "' alt='" + anime_name + "'/>"
        anime_html += "  </a>"
        anime_html += "  <p>_____________________</p>"
        anime_html += "</div>"
    return flask.render_template('search.html', search_word = search_word, results = anime_html)

'''Route user can go to to see detailed info about an anime'''
@app.route('/current/<title>')
def currentAnime(title):
        connection, cursor = cursor_init()
        if title:
                query = "SELECT DISTINCT * FROM animes WHERE LOWER(anime_name)=LOWER(%s)"
                cursor.execute(query, (title,))
        else:
                query = "SELECT * FROM Animes WHERE anime_id=1"
                cursor.execute(query)
        for row in cursor:
          anime_name = row[1]
          num_episodes = row[2]
          mal_rating = row[4] 
          try:
              pic = animes_imagepaths[row[1] + ' anime']
          except Exception as e:
              pic = ''
        #query user watchlist
        try:
            user_id = current_user.id
        except Exception as e:
            user_id = -1
        query = "SELECT DISTINCT * FROM watchlist, animes WHERE watchlist.user_id='%s' "
        query += "AND animes.anime_name=%s "
        query += "AND animes.anime_id=watchlist.anime_id"
        cursor.execute(query, (user_id, title))
        anime_exists = False
        for row in cursor:
          anime_exists = True
        query = 'SELECT DISTINCT username, review_text '
        query += 'FROM animes, reviews, "user" '
        query += 'WHERE CAST("user".id as TEXT)=reviews.user_id '
        query += 'AND animes.anime_name=%s '
        query += 'AND animes.anime_id=reviews.anime_id LIMIT 10'
        cursor.execute(query, (anime_name,))
        if cursor.rowcount == 0:
            reviews_html = "<div>No comments have been written for this anime yet.</div>"
        else: 
            reviews_html = "<div id='reviews_container'"
            for row in cursor:
                username = row[0]
                text = row[1]
                reviews_html += "<div style='margin-bottom: 20px'>"
                reviews_html += "<h3 class='review_username'>" + username + "</h3>" 
                reviews_html += "<h4 class='review_text'>" + text + "</h4>"
                reviews_html += "</div>"
            reviews_html += "</div>"
        anime_data = (pic, anime_name, num_episodes, mal_rating)
        return flask.render_template('anime.html', anime_data=anime_data, anime_exists=anime_exists, reviews_html=reviews_html)

if __name__ == '__main__':
    parser = argparse.ArgumentParser('A tiny Flask application, including API')
    parser.add_argument('host', help='the host on which this application is running')
    parser.add_argument('port', type=int, help='the port on which this application is listening')
    arguments = parser.parse_args()
    app.run(host=arguments.host, port=arguments.port, debug=True)
