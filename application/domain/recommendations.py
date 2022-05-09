from application import db
from dataclasses import dataclass
from enum import Enum         # # (https://www.pybootcamp.com/blog/how-to-use-enum-in-python/)
# from recommend_category import UserCategory


# the annotation below will help to turn the Python object into a JSON object
# ORM - Object relational mapping - mapping class to a table
# DTO - data transfer object


class UserCategory(Enum):
    drink = 'Drink'
    food = 'Food'
    activity = 'Activity'
    event = 'Event'
    history = 'History'
    art = 'Art'
    park = 'Park'
    music = 'Music'
    comedy = 'Comedy'
    other = 'Other'


@dataclass
class Recommendations(db.Model):
    # the declarations below are important for turning the object into JSON
    id: int
    recommendation_name: str
    recommendation_description: str
    recommendation_location: str
    recommendation_website: str
    recommendation_category: UserCategory
    # google how to map selected options for above as not str
    recommendation_author: str
    recommendation_discount: int

    # we're storing all of our recommended restaurants in a schema looking like below:
    id = db.Column(db.Integer, primary_key=True)
    recommendation_name = db.Column(db.String(100), nullable=False)
    recommendation_description = db.Column(db.String(1000), nullable=False)
    recommendation_location = db.Column(db.String(100), nullable=False)
    recommendation_website = db.Column(db.String(1000), nullable=False)
    recommendation_category = db.Column(db.String(100))
    # recommendation_category = db.Column(db.String(100), nullable=False)
    recommendation_discount = db.Column(db.Integer, nullable=True)
    recommendation_author = db.Column(db.String(100), nullable=True)

    # recommendation_category = db.Column(db.UserCategory(), nullable=False)  #changing the db.String(100)
    # to db.UserCategory()  --> checked and returning:
    # AttributeError: 'SQLAlchemy' object has no attribute 'UserCategory'
#     is there a correct attribute??


# Qs:
# we don't have a foreign key for recommendations inputted right?
# recommendation_category = db.Column(db.String(100), nullable=False)  - need to amend to ENUM..??? showing ENUM in
# our sql database


# database model = an object/ blueprint in which our database will be stored
# so above is telling system, all recommendations given need to look
# like the content held in the class called Recommendations above