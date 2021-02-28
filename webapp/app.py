'''
Kevin Chen, James Marlin, Quoc Nguyen

Description: This is main page for website Anime Central. 
'''

import sys
import argparse
import api
#tutorial

app = Flask(__name__, static_folder='static', template_folder='templates')
app.register_blueprint(api.api, url_prefix='/api')

# This route delivers the user your site's home page.
@app.route('/')
def home():
    return flask.render_template('index.html')

@app.route('/test')
def anime_page():
  return flask.render_template('anime.html')

@app.route('/login')
def login_page():
  return flask.render_template('login.html')

@app.route('/signup')
def signup_page():
  return flask.render_template('signup.html')

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
