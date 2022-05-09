
from application import db
from dataclasses import dataclass


@dataclass
class IntoLondon(db.Model):
    id: int
    london_name: str
    london_location: str
    london_travel: str
    london_website: str
    london_image: str
    london_description: str
    london_category: str
    london_affordability: str
    london_discount: str

    id = db.Column(db.Integer, primary_key=True)
    london_name = db.Column(db.String(100) ,nullable=False)
    london_location = db.Column(db.String(1000) ,nullable=False)
    london_travel = db.Column(db.String(100), nullable=False)
    london_website = db.Column(db.String(100), nullable=False)
    london_image = db.Column(db.String(1000) ,nullable =False)
    london_description = db.Column(db.String(1000) ,nullable=False)
    london_category = db.Column(db.String(1000) ,nullable=True)
    london_affordability = db.Column(db.String(100) ,nullable=True)
    london_discount =db.Column(db.String(1000), nullable=False)