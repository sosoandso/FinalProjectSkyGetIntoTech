create database if not exists visiting_sky_db;

use visiting_sky_db;
 
 create table restaurants( 
 id int primary key auto_increment,
 restaurant_name varchar(100) not null, 
 restaurant_address varchar(100) not null, 
 restaurant_location varchar(1000), 
 restaurant_website varchar (100),
 restaurant_image longblob,
 restaurant_description longtext,
 restaurant_cuisine_type ENUM ('South Asian', 'Thai', 'Dessert', 'Traditional British Food', 'Italian', 'Indian', 'Grill', 'American Diner', 'Vegan') not null,
 restaurant_dietary_options ENUM ('Vegetarian options', 'Vegan options', 'Vegetarian and Vegan options', 'Vegetarian, Vegan and Halal options', 'Vegetarian and Halal options'),
 restaurant_affordablity varchar (100) not null);

insert into restaurants values (1, 'Tiger Lily', '167 - 169 Thornbury Rd, Osterley TW7 4QG', 'Quite close to Sky Campus as it is 1.5 miles away which is a 5 minute drive or 15 minutes via Public transport', 'tigerlilyofosterley.co.uk', '', 'Delicious authentic Thai cuisine with a bar. A peaceful elegant restaurant with bamboo outdoor terrance.', 'Thai', 'Vegetarian and Vegan options',
'£10-38 depending on dishes'); 
insert into restaurants(restaurant_name, restaurant_address, restaurant_location, restaurant_website, restaurant_image, restaurant_description, restaurant_cuisine_type, restaurant_dietary_options, restaurant_affordablity) values ('The Hare and Hounds' , 'Wyke Green, Osterely Lane, Isleworth TW7 5PR', 'Quite close to Sky Campus as it is 1.0 miles away which is a 4 minute drive or an 18 minute walk.', 'hareandhoundsosterley.co.uk', '', 'A Classic Pub with fantastic fireplaces filled with Candles and nice garden to enjoy during the summer.', 
'Traditional British food', 'Vegetarian options', '£15 - £30 depending on dishes');
insert into restaurants(restaurant_name, restaurant_address, restaurant_location, restaurant_website, restaurant_image, restaurant_description, restaurant_cuisine_type, restaurant_dietary_options, restaurant_affordablity) values ('Terminal 6 Lounge & Bar', 'Osterely Park Hotel, 764 Great West Road, Isleworth TW7 5NA', 'Quite close to Sky Campus as it is 0.8 miles away which a 4 minute drive or a 12 minute walk', 'www.terminal6lounge.com', '', 'A delicious Indian restaurant with a magnificent tudor style building and a pub that is well known amongst the local community.', 
'Indian', 'Vegetarian Options', '£20 - £40 depending on dishes'); 
insert into restaurants(restaurant_name, restaurant_address, restaurant_location, restaurant_website, restaurant_image, restaurant_description, restaurant_cuisine_type, restaurant_dietary_options, restaurant_affordablity) values ('Sahara Grill Hounslow', '101-105 High St, Hounslow TW3 1QT','Close to Sky Campus as it is 3.5 miles miles away which is a 14 minute drive or 26 minutes via Public transport.', 'www.saharagrill.co.uk/branches/saharagrillhounslow', '', 'With a stunning interior, sahara grill with a large range of grilled options and asian cuisine.', 'Grill', 'Vegetarian and Halal options', 
 '£15-£45 depending on dishes');
insert into restaurants(restaurant_name, restaurant_address, restaurant_location, restaurant_website, restaurant_image, restaurant_description, restaurant_cuisine_type, restaurant_dietary_options, restaurant_affordablity) values ('Man vs Food', '42 Syon Lane, Isleworth TW7 5NQ', 'Very Close to Sky Campus as it is 0.3 miles away which is a 6 minte walk and a 2 minute drive.', 'www.manvsfoodlondon.co.uk' ,'', 'Up for an adventure? Man vs Food is your place! This American inspired diner have huge portions are designed to make you indulge and stop you in your tracks.', 'American Diner',
 'Vegetarian, Vegan and Halal options' , '£18 - £50 depending on dishes');
