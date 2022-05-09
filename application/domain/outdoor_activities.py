from application import db
from dataclasses import dataclass


@dataclass
class OutdoorActivities(db.Model):
    id : int
    outdoor_name: str
    # add location?? to be consistent with the other tables
    outdoor_address: str
    outdoor_website: str
    outdoor_image: str
    outdoor_descriptions: str
    outdoor_affordability: str
    outdoor_discount: str

    id = db.Column(db.Integer, primary_key = True)
    outdoor_name = db.Column(db.String(100),nullable =False)
    outdoor_address = db.Column(db.String(1000),nullable =False)
    outdoor_website = db.Column(db.String(100),nullable =False)
    outdoor_image = db.Column(db.String(1000),nullable =False)
    outdoor_descriptions =db.Column(db.String(1000),nullable =True)
    outdoor_affordability = db.Column(db.String(1000),nullable =True)
    outdoor_discount = db.Column(db.String(100),nullable =True)