from service import get_all_outdoor_activities, get_all_restaurants

# print(get_all_outdoor_activities())
print(get_all_restaurants())

# THIS PAGE IS JUST TO SEE WHAT ROUTES IS ACCESSING IN SQL DATABASE- WILL DELETE SOON

# [Restaurants(id=1, restaurant_name='Tiger Lily', restaurant_address='167 - 169 Thornbury Rd, Osterley TW7 4QG',
# restaurant_location='Quite close to Sky Campus as it is 1.5 miles away which is a 5 minute drive or 15 minutes via Public transport',
# restaurant_website='tigerlilyofosterley.co.uk',
# restaurant_description='Delicious authentic Thai cuisine with a bar. A peaceful elegant restaurant with bamboo outdoor terrance.',
# restaurant_cuisine_type='Thai', restaurant_dietary_options='Vegetarian and Vegan options',
# restaurant_affordablity='£10-38 depending on dishes', restaurant_discount=None),

#  Restaurants(id=2, restaurant_name='The Hare and Hounds', restaurant_address='Wyke Green, Osterely Lane, Isleworth TW7 5PR',
# restaurant_location='Quite close to Sky Campus as it is 1.0 miles away which is a 4 minute drive or an 18 minute walk.',
# restaurant_website='hareandhoundsosterley.co.uk',
# restaurant_description='A Classic Pub with fantastic fireplaces filled with Candles and nice garden to enjoy during the summer.',
# restaurant_cuisine_type='Traditional British Food', restaurant_dietary_options='Vegetarian options',
# restaurant_affordablity='£15 - £30 depending on dishes', restaurant_discount='10% off - show Sky badge'),

# RESTAURANT SHOWING BELOW EARLIET- NOW CHANGED TO HAVE HTTPS://
# restaurant_website='tigerlilyofosterley.co.uk'
# restaurant_website='hareandhoundsosterley.co.uk'
# restaurant_website='www.terminal6lounge.com'


#print(get_all_outdoor_activities())

# [OutdoorActivities(id=1, outdoor_name='National Trust - Osterely Park and House', outdoor_address='Jersey Rd, Isleworth TW7 4RB, United Kingdom',
# outdoor_website='https://www.nationaltrust.org.uk/osterley-park-and-house', outdoor_image='1.jpeg',
# outdoor_descriptions="Stroll up the tree-lined drive, past the grazing Charolais cattle and you'd think you're in the country, not urban Hounslow. "
#                      "Surrounded by gardens, park and farmland, Osterley is one of the last surviving country estates in London.",
#                    outdoor_affordability='£13 - £20 - Depending on ticket type', outdoor_discount='10% off - show Sky badge'),



#
# <!--                    <img class="card-img-top" src="{{ url_for('static', filename='images/roses.jpeg') }} " alt="jinja name">-->
# <!--                         <img class="card-img-top" src="{{ url_for('static',filename='images/{{item.outdoor_image}}' ) }} " alt="{{ item.outdoor_name }}">-->
# <!--                     <img class="card-img-top" src="{{ url_for('static/images/{{item.outdoor_image}}' ) }} " alt="{{ item.outdoor_name }}">-->
# <!--                     <img class="card-img-top" src="{{ url_for('static', filename='{{item.outdoor_image}}' ) }} " alt="jinja name">-->

# <!--                        working below: -->
# <!--                    <img class="card-img-top" src="{{ url_for('static', filename='images/roses.jpeg') }} " alt="jinja name">-->