insert into restaurants(restaurant_name, restaurant_address, restaurant_location, restaurant_website, restaurant_image, restaurant_description, restaurant_cuisine_type, restaurant_dietary_options, restaurant_affordablity) values ('Vegology ', '30 Bath Rd, Hounslow TW3 3EB', 'Close to Sky Campus as it is 2.8  miles away which is a 9 minute drive or 32 minutes via Public transport.', 'www.vegologyldn.com', '', 'Known for their scrumptious vegan and vegetarian dishes for breakfast, lunch and dinner!', 'Vegan', 'Vegetarian and Vegan options', '£7 - £20 depending on dishes');
insert into restaurants(restaurant_name, restaurant_address, restaurant_location, restaurant_website, restaurant_image, restaurant_description, restaurant_cuisine_type, restaurant_dietary_options, restaurant_affordablity) values ('Farfesh Lounge', '1 Spur Rd, Isleworth TW7 5BD', 'Quite close to Sky Campus as it is 0.8 miles away which a 4 minute drive or a 16 minute walk.', 'www.farfeshlounge.co.uk', '', 'A relaxed hangout with tantalising italian cuisine and a touch of arabian nights with shisha.', 'Italian', 'Vegetarian options', '£20 - £40 depending on dishes');
insert into restaurants(restaurant_name, restaurant_address, restaurant_location, restaurant_website, restaurant_image, restaurant_description, restaurant_cuisine_type, restaurant_dietary_options, restaurant_affordablity) values ('Creams cafe' , '7 High St, Hounslow TW3 1RH', 'Close to Sky Campus as it is 2.7 miles away which is a 13 minute drive or 32 minutes via Public transport.', 'www.creamscafe.co.uk', '', 'Delicious gelato, pancakes and waffles with cosy booths to choose from.', 'Dessert', 'Vegan Options', '£4 - £15 depending on dessert');
insert into restaurants(restaurant_name, restaurant_address, restaurant_location, restaurant_website, restaurant_image, restaurant_description, restaurant_cuisine_type, restaurant_dietary_options, restaurant_affordablity) values ('Heavenly Desserts', 'Unit 19 High St, Quater TW3 1BQ', 'Close to Sky Campus as it is 2.7 miles away which is a 13 minute drive or 32 minutes via Public transport.', 'https://heavenlydesserts.co.uk/', '', 'A wide variety of gelato, waffles, hot drinks and delicious cold drinks to choose from. These desserts are truly heavenly.', 'Dessert', 'Vegan options', '£4 - £15 depending on dessert');
insert into restaurants(restaurant_name, restaurant_address, restaurant_location, restaurant_website, restaurant_image, restaurant_description, restaurant_cuisine_type, restaurant_dietary_options, restaurant_affordablity) values ('Nirala', '224 Uxbridge Rd, Feltham TW13 5DL', 'Close to Sky Campus as it is 2.7 miles away which is a 10 minute drive or 26 minutes via Public transport.', 'www.niralafoods.com','', 'With so many south asian sweet treats to choose from, Nirala sweets brings authentic south asian desserts to London being freshly made.', 'Dessert', 'Vegan options', '£5 - £20 depending on dessert');


create table outdoor_activities(
 id int primary key auto_increment,
 outdoor_name varchar (100) not null,
 outdoor_address varchar (1000) not null, 
 outdoor_website varchar (100) not null,
 outdoor_image longblob,
 outdoor_descriptions varchar(1000),
 outdoor_affordability varchar (100) not null);
 
 

