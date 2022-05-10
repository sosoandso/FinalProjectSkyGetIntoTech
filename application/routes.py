from flask import render_template, jsonify, request, flash

from application import service, app
from application.domain.recommendations import Recommendations
from application.domain.restaurants import Restaurants
from application.forms.recommendationsForm import RecommendForm

# try and import what you need- to make it easier e.g:
# from application.service import get_all_outdoor_activities,


@app.route('/')
def home():
    return render_template("home.html")


@app.route('/placestoeat', methods=['GET'])
def places_to_eat():
    try:
        restaurants = service.get_all_restaurants()
        return render_template("placestoeat.html", restaurants=restaurants)
    except Exception as err:
        return render_template("placestoeat.html", message=f"There are no restaurants to display. Watch this space!: {err}")


@app.route('/intothecitycentre', methods=['GET'])
def into_city_centre():
    try:
        cityevents = service.get_all_city_events()

        return render_template("intothecitycentre.html", cityevents=cityevents)
    except Exception as err:
        return render_template("intothecitycentre.html", message=f"There are no city centre events to display yet. Watch this space!: {err}")


@app.route('/localevents', methods=['GET'])
def local_events():
    try:
        localevents = service.get_all_local_events()

        return render_template("localevents.html", localevents=localevents)
    except Exception as err:
        return render_template("localevents.html", message=f"Failed to fetch Local Events: {err}")


@app.route('/exploretheoutdoors', methods=['GET'])
def explore_the_outdoors():
    try:
        outdoors = service.get_all_outdoor_activities()
        # print(outdoors)
        # outdoors_dict = [x.__dict__ for x in outdoors ]  outdoors=outdoors_dict

        return render_template("exploretheoutdoors.html", outdoors=outdoors)
    except Exception as err:
        return render_template("exploretheoutdoors.html", message=f"Failed to fetch Outdoor Activities: {err}")


@app.route('/recommendations', methods=['GET','POST'])
def add_recommendations():
    error = ""
    form = RecommendForm()

    if request.method == "POST":
        form = RecommendForm(request.form)
        print(form.recommendation_name.data)
        recommendation_name = form.recommendation_name.data
        recommendation_description = form.recommendation_description.data
        recommendation_location = form.recommendation_location.data
        recommendation_website = form.recommendation_website.data
        recommendation_category = form.recommendation_category.data
        recommendation_author = form.recommendation_author.data
        recommendation_discount = form.recommendation_discount.data

        if len(recommendation_name) == 0:
            flash("What or Where section is not filled in yet.", category="error")
        if len(recommendation_description) == 0:
            flash("We're missing a brief description of your experience!", category="error")
        if len(recommendation_location) == 0:
            flash("Please include the Location", category="error")
        if len(recommendation_website) == 0:
            flash("Please include a link to your recommended place website.", category="error")
        if recommendation_website.find("https://") == -1:
            # not working if the others boxes are entered correctly (so atm testing it with another wrong box entry)
            flash("Please include 'https:// ' in front of your website link.", category="error")
        if len(recommendation_category) == 0:
            flash("Please choose a Category", category="error")
        if len(recommendation_author) == 0:
            flash("Please provide your Name!", category="error")
        else:
            flash("Your Recommendation has been added!", category="success")
            recommendation = Recommendations(recommendation_name=recommendation_name, recommendation_description= recommendation_description,
                                             recommendation_location=recommendation_location, recommendation_website=recommendation_website,
                                             recommendation_category=recommendation_category, recommendation_author=recommendation_author,
                                             recommendation_discount=recommendation_discount)

            service.add_new_recommendations(recommendation)
            recommendations = service.get_all_recommendations()
            return render_template('list_recommendations.html', recommendations=recommendations)

    return render_template('recommendations.html', form=form)


@app.route('/list', methods=['GET'])
def show_recomm_list():
    try:
        recommendations = service.get_all_recommendations()

        return render_template("list_recommendations.html", recommendations=recommendations)
    except Exception as err:
        return render_template("list_recommendations.html", message=f"Failed to fetch Users Recommendations: {err}")


@app.route('/discounts')
def discounts():
    return render_template("discounts.html")


@app.route('/contact')
def contact():
    return render_template("contact.html")
