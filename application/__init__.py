from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from os import getenv


app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = "mysql+pymysql://root:@localhost/visiting_sky_db"
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
app.config['SECRET_KEY'] = 'YOUR_SECRET_KEY'


# link our app to the persistence layer
db = SQLAlchemy(app)


