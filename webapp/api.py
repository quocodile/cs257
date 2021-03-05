'''
Kevin Chen, James Marlin, Quoc Nguyen

Description: This is all the api endpoints for website Anime Central. 
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

def cursor_init():
        '''Connects to database and initializes the cursor.'''
        try:
                connection = psycopg2.connect(database=database, user=user, password=password)
                cursor = connection.cursor()
        except Exception as e:
                print(e)
                exit()
        return cursor

@api.route('/anime/')
def get_anime_by_genre():
        genre = request.args.get('genre', '')
        cursor = cursor_init()
        if genre:
                #genre = "%" + genre + "%"
                query = "SELECT * FROM Animes WHERE genre=%s ORDER BY mal_rating DESC "
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
                  dic['pic'] = animes_imagepaths['../static/no_image/no_image.jpg'] 
                except Exception as e:
                  dic['pic'] = animes_imagepaths 
                list_of_dictionaries.append(dic)
        return json.dumps(list_of_dictionaries)

@api.route('/search/<anime_name>')
def get_anime_results(anime_name):
        cursor = cursor_init()
        anime_name = "%" + anime_name + "%"
        query = "SELECT * FROM animes WHERE LOWER(anime_name) LIKE LOWER(%s)" 
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
        return anime_name, list_of_dictionaries

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
    return redirect('/')

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

@api.route('/help')
def help():
        helpFile = open("help.txt", "r")
        message = ""
        for row in helpFile:
                message += "<p>" + row + "</p>"

        return render_template('help.html', message = message)

@api.route('/logout')
@login_required
def logout():
    logout_user()
    return("test")
