import json
import psycopg2
import flask
import json
from config import database
from config import user
from config import password

api = flask.Blueprint('api', __name__)
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
        genre = flask.request.args.get('genre', "")
        if genre:
                query = "SELECT * FROM Animes WHERE genre='%s' ORDER BY anime_name LIMIT 5"
                cursor = cursor_init()
                cursor.execute(query, (genre,))
        else:
                query = "SELECT * FROM Animes WHERE anime_name='91 Days' OR anime_name='Accel World' ORDER BY anime_name LIMIT 5"
                cursor = cursor_init()
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

