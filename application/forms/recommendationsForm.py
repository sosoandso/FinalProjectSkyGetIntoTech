from flask_wtf import FlaskForm

from wtforms import StringField, SubmitField, IntegerField


class RecommendForm(FlaskForm):
    recommendation_name = StringField("What Or Where? ")
    recommendation_description = StringField("Brief Description")
    recommendation_location = StringField("Location")
    recommendation_website = StringField("Website Link (please include https://  )  ")
    # option below for category
    recommendation_category = StringField("Choose Category")
    recommendation_author = StringField("Author's Name")
    # recommendation_discount = IntegerField("Discount Amount")
    recommendation_discount = StringField("Discount Amount")


    submit = SubmitField("Submit Recommendation")
