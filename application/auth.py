from flask import Blueprint, render_template, jsonify, request

from application import service, app
from application.domain.recommendations import Recommendations
from application.forms.recommendationsForm import RecommendForm


# auth = Blueprint('auth', __name__)


# JUST-IN-CASE-AUTHENTICATION-ROUTE-FILE
# WE MIGHT NEED THIS PAGE FOR USER AUTHENTICATION STUFF e.g. login/contact us etc but not biggest priority


# @app.route('/contact')
# def contact():
#     # return "<h1>Contact Page</h1>"
#     return render_template("contact.html")