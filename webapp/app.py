'''
Kevin Chen, James Marlin, Quoc Nguyen
Description: This is main page for website Anime Central. 
'''

import sys
import psycopg2
import argparse
import api
import flask
from api import get_search_results, get_watchlist
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
    html_content += "  <a style='text-decoration: none;' href='/api/current/" + anime_name + "'>"
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
    anime_url = '/api/current/' + anime_name
    #contains the search results content in html form that will be rendered in search.html
    anime_html += "<div class='search_result'>"
    anime_html += "  <p style='height: 30px;'>" + anime_name + "</p>"
    anime_html += "  <p> # episodes: " + num_episodes + "</p>"
    anime_html += "  <p> Rating: " + mal_rating + "</p>"
    anime_html += "  <a href='" + anime_url + "'>"
    anime_html += "    <img class='search_anime_image' src='" + img_path + "' alt='" + anime_name + "'/>"
    anime_html += "  </a>"
    anime_html += "  <p>_____________________</p>"
    anime_html += "</div>"
  return flask.render_template('search.html', search_word = search_word, results = anime_html)

if __name__ == '__main__':
    parser = argparse.ArgumentParser('A tiny Flask application, including API')
    parser.add_argument('host', help='the host on which this application is running')
    parser.add_argument('port', type=int, help='the port on which this application is listening')
    arguments = parser.parse_args()
    app.run(host=arguments.host, port=arguments.port, debug=True)
