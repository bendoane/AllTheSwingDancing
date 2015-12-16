# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

example_event1 = Event.create({name:"This Example Event!",organizer:"Naptown Stomp",date:"2015-12-17",location:"Indianapolis, Indiana",price:"30.00",event_type:"Workshop",dance_style:"Lindy"})
example_event2 = Event.create({name:"Dayton Swing Smackdown Example",organizer:"Naptown Stomp",date:"2015-4-13",location:"Indianapolis, Indiana",price:30.00,event_type:"Workshop",dance_style:"Lindy"})
example_event3 = Event.create({name:"Southern Swing Challenge Example",organizer:"Naptown Stomp",date:"2015-9-23",location:"Indianapolis, Indiana",price:30.00,event_type:"Workshop",dance_style:"Lindy"})
example_event4 = Event.create({name:"Lindypalooza Whatchakadooza Example",organizer:"Naptown Stomp",date:"1989-11-29",location:"Indianapolis, Indiana",price:30.00,event_type:"Workshop",dance_style:"Lindy"})
