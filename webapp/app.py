'''
Kevin Chen, James Marlin, Quoc Nguyen
Description: This is main page for website Anime Central. 
'''

import sys
import psycopg2
import argparse
import api
from api import get_anime_results
import flask
from flask import request
from flask_login import login_required, current_user
from __init__ import app
from config import database, user, password
import json
animes_imagepaths = json.loads(open('animes_imagepaths2.json', 'r').read())  

app.register_blueprint(api.api, url_prefix='/api')

'''Homepage route'''
@app.route('/')
def home():
    return flask.render_template('index.html')

'''for testing'''
@app.route('/test')
def anime_page():
  return flask.render_template('anime.html')

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
  connection = psycopg2.connect(database=database, user=user, password=password)
  cursor = connection.cursor()
  user_id = str(current_user.id)
  query = 'SELECT DISTINCT * FROM animes, watchlist WHERE watchlist.user_id=%s '
  query += 'AND animes.anime_id=watchlist.anime_id' 
  cursor.execute(query, (user_id,))
  watchlist = []
  for row in cursor:
    dic = {}
    dic['anime_id'] = row[0]
    dic['anime_name'] = row[1]
    dic['num_episodes'] = row[2]
    dic['genre'] = row[3]
    try:
      dic['pic'] = animes_imagepaths[row[1] + ' anime'] 
    except Exception as e:
      dic['pic'] = ''
    watchlist.append(dic)
  html_content = ""
  for anime in watchlist:
    html_content += "<div style='margin: 10px; float: left; position: relative; display: flex; align-items: center;'>"
    html_content += "<a style='text-decoration: none;' href='/api/current/" + anime['anime_name'] + "'>"
    html_content += "<div style='border: 1px solid black; text-decoration: none; width: 200px; height: 300px; position: relative;'>"
    html_content += "<h3 style='padding: 20px; color: black; position: absolute;'>" + anime['anime_name'] + "</h3>"
    html_content += "<img class='watchlist_anime_image' src='" + anime['pic'] + "' alt='" + anime['anime_name'] + "'/>"
    html_content += "</div>"
    html_content += "</a>"
    html_content += "</div>"
  return flask.render_template('profile.html', name = current_user.username, watchlist=html_content)

'''Route that displays search route'''
@app.route('/search', methods=['POST'])
def search_results():
  search_string = (request.form['search_string'])
  anime_name, list_of_dicts = get_anime_results(search_string)
  anime_name = "'" + anime_name[1:-1] + "'"
  results = []
  anime_html = ""
  for i in range(len(list_of_dicts) - 1):
    cur_dict = list_of_dicts[i]
    anime_html += "<div style='width: 250px; float: left; margin-top: 20px'>"
    anime_html += "<p style='height: 30px;'>" + cur_dict["anime_name"] + "</p>"
    anime_html += "<p> # episodes: " + cur_dict["num_episodes"] + "</p>"
    anime_html += "<p> Rating: " + cur_dict["mal_rating"] + "</p>"
    anime_url = '/api/current/' + cur_dict["anime_name"]
    anime_html += "<a href='" + anime_url + "'>"
    if cur_dict['pic']:
      anime_html += "<img class='search_anime_image' src='" + cur_dict['pic'] + "' alt='picture of an anime'/>"
    else: 
      anime_html += "<img class='search_anime_image' src='../static/no_image.jpg' alt='picture of an anime'/>"
    anime_html += "</a>"
    anime_html += "<p>_____________________</p>"
    anime_html += "</div>"

  return flask.render_template('search.html', search_word = anime_name, results = anime_html)

# This route supports relative links among your web pages, assuming those pages
# are stored in the templates/ directory or one of its descendant directories,
# without requiring you to have specific routes for each page.
@app.route('/<path:path>')
def shared_header_catchall(path):
    return flask.render_template(path)

if __name__ == '__main__':
    parser = argparse.ArgumentParser('A tiny Flask application, including API')
    parser.add_argument('host', help='the host on which this application is running')
    parser.add_argument('port', type=int, help='the port on which this application is listening')
    arguments = parser.parse_args()
    app.run(host=arguments.host, port=arguments.port, debug=True)
