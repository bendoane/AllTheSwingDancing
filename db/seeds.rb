# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

roles = Role.create([
  {title: 'admin'},
  {title: 'user'}
]) if Role.count == 0

example_event1 = Event.create({name:"This Example Event!",organizer:"Naptown Stomp",date:"2016-12-17",address:"Indianapolis, Indiana",price:"30.00",event_type:"Workshop",dance_style:"Lindy",
  description:"An example dance event.", url:"www.alltheswingdancing.com", facebook_url:"www.facebook.com"})

big_red_swing = Event.create({name:"Big Red Swing Weekend", organizer:"IU Swing",date:"2016-3-4",address:"107 S Indiana Ave, Bloomington, Indiana",price:40.00,event_type:"Workshop",
  dance_style:"Lindy", description:"It's time again to make your way to beautiful Bloomington, Indiana! Indiana University's Swing Dance Club will be hosting another awesome workshop featuring days of dancing and hours of lessons. Keep checking this event page for updates. Lesson, instructor and music info coming soon!",
   url:"www.alltheswingdancing.com", facebook_url:"https://www.facebook.com/events/174783982876390/"})
ablx = Event.create({name:"ABLX", organizer:"AU & BSU",date:"2016-1-22",address:"Anderson, Indiana",price:55.00,event_type:"Workshop",dance_style:"Lindy",
  description:"Come join the last ABLX! Anderson University joins with Ball State for an amazing Swing Dance experience!", url:"http://andrysablx.webs.com/", facebook_url:"https://www.facebook.com/events/349701035238052/"})
blues_in_the_night = Event.create({name:"Blues in the Night", organizer:"Purdue Night Train",date:"2016-1-29",address:"610 Purdue Mall, West Lafayette, Indiana 47907",price:40.00,event_type:"Workshop",dance_style:"Blues",
  description:"Purdue Night Train Presents Blues in the Nite!", url:"https://docs.google.com/forms/d/1HH3-L69JqndebxeufMuOaHXci17czO6pzEZwZn-Pkok/viewform?c=0&w=1", facebook_url:"https://www.facebook.com/events/1009442319101693/"})
big_apple_workshop = Event.create({name:"Big Apple Workshop",organizer:"Naptown Stomp",date:"2016-1-31",address:"701 N Pennsylvania St, Indianapolis, Indiana 46204",price:"25.00",event_type:"Workshop",dance_style:"Lindy",
  description:"Regular swing-outs not enough? Want to jump in on those large line dances? Well this workshop is for you!
    This workshop is catered for those who want to learn the famous Big Apple Lindy routine coreographed by Frankie Manning. A routine that is regularly performed at swing events large and small, this routine is a must know for anyone looking to travel and impress. The Big Apple is also a great way to utilize your solo jazz moves in concert with others! Danced to higher tempos, this routine is exciting, dynamic, and incredibly fun in all situations. Taught by Naptowns own Danny Beyrer, well known for his solo jazz movement and teaching in his own right, its sure to be an incredible workshop! ",
 url:"http://www.naptownstomp.org/", facebook_url:"https://www.facebook.com/events/1652284038352268/"})
stomping_grounds_solomon = Event.create({name:"Stomping Grounds Special",organizer:"Naptown Stomp",date:"2016-1-21",address:"1001 Hosbrook St, Indianapolis, Indiana 46203",price:"0.00",event_type:"Evening Dance",dance_style:"Lindy",
  description:"Indianapolis' very own vintage swing dancing weekly dance and lessons :) Come dance with us and feel free to bring a friend! We will have the fantastic Mr. Solomon Douglas playing for us this night! Check out more about Solomon here: http://solomondouglas.com/
    Open Dance: 8pm-10pm
    The fun starts at 8pm for open dancing! If you do the lesson series, it includes admission into the dance so it would be an awesome perk! Or feel free to just come for the dance! ANYONE is welcome so be sure to bring a friend :)
    Dance Prices: Stay tuned!!! ",
 url:"http://www.naptownstomp.org/", facebook_url:"https://www.facebook.com/events/1964431423781094/"})
 scramble_light_blues = Event.create({name:"Scramble Light Blues",organizer:"Ball State Swing Society", date:"2016-3-18",address:"Muncie, Indiana",price:"0.00",event_type:"Workshop",dance_style:"Blues",
   description:"Mark you calendars! Details to come", url:"https://www.facebook.com/Ball-State-Swing-Society-355800474435780/", facebook_url:"https://www.facebook.com/events/1477683472562070/"})
