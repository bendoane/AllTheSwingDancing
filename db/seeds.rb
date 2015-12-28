# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

example_event1 = Event.create({name:"This Example Event!",organizer:"Naptown Stomp",date:"2016-12-17",address:"Indianapolis, Indiana",price:"30.00",event_type:"Workshop",dance_style:"Lindy"})
example_event2 = Event.create({name:"Dayton Swing Smackdown Example",organizer:"Dayton People",date:"2016-4-16",address:"Dayton, Ohio",price:30.00,event_type:"Workshop",dance_style:"Lindy"})
example_event3 = Event.create({name:"Southern Swing Challenge Example",organizer:"Jon Tigert and Jenna Applegarth",date:"2016-9-23",address:"Nashville, TN",price:30.00,event_type:"Workshop",dance_style:"Lindy"})
example_event4 = Event.create({name:"Lindypalooza Whatchakadooza Example",organizer:"Illinois People",date:"2016-11-29",address:"Champagne-Urbana, Illinois",price:30.00,event_type:"Workshop",dance_style:"Lindy"})
example_event5 = Event.create({name:"Evansville Doesn't Dance Example",organizer:"Evansville Dancers LOL",date:"2016-10-20",address:"Evansville, Indiana",price:50.00,event_type:"Exchange",dance_style:"Balboa"})
