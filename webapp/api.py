'''
Kevin Chen, James Marlin, Quoc Nguyen

Description: This is all the api endpoints for Anime Central. 
'''

from config import database, user, password
from flask import Blueprint, render_template ,redirect, url_for, request, flash, request
from flask_login import login_user, logout_user, login_required, current_user
from werkzeug.security import generate_password_hash, check_password_hash
from __init__ import User, db
import json
import psycopg2

api = Blueprint('api', __name__)
animes_imagepaths = json.loads(open('animes_imagepaths.json', 'r').read())  

'''Connects to database and initializes the cursor.'''
def cursor_init():
    try:
      connection = psycopg2.connect(database=database, user=user, password=password)
      cursor = connection.cursor()
      return connection, cursor
    except Exception as e:
      print(e)
      exit()

'''Given an anime name, find the anime id for it as designated in the database's animes table'''
def get_anime_id(anime_name):
   connection, cursor = cursor_init()
   select_query = 'SELECT * FROM animes WHERE LOWER(anime_name) = LOWER(%s) LIMIT 1'
   cursor.execute(select_query, (anime_name,))
   for row in cursor:
     anime_id = row[0] 
     return anime_id
  
'''This function is called to query the database for animes within a user's watchlist'''
def get_watchlist():
  try:
    connection, cursor = cursor_init()
    user_id = str(current_user.id)
    query = 'SELECT DISTINCT * FROM animes, watchlist '
    query += 'WHERE watchlist.user_id=%s '
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
    return watchlist
  except Exception as e:
    print(e)
    exit()

'''Route that adds an anime to user's watchlist'''
@api.route('/add/<anime_name>', methods=['POST'])
@login_required
def add_to_watchlist(anime_name):
        connection, cursor = cursor_init()
        anime_id = get_anime_id(anime_name)
        user_id = str(current_user.id)
        insert_query = "INSERT INTO watchlist (user_id, anime_id) "
        insert_query += "VALUES (" + user_id + "," + anime_id + ")"
        cursor.execute(insert_query)
        connection.commit()
        cursor.close()
        connection.close()
        anime_name = anime_name.split('/')[-1]
        return redirect('/current/' + anime_name)

'''Route that removes an anime from user's watchlist'''
@api.route('/remove/<anime_name>', methods=['POST'])
@login_required
def remove_from_watchlist(anime_name):
        connection, cursor = cursor_init()
        anime_id = get_anime_id(anime_name)
        user_id = current_user.id
        delete_query = "DELETE FROM watchlist WHERE watchlist.user_id = '%s' AND watchlist.anime_id = %s"
        cursor.execute(delete_query, (user_id, anime_id))
        connection.commit()
        cursor.close()
        connection.close()
        anime_name = anime_name.split('/')[-1]
        return redirect('/current/' + anime_name)
 
'''Returns animes that fall within the specified genre'''
@api.route('/anime/')
def get_anime_by_genre():
        genre = request.args.get('genre', '')
        connection, cursor = cursor_init()
        genre = "%" + genre + "%"
        query = "SELECT DISTINCT * FROM animes WHERE LOWER(genre) LIKE LOWER(%s) ORDER BY mal_rating DESC LIMIT 50"
        cursor.execute(query, (genre,))
        list_of_dictionaries = []
        for row in cursor:
                dic = {}
                dic['anime_id'] = row[0]
                dic['anime_name'] = row[1]
                dic['num_episodes'] = row[2]
                dic['genre'] = row[3]
                dic['mal_rating'] = row[4]
                try:
                  dic['pic'] = animes_imagepaths[row[1] + ' anime'] 
                except Exception as e:
                  dic['pic'] = '' 
                list_of_dictionaries.append(dic)
        return json.dumps(list_of_dictionaries)

'''Route that executes a query on the database to search for animes and returns the results.'''
@api.route('/search/<search_type>/<search_string>', methods=['GET', 'POST'])
def get_search_results(search_string, search_type):
        connection, cursor = cursor_init() 
        if search_type == 'title':
          anime_name = "%" + search_string + "%"
          query = "SELECT DISTINCT * FROM animes WHERE LOWER(anime_name) LIKE LOWER(%s)" 
          cursor.execute(query, (anime_name,))
        elif search_type == 'genre':
          genre_name = "%" + search_string + "%"
          query = "SELECT DISTINCT * FROM animes WHERE LOWER(genre) LIKE LOWER(%s)" 
          query += " ORDER BY mal_rating DESC"
          cursor.execute(query, (genre_name,))
        list_of_dictionaries = []
        for row in cursor:
          dic = {}
          dic['anime_id'] = row[0]
          dic['anime_name'] = row[1]
          dic['num_episodes'] = row[2]
          dic['genre'] = row[3]
          dic['mal_rating'] = row[4]
          try:
            dic['pic'] = animes_imagepaths[row[1] + ' anime'] 
          except: 
            dic['pic'] = ''
          list_of_dictionaries.append(dic)
        if request.method == 'POST':
          return search_string, list_of_dictionaries 
        elif request.method == 'GET': 
          return json.dumps(list_of_dictionaries)

'''Route that handles login'''
@api.route('/login', methods=['POST'])
def login_post():
    username = request.form.get('username')
    password = request.form.get('password')
    remember = True if request.form.get('remember') else False

    user = User.query.filter_by(username=username).first()

    # check if the user actually exists
    # take the user-supplied password, hash it, and compare it to the hashed password in the database
    if not user or not check_password_hash(user.password, password):
        error = "Please check your login details and try again."
        return render_template('login.html', error = error) 

    # if the above check passes, then we know the user has the right credentials
    login_user(user, remember=remember)
    return redirect('/profile')

''' Route that creates a user account if none with the same username already exist'''
@api.route('/signup', methods=['POST'])
def signup_post():
    username = request.form.get('username')
    password = request.form.get('password')
    
    user = User.query.filter_by(username=username).first() # if this returns a user, then the email already exists in database

    if user: # if a user is found, we want to redirect back to signup page so user can try again
        error = "This sign up info is already taken."
        return render_template('signup.html', error = error)

    # create a new user with the form data. Hash the password so the plaintext version isn't saved.
    new_user = User(username=username, password=generate_password_hash(password, method='sha256'))

    # add the new user to the database
    db.session.add(new_user)
    db.session.commit()
    return redirect('/login')

'''Route to see help information'''
@api.route('/help')
def help():
        '''Route that returns help information'''
        helpFile = open("help.txt", "r")
        message = ""
        for row in helpFile:
                message += "<p>" + row + "</p>"
        return render_template('help.html', message = message)

'''Route to logout the user'''
@api.route('/logout')
@login_required
def logout():
    logout_user()
    return redirect('/')

'''Route to add a review'''
@api.route('/add/review', methods=['POST'])
@login_required
def add_review_text():
  '''This endpoint is used to insert a review for an anime into the database'''
  try:
    connection, cursor = cursor_init()
    review_data = request.json
    review_text = review_data['review_text']
    anime_name = review_data['anime_name']
    user_id = current_user.id
    query = "SELECT DISTINCT * FROM animes WHERE anime_name=%s LIMIT 1"
    cursor.execute(query, (anime_name,))
    for row in cursor:
      anime_id = row[0]
      break
    query = "INSERT INTO reviews (user_id, anime_id, review_text) VALUES (%s, %s, %s)"
    cursor.execute(query, (user_id, anime_id, review_text))
    connection.commit()
    return json.dumps(True); 
  except Exception as e:
    return json.dumps(False);

