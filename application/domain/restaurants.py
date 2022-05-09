from application import db
from dataclasses import dataclass

# the annotation below will help to turn the Python object into a JSON object


@dataclass
class Restaurants(db.Model):
    id: int
    restaurant_name: str
    restaurant_address: str
    restaurant_location: str
    restaurant_website: str
    restaurant_image: str
    restaurant_description: str
    restaurant_cuisine_type: str
    restaurant_dietary_options: str
    restaurant_affordablity: str
    restaurant_discount: str


    id = db.Column(db.Integer, primary_key=True)
    restaurant_name = db.Column(db.String(100), nullable=False)
    restaurant_address = db.Column(db.String(100), nullable=False)
    restaurant_location = db.Column(db.String(1000), nullable=True)
    restaurant_website = db.Column(db.String(100), nullable=True)
    restaurant_image = db.Column(db.String(1000))
    restaurant_description = db.Column(db.String(1000), nullable=True)
    restaurant_cuisine_type = db.Column(db.String(100), nullable=False)
    restaurant_dietary_options = db.Column(db.String(100), nullable=True)
    restaurant_affordablity = db.Column(db.String(100), nullable=False)
    restaurant_discount = db.Column(db.String(100), nullable=False)
