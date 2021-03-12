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
animes_imagepaths = json.loads(open('animes_imagepaths2.json', 'r').read())  

'''Connects to database and initializes the cursor.'''
def cursor_init():
        
        try:
                connection = psycopg2.connect(database=database, user=user, password=password)
                cursor = connection.cursor()
        except Exception as e:
                print(e)
                exit()
        return cursor


@api.route('/add/<anime_name>', methods=['POST'])
@login_required
def add_to_watchlist(anime_name):
        cursor1 = cursor_init()
        select_query = 'SELECT * FROM animes WHERE LOWER(anime_name) = LOWER(%s) LIMIT 1'
        cursor1.execute(select_query, (anime_name,))
        anime_id = 0
        for row in cursor1:
                anime_id = row[0] 
                user_id = current_user.id

        # manual cursor_init() cuz we need connection2
        try:
                connection2 = psycopg2.connect(database=database, user=user, password=password)
                cursor2 = connection2.cursor()
        except Exception as e:
                print(e)
                exit()

        insert_query = "INSERT INTO watchlist (user_id, anime_id) VALUES (" + str(user_id) + "," + str(anime_id) + ")"

        cursor2.execute(insert_query)
        connection2.commit()
        cursor2.close()
        connection2.close()
        anime_name = anime_name.split('/')[-1]
        return redirect('/api/current/' + anime_name)

@api.route('/remove/<anime_name>', methods=['POST'])
@login_required
def remove_from_watchlist(anime_name):
        cursor1 = cursor_init()
        select_query = 'SELECT * FROM animes WHERE LOWER(anime_name) = LOWER(%s) LIMIT 1'
        cursor1.execute(select_query, (anime_name,))
        anime_id = 0
        for row in cursor1:
                anime_id = row[0] 
                user_id = current_user.id

        # manual cursor_init() cuz we need connection2
        try:
                connection2 = psycopg2.connect(database=database, user=user, password=password)
                cursor2 = connection2.cursor()
        except Exception as e:
                print(e)
                exit()

        delete_query = "DELETE FROM watchlist WHERE watchlist.user_id = '%s' AND watchlist.anime_id = %s"

        cursor2.execute(delete_query, (user_id, anime_id))
        connection2.commit()
        cursor2.close()
        connection2.close()
        anime_name = anime_name.split('/')[-1]
        return redirect('/api/current/' + anime_name)
 
'''Returns some default anime information.'''
@api.route('/anime/')
def get_anime_by_genre():
        genre = request.args.get('genre', '')
        cursor = cursor_init()
        if genre:
                genre = "%" + genre + "%"
                query = "SELECT DISTINCT * FROM animes WHERE LOWER(genre) LIKE LOWER(%s) ORDER BY mal_rating DESC LIMIT 15"
                #query = "SELECT * FROM animes WHERE genre LIKE %s ORDER BY CAST(mal_rating as DOUBLE PRECISION) DESC LIMIT 15";
                #query = "SELECT * FROM animes WHERE genre=%s"
                cursor.execute(query, (genre,))
        else:
                query = "SELECT * FROM Animes WHERE anime_name='91 Days' OR anime_name='Accel World' ORDER BY anime_name LIMIT 5"
                cursor.execute(query)
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
@api.route('/search/<anime_name>', methods=['GET', 'POST'])
def get_anime_results(anime_name):
        cursor = cursor_init()
        anime_name = "%" + anime_name + "%"
        query = "SELECT DISTINCT * FROM animes WHERE LOWER(anime_name) LIKE LOWER(%s)" 
        cursor.execute(query, (anime_name,))
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

        if request.method == 'POST':
          return anime_name, list_of_dictionaries

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
        flash('Please check your login details and try again.')
        return redirect('/login') # if the user doesn't exist or password is wrong, reload the page

    # if the above check passes, then we know the user has the right credentials
    login_user(user, remember=remember)
    return redirect('/profile')

'''Route that handles signup'''
@api.route('/signup', methods=['POST'])
def signup_post():
    # code to validate and add user to database goes here
    username = request.form.get('username')
    password = request.form.get('password')
    
    user = User.query.filter_by(username=username).first() # if this returns a user, then the email already exists in database

    if user: # if a user is found, we want to redirect back to signup page so user can try again
        flash('This sign up info is already taken.')
        return render_template('signup.html')

    # create a new user with the form data. Hash the password so the plaintext version isn't saved.
    new_user = User(username=username, password=generate_password_hash(password, method='sha256'))

    # add the new user to the database
    db.session.add(new_user)
    db.session.commit()
    return redirect('/login')

'''Route that returns help information'''
@api.route('/help')
def help():
        helpFile = open("help.txt", "r")
        message = ""
        for row in helpFile:
                message += "<p>" + row + "</p>"
        return render_template('help.html', message = message)


'''Route'''
@api.route('/current/<title>')
def currentAnime(title):
        cursor = cursor_init()
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
          pic = animes_imagepaths[row[1] + ' anime'] 
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
        return render_template('anime.html', pic=pic, anime_name=anime_name, num_episodes=num_episodes, mal_rating=mal_rating, anime_exists=anime_exists)

@api.route('/logout')
@login_required
def logout():
    logout_user()
    return redirect('/')

@api.route('/getwatchlist')
@login_required
def get_watchlist():
  try:
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
          return watchlist
  except Exception as e:
          print(e)
          exit()