insert into outdoor_activities values (1 , 'National Trust - Osterely Park and House', 'Jersey Rd, Isleworth TW7 4RB, United Kingdom', 'https://www.nationaltrust.org.uk/osterley-park-and-house' , '', 'Stroll up the tree-lined drive, past the grazing Charolais cattle and you''d think you''re in the country, not urban Hounslow. Surrounded by gardens, park and farmland, Osterley is one of the last surviving country estates in London.',
'£13 - £20 - Depending on ticket type');
insert into outdoor_activities(outdoor_name, outdoor_address, outdoor_website, outdoor_image, outdoor_descriptions, outdoor_affordability) values ('Syon Park', 'Brent Lea, Brentford TW8 8JF, United Kingdom', 'https://www.syonpark.co.uk/', '', 'Syon park is a historic park founded over 400 years ago. With Garden Centres and Conservatories, the park is well known for its preservation of wild life across the span of many years. Particularly on a summers day, this is one of local communities favourite places to be!', 
' £13.50 - £45 - Depending on ticket type');
insert into outdoor_activities(outdoor_name, outdoor_address, outdoor_website, outdoor_image, outdoor_descriptions, outdoor_affordability) values ('Hanwell zoo' , 'Church Rd, London W7 3BP, United Kingdom', 'https://hanwellzoo.co.uk/', '', 'Hanwell Zoo is the perfect place for all animal lovers. where passion for animals, conservation and nature fills our little Zoo to the brim! Go Wild in West London.' , '£13 - £20 - Depending on ticket');
insert into outdoor_activities(outdoor_name, outdoor_address, outdoor_website, outdoor_image, outdoor_descriptions, outdoor_affordability) values ('Kew Gardens' , 'Kew, Richmond, London, TW9 3AE.', 'https://www.kew.org/', '', 'Kew gardens is reported to be one of London''s most popular attractions and also a UNESCO World Heritage Site.','£5 - £25 - Depending on ticket type');
insert into outdoor_activities(outdoor_name, outdoor_address, outdoor_website, outdoor_image, outdoor_descriptions, outdoor_affordability) values ('Puttstars harrow', 'St Georges Shopping Centre, Harrow HA1 1AS, United Kingdom' , 'https://www.puttstars.co.uk/harrow', '' , 'For some affordable fun, Puttstars is all about experience and of course immense fun. Whether it''s teamwork as a group, cheering over a hole in one, or supporting one another to putt over the bridge. Perfect for all ages!' , '£6-13 depending on ticket type');
insert into outdoor_activities(outdoor_name, outdoor_address, outdoor_website, outdoor_image, outdoor_descriptions, outdoor_affordability) values ('The Merry Pedaller' , '14 Warren Road Twickenham, London TW2 7DL England', 'https://www.merrypedallerbiketours.co.uk/', '', 'Unique bike tours can enjoy 2 of the largest Royal Parks of London still full of deer, cycle River Thames routes to Hampton Court Palace or Windsor Castle or maybe sample traditional beer. Our tours link together or can be bespoke to suit your requirements, alternate dates 
can be requested for 4+ people, group discounts available we have 20 bikes and various childrens bikes too but more can be provided if needed!','£35 - £150  - Depending on ticket type');    
insert into outdoor_activities(outdoor_name, outdoor_address, outdoor_website, outdoor_image, outdoor_descriptions, outdoor_affordability) values ('The London Stand Up Paddle Company', 'Water Lane Richmond, Richmond-upon-Thames TW9 1TH England,', 'https://www.standuppaddle.london/', '',  'Join in and get active outdoors with the added benefit of a full body workout. Stand Up Paddling (SUP) is perfect for those who love the water and some intense activity.', '£40 - £120 - depending on ticket type');
insert into outdoor_activities(outdoor_name, outdoor_address, outdoor_website, outdoor_image, outdoor_descriptions, outdoor_affordability) values ('Twickenham Stadium' , 'Whitton Road Twickeham Stadium, Twickenham TW2 7BA England' , 'https://www.twickenhamstadium.com/', '', 'It is the world''s largest rugby union stadium, the second largest in the United Kingdom, behind Wembley Stadium, and the fourth largest in Europe. It is ultimately know as the home of Rugby.', '£25 - £190 - Depending on ticket');
insert into outdoor_activities(outdoor_name, outdoor_address, outdoor_website, outdoor_image, outdoor_descriptions, outdoor_affordability) values ('World Rugby Museum', 'Stadium, 200 Whitton Rd, Twickenham TW2 7BA, United Kingdom', 'https://worldrugbymuseum.com/', '', 'The award-winning World Rugby Museum is the definitive home for everything and anything about rugby. Housing the world’s most prestigious collection of rugby memorabilia and offering memorable tours of the iconic stadium.', '£16.50 - £40 - Depending on ticket');
insert into outdoor_activities(outdoor_name, outdoor_address, outdoor_website, outdoor_image, outdoor_descriptions, outdoor_affordability) values ('Tate Britain' , 'Millbank, London SW1P 4RG', 'https://www.tate.org.uk/visit/tate-britain', '', 'Tate Britain is the world centre for the understanding and enjoyment of British art and promotes interest in British art internationally. Unrivalled displays show the development of art in Britain from Tudor times to the present day.', '£20 - 80 - Depending on ticket');


create table local_events( 
id int primary key auto_increment,
event_name varchar (100) not null,
event_location varchar (100) not null,
event_start_date date,
event_end_date date,
event_website varchar (100) not null,
event_image longblob ,
event_category varchar(100));

insert into local_events values (1, 'Pub in the park with Tom Kerridge', 'Chiswick House', '2022-09-02', '2022-09-04', 'https://www.pubintheparkuk.com/chiswick','', 'Food, Music');
insert into local_events(event_name, event_location, event_start_date, event_end_date, event_website, event_image, event_category) values ('Junction II Festival', 'Trent Park' ,' 2022-06-18' , '2022-06-19', 'https://www.junction2.london/festival', '', 'Music');
insert into local_events(event_name, event_location, event_start_date, event_end_date, event_website, event_image, event_category) values ('Christmas at Kew', 'Kew Gardens', '2022-11-16', '2023-01-08', 'https://www.kew.org/kew-gardens/whats-on/christmas', '', 'Activity');
insert into local_events(event_name, event_location, event_start_date, event_end_date, event_website, event_image, event_category) values ('Foodies Festival', 'Syon Park', '2022-06-03', '2022-06-05' , 'https://foodiesfestival.com/events/syon-park-london/' , '', 'Food / Music');
insert into local_events(event_name, event_location, event_start_date, event_end_date, event_website, event_image, event_category) values ('Enchanted Woodland', 'Syon Park', '2022-11-11', '2022-11-27', 'http://www.enchantedwoodland.com/', '', 'Activity');
insert into local_events(event_name, event_location, event_start_date, event_end_date, event_website, event_image, event_category) values ('A Humorous Affair-A Jubilee Family Activity', 'Hogarth House', '2022-06-02', '2022-06-02', 'https://hogarthshouse.org/events_exhibitions/family_jubilee2022/','', 'Activity');
insert into local_events(event_name, event_location, event_start_date, event_end_date, event_website, event_image, event_category) values ('Open Mic Nights : Jubilee Special', 'Open Mic Nights : Jubilee Special', '2022-06-03', '2022-06-03', 'https://www.visitgunnersbury.org/whats-on/special-events/open-mic-nights-jubilee-special/', '', 'Comedy');
insert into local_events(event_name, event_location, event_start_date, event_end_date, event_website, event_image, event_category) values ('Waterworks Festival', 'Gunnersbury Park', '2022-09-17', '2022-09-17', 'https://ra.co/promoters/96536', '', 'Arts');
insert into local_events(event_name, event_location, event_start_date, event_end_date, event_website, event_image, event_category) values ('Duck Pond Market', 'Chiswick House', '2022-10-29', '2022-10-29', 'https://duckpondmarket.com/chiswick', '', 'Activity');
insert into local_events(event_name, event_location, event_start_date, event_end_date, event_website, event_image, event_category) values ('Outdoor Theatre : Jungle Book', 'Osterley Park', '2022-08-05', '2022-08-05', 'https://www.nationaltrust.org.uk/osterley-park-and-house/whats-on', '', 'Theatre');


create table into_london(
id int primary key auto_increment,
london_name varchar (100) not null,
london_location varchar (100) not null,
london_travel varchar(100),
london_website varchar (100) not null,
london_image longblob,
london_description varchar (1000) not null,
london_category ENUM ('Drink', 'Food', 'Activity', 'Event', 'History', 'Art', 'Park', 'Music', 'Comedy','Other') not null,
london_affordability varchar (100) not null);


insert into into_london values(1, 'Bar Elba', 'Waterloo', 'Direct train from Syon Lane to Waterloo', 'https://bar-elba.co.uk/', ' ', 'We’re serving up all the good vibes you’ve been so desperately craving everything from Party Pods to Prosecco and a proper good time. Sip, sip, HOORAY!', 'Drink', '£10-30 Depending on purchases');
insert into into_london(london_name, london_location, london_travel, london_website, london_image, london_description, london_category, london_affordability) values ('Navtar', 'Ealing', 'Sky shuttle bus to Ealing', 'www.navtar.com ', ' ', 'Navrtar brings one of Londons best rated Virtual Reality experience inspiring generations of gamers to take the challenge. Are you up for it?', 'Activity', '££');
insert into into_london(london_name, london_location, london_travel, london_website, london_image, london_description, london_category, london_affordability) values ('Healing Comedy Club', 'Ealing', 'Sky shuttle bus to Ealing', 'https://web.facebook.com/healingcomedyclub/?_rdc=1&_rdr', ' ', 'Up for a laugh? This is the perfect place for you! Established in 2018, is a weekly Thursday night comedy gig, with free entry, at the OPEN Ealing Arts Centre.', 'Comedy', '£');
insert into into_london(london_name, london_location, london_travel, london_website, london_image, london_description, london_category, london_affordability) values ('Borough Market', 'London Bridge', 'Direct train from Syon Lane to London Bridge', 'https://boroughmarket.org.uk/', ' ', 'Borough Market is a staple in London city. t is one of the largest and oldest food markets in London, with a market on the site dating back to at least the 12th century. With foods from all over the globe, this is a perfect place to come with friends.', 'Food', 'Price is variable');
insert into into_london(london_name, london_location, london_travel, london_website, london_image, london_description, london_category, london_affordability) values ('The Shard', 'London Bridge', 'Direct train from Syon Lane to London Bridge', 'https://www.the-shard.com/', ' ', 'A Luxurious experience providing an exiquisite view of Londons most recognisable places alongside delicious food. The shard has a 95 storey building!', 'Food', '£££');
insert into into_london(london_name, london_location, london_travel, london_website, london_image, london_description, london_category, london_affordability) values ('The Waterfront', 'Vauxhall', 'Train from Syon Lane to Vauxhall', 'https://www.thewaterfront.london/?utm_source=Organic&utm_medium=GMB-Listing&utm_id=Google', ' ', 'International brasserie fare & cocktails with deep wood interiors, mood lighting, & patio seating with views of the Thames.', 'Food', '££');
insert into into_london(london_name, london_location, london_travel, london_website, london_image, london_description, london_category, london_affordability) values ('Wandsworth Park', 'Putney', 'Train from Syon Lane to Putney', 'https://www.wandsworth.gov.uk/leisure-and-culture/parks-and-open-spaces/parks/wandsworth-park/', ' ', 'Grade II listed Edwardian park laid out with ornamental shrubberies and sports areas, blends formality with informality. Magnificent avenue of London planes provides shade and a view of the wide open river - opportunity to watch sports, birds and passing boats. By the play area and café is an up to date putting green.', 'Park', '£');
insert into into_london(london_name, london_location, london_travel, london_website, london_image, london_description, london_category, london_affordability) values ('Waterloo Central railway', 'Waterloo', 'Train from Syon Lane to Waterloo', 'https://waterloocentralrailway.com/', ' ', 'Want an incredible experience of Scenic railroads? This is for you. Operating between Northfield and many other locations, enjoy this ride and relax.', 'History', '££');
insert into into_london(london_name, london_location, london_travel, london_website, london_image, london_description, london_category, london_affordability) values ('Bone Daddies Putney', 'Putney', 'Train from Syon Lane to Putney', 'https://bonedaddies.com/location/putney/', ' ', 'A lively little ramen joint on Putney High St. The perfect place for sipping beers, slurping noodles and having a belter time with your mates.', 'Food', '££');
insert into into_london(london_name, london_location, london_travel, london_website, london_image, london_description, london_category, london_affordability) values ('Vauxhall Comedy Club', 'Vauxhall', 'Train from Syon Lane to Vauxhall', 'https://vauxhallcomedyclub.com/', ' ', 'Live comedy seven days a week. Book on the website!', 'Comedy', '£');

create table recommendations(
id int primary key auto_increment,
recommendation_name varchar (100) not null,
recommendation_description varchar(1000) not null,
recommendation_location varchar(100) not null,
recommendation_website varchar(100) not null,
recommendation_category ENUM ('Drink', 'Food', 'Activity', 'Event', 'History', 'Art', 'Park', 'Music', 'Comedy', 'Other') not null,
recommendation_other varchar (100),
recommendation_author varchar(100));


select * from restaurants;
select * from outdoor_activities;
select * from local_events;
select * from into_london;
select * from recommendations;

alter table restaurants add column restaurant_discount varchar (100);
alter table outdoor_activities add column outdoor_discount varchar (100);
alter table local_events add column events_discount varchar (100);
alter table into_london add column london_discount varchar (100);
alter table recommendations add column recommendation_discount varchar (100);

update restaurants set restaurant_discount = "10% off - show Sky badge" where id=2;
update restaurants set restaurant_discount = "25% - use code SKY online" where id=4;
update restaurants set restaurant_discount = "5% off - show Sky badge" where id=6;
update restaurants set restaurant_discount = "15% off - redeem online use code SKYEMPLOYEE" where id=9;

update outdoor_activities set outdoor_discount = "10% off - show Sky badge" where id=1;
update outdoor_activities set outdoor_discount = "15% off - redeem online use code SKYEMPLOYEE" where id=2;
update outdoor_activities set outdoor_discount = "25% - use code SKY online" where id=3;
update outdoor_activities set outdoor_discount = "8% off - show Sky badge" where id=6;
update outdoor_activities set outdoor_discount = "22% off - show Sky badge" where id=9;

update local_events set events_discount = "10% off for groups more than 8 - show one Sky badge" where id=1;
update local_events set events_discount = "10% off - show your Sky badge" where id=6;
update local_events set events_discount = "15% off - redeem online with code SKY" where id=10;

update into_london set london_discount = "10% off - redeem online with code SKYDISCOUNT" where id=2;
update into_london set london_discount = "15% off - redeem online use code SKYEMPLOYEE" where id=8;

alter table recommendations modify column recommendation_website varchar (1000);

 
-- removed blob from images column and replacing with varchar(1000) for below tables : 
alter table outdoor_activities modify column outdoor_image varchar (1000);
alter table restaurants modify column restaurant_image varchar (1000);
alter table local_events modify column event_image varchar (1000);
alter table into_london modify column london_image varchar (1000);


-- update outdoor_activities e SET outdoor_image=(select CONCAT(id, outdoor_name) from outdoor_activities where id=e.id);

select * from outdoor_activities;

UPDATE outdoor_activities SET outdoor_image="1.jpeg" where id=1;
UPDATE outdoor_activities SET outdoor_image="2.jpeg" where id=2;
UPDATE outdoor_activities SET outdoor_image="3.jpeg" where id=3;
UPDATE outdoor_activities SET outdoor_image="4.jpeg" where id=4;
UPDATE outdoor_activities SET outdoor_image="5.jpeg" where id=5;
UPDATE outdoor_activities SET outdoor_image="6.jpeg" where id=6;
UPDATE outdoor_activities SET outdoor_image="7.jpeg" where id=7;
UPDATE outdoor_activities SET outdoor_image="8.jpeg" where id=8;
UPDATE outdoor_activities SET outdoor_image="9.jpeg" where id=9;
UPDATE outdoor_activities SET outdoor_image="10.jpeg" where id=10;

 -- updating restaurant websites to start with https:  otherwise it won't be picked up by jinja template
 
update restaurants set restaurant_website = "https://tigerlilyofosterley.co.uk/" where id=1;
update restaurants set restaurant_website = "https://hareandhoundsosterley.co.uk/" where id=2;
update restaurants set restaurant_website = "https://terminal6lounge.com/" where id=3;
update restaurants set restaurant_website = "https://www.saharagrill.co.uk/" where id=4;
update restaurants set restaurant_website = "https://manvsfoodlondon.co.uk/" where id=5;
update restaurants set restaurant_website = "https://vegologyldn.com/" where id=6;
update restaurants set restaurant_website = "https://farfeshlounge.co.uk/" where id=7;
update restaurants set restaurant_website = "https://www.creamscafe.co.uk/" where id=8;
update restaurants set restaurant_website = "https://www.niralafoods.com/" where id=10;

select * from restaurants;
select * from restaurants;
select * from outdoor_activities;
select * from local_events;
select * from into_london;
select * from recommendations;



-- need to update id 4 to a non duplicated event/place on recommendations table (same as id 1)
-- also add discounts...it's coming up as null on website (amended Rform class to stringfield..) 

update recommendations set recommendation_website = "https://cookingwithmonisha.com/" where id=5;
update recommendations set recommendation_website = "https://www.nationaltrust.org.uk/osterley-park-and-house/features/osterley-national-trust-cafe/" where id=1;
update recommendations set recommendation_website = "https://www.nationaltrust.org.uk/osterley-park-and-house/features/osterley-national-trust-cafe/" where id=4;



update restaurants set restaurant_image = "/Users/alicetildsley/GetIntoTech_Group3_FinalProject/application/static/images/tigerlily.jpeg" where id=1;
update restaurants set restaurant_image = "/Users/alicetildsley/GetIntoTech_Group3_FinalProject/application/static/images/" where id=2;
update restaurants set restaurant_image = "/Users/alicetildsley/GetIntoTech_Group3_FinalProject/application/static/images/" where id=3;
update restaurants set restaurant_image = "/Users/alicetildsley/GetIntoTech_Group3_FinalProject/application/static/images/" where id=4;
update restaurants set restaurant_image = "/Users/alicetildsley/GetIntoTech_Group3_FinalProject/application/static/images/" where id=5;
update restaurants set restaurant_image = "/Users/alicetildsley/GetIntoTech_Group3_FinalProject/application/static/images/" where id=6;
update restaurants set restaurant_image = "/Users/alicetildsley/GetIntoTech_Group3_FinalProject/application/static/images/" where id=7;
update restaurants set restaurant_image = "/Users/alicetildsley/GetIntoTech_Group3_FinalProject/application/static/images/" where id=8;
update restaurants set restaurant_image = "/Users/alicetildsley/GetIntoTech_Group3_FinalProject/application/static/images/" where id=9;
update restaurants set restaurant_image = "/Users/alicetildsley/GetIntoTech_Group3_FinalProject/application/static/images/" where id=10;

update outdoor_activities set outdoor_image = "/Users/alicetildsley/GetIntoTech_Group3_FinalProject/application/static/images/osterley house.jpeg" where id=1;
update outdoor_activities set outdoor_image = "/Users/alicetildsley/GetIntoTech_Group3_FinalProject/application/static/images/syon park.jpeg" where id=2;
update outdoor_activities set outdoor_image = "/Users/alicetildsley/GetIntoTech_Group3_FinalProject/application/static/images/hanwell zoo.jpeg" where id=3;
update outdoor_activities set outdoor_image = "/Users/alicetildsley/GetIntoTech_Group3_FinalProject/application/static/images/kew gardens.jpeg" where id=4;
update outdoor_activities set outdoor_image = "/Users/alicetildsley/GetIntoTech_Group3_FinalProject/application/static/images/puttstarts.jpeg" where id=5;
update outdoor_activities set outdoor_image = "/Users/alicetildsley/GetIntoTech_Group3_FinalProject/application/static/images/merry peddler.jpeg" where id=6;
update outdoor_activities set outdoor_image = "/Users/alicetildsley/GetIntoTech_Group3_FinalProject/application/static/images/paddle.jpeg" where id=7;
update outdoor_activities set outdoor_image = "/Users/alicetildsley/GetIntoTech_Group3_FinalProject/application/static/images/twickenham.jpeg" where id=8;
update outdoor_activities set outdoor_image = "/Users/alicetildsley/GetIntoTech_Group3_FinalProject/application/static/images/rugby museum.jpeg" where id=9;
update outdoor_activities set outdoor_image = "/Users/alicetildsley/GetIntoTech_Group3_FinalProject/application/static/images/tate britain.jpeg" where id=10;

update local_events set event_image = "/Users/alicetildsley/GetIntoTech_Group3_FinalProject/application/static/images/pub in park.jpeg" where id=1;
update local_events set event_image = "/Users/alicetildsley/GetIntoTech_Group3_FinalProject/application/static/images/junction.jpeg" where id=2;
update local_events set event_image = "/Users/alicetildsley/GetIntoTech_Group3_FinalProject/application/static/images/xmas at kew.jpeg" where id=3;
update local_events set event_image = "/Users/alicetildsley/GetIntoTech_Group3_FinalProject/application/static/images/food festival.jpeg" where id=4;
update local_events set event_image = "/Users/alicetildsley/GetIntoTech_Group3_FinalProject/application/static/images/enchanted woodland.jpeg" where id=5;
update local_events set event_image = "/Users/alicetildsley/GetIntoTech_Group3_FinalProject/application/static/images/hogarth house.jpeg" where id=6;
update local_events set event_image = "/Users/alicetildsley/GetIntoTech_Group3_FinalProject/application/static/images/pub icomedy.jpeg" where id=7;
update local_events set event_image = "/Users/alicetildsley/GetIntoTech_Group3_FinalProject/application/static/images/waterworks.jpeg" where id=8;
update local_events set event_image = "/Users/alicetildsley/GetIntoTech_Group3_FinalProject/application/static/images/duckpond.jpeg" where id=9;
update local_events set event_image = "/Users/alicetildsley/GetIntoTech_Group3_FinalProject/application/static/images/outdoor theatre.jpeg" where id=10;

update into_london set lodnon_image = "/Users/alicetildsley/GetIntoTech_Group3_FinalProject/application/static/images/bar elba.jpeg" where id=1;
update into_london set lodnon_image = "/Users/alicetildsley/GetIntoTech_Group3_FinalProject/application/static/images/navtar.jpeg" where id=2;
update into_london set lodnon_image = "/Users/alicetildsley/GetIntoTech_Group3_FinalProject/application/static/images/healing comedy.jpeg" where id=3;
update into_london set lodnon_image = "/Users/alicetildsley/GetIntoTech_Group3_FinalProject/application/static/images/boroughmarket.jpeg" where id=4;
update into_london set lodnon_image = "/Users/alicetildsley/GetIntoTech_Group3_FinalProject/application/static/images/shard.jpeg" where id=5;
update into_london set lodnon_image = "/Users/alicetildsley/GetIntoTech_Group3_FinalProject/application/static/images/.jpeg" where id=6;
update into_london set lodnon_image = "/Users/alicetildsley/GetIntoTech_Group3_FinalProject/application/static/images/.jpeg" where id=7;
update into_london set lodnon_image = "/Users/alicetildsley/GetIntoTech_Group3_FinalProject/application/static/images/.jpeg" where id=8;
update into_london set lodnon_image = "/Users/alicetildsley/GetIntoTech_Group3_FinalProject/application/static/images/.jpeg" where id=9;
update into_london set lodnon_image = "/Users/alicetildsley/GetIntoTech_Group3_FinalProject/application/static/images/.jpeg" where id=10;

