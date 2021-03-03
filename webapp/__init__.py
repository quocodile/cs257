from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_login import LoginManager, UserMixin
from config import user, password, database

app = Flask(__name__, static_folder='static', template_folder='templates')

app.config["SQLALCHEMY_DATABASE_URI"] = "postgresql://" + user + ":" + password + "@localhost:5432/" + database
app.config["SECRET_KEY"] = "kevinjamesquoc9000"
db = SQLAlchemy(app)   


login_manager = LoginManager()
login_manager.login_view = 'auth.login'
login_manager.init_app(app)

class User(UserMixin, db.Model):
    id = db.Column(db.Integer, primary_key=True) # primary keys are required by SQLAlchemy
    username = db.Column(db.String(1000))
    password = db.Column(db.String(100))

@login_manager.user_loader
def load_user(user_id):
    # since the user_id is just the primary key of our user table, use it in the query for the user
    return User.query.get(int(user_id))

