# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

example_event1 = Event.create({name:"This Example Event!",organizer:"Naptown Stomp",date:10/10/2010,location:"Indianapolis, Indiana",price:30.00,event_type:"workshop",dance_style:"lindy"})
example_event2 = Event.create({name:"Example #2",organizer:"Naptown Stomp",date:10/10/2010,location:"Indianapolis, Indiana",price:30.00,event_type:"workshop",dance_style:"lindy"})
example_event3 = Event.create({name:"Example #3",organizer:"Naptown Stomp",date:10/10/2010,location:"Indianapolis, Indiana",price:30.00,event_type:"workshop",dance_style:"lindy"})
example_event4 = Event.create({name:"Example #4",organizer:"Naptown Stomp",date:10/10/2010,location:"Indianapolis, Indiana",price:30.00,event_type:"workshop",dance_style:"lindy"})
