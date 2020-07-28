# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'rest-client'
require 'json'

Trainer.delete_all
User.delete_all
Event.delete_all
Appointment.delete_all
Request.delete_all

puts "Trainer"

Trainer.create(name: "Amil Weaver", image:"https://images.unsplash.com/photo-1549476464-37392f717541?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=80", bio:'Build Mass. Amil Weaver is a male hypertrophy coach. He helps you build mass, build size and look good.', sports:"Build Mass")

Trainer.create(name: "Marcis Berzins", image:"https://images.unsplash.com/photo-1568014887261-7c68ead310e7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1233&q=80", bio:'Marcis Berzins teaches beginners to swim in the ocean. In less than 10 days, Marcis can take you from treading water to swimming for an hour in the ocean.',sports:"Swimming" )

Trainer.create(name: "Zhi Sun.", image:"https://production-next-images-cdn.thumbtack.com/i/370562357469405185/width/2200.webp", bio:'My name is Zhi Sun, I started my professional training career at Equinox midtown, and worked myself to become a high end tier trainer. So, I had the opportunity to work with clients of varying levels of fitness.',sports:"Fitness")

Trainer.create(name: "Logan Weaver", image:"https://images.unsplash.com/photo-1590074180817-58bc844c728c?ixlib=rb-1.2.1&auto=format&fit=crop&w=1234&q=80", bio:'Logan Weaver can teach you to defend yourself and put any opponent on the ground. If you are ready for a tough trainer that can elevate your fighting, book a session with Logan.',sports:"Self Defense")

Trainer.create(name: "Rohan Reddy", image:"https://production-next-images-cdn.thumbtack.com/i/391394100657881100/desktop/standard/400square-legacy", bio:'Hi, my name is Rohan Reddy and I am a top ranked junior tennis player in New York and the United States, looking to spread the knowledge I have amassed over the years, by teaching private tennis lessons. I have been playing tennis for around 15 years now, and I am ranked top 5 in New York and top 70 in the United States. With the current situation regarding COVID-19, I have a private outdoor tennis court that is isolated from others and in great condition. All social distancing rules will be applied during lessons to ensure safety.',sports:"Tennis")

Trainer.create(name: "Sonnie Hiles", image:"https://images.unsplash.com/photo-1593358578872-4772d9cd7a97?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=80", bio:'Sonnie Hiles is a yoga instructor that focuses on hip, knee, and ankle flexibility. If your back or hips hurt after sitting in the office every day, Sonnie can open your posture so you can feel good again.',sports:"Yoga")

Trainer.create(name: " Gin Boldu", image:"https://images.unsplash.com/photo-1575859694244-0b337bf58e0b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=80", bio:'Do you have low energy? Gin Boldu coaches sessions that don’t tire you out and can increase your energy so you don’t feel tired by 2pm. Training sessions start at 3am with the last session at 7am.', sports:"Energy training")

Trainer.create(name: " Tikkho Guerra", image:"https://images.unsplash.com/photo-1510078344547-e481316148ba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=80", bio:'Tikkho’s running sessions are conducted in the most beautiful parts of the world. Come run with Tikkho and see a new perspective on traveling. Once you book a session, Tikkho will give you travel instructions to his current location.', sports:"Running")

Trainer.create(name: "Abi Keenan", image:"https://images.unsplash.com/photo-1591258370682-e8ade5d3da40?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjkzMjh9&auto=format&fit=crop&w=1234&q=80", bio:' Abi Keenan can make your knees feel fluid again. Your knees will feel healthy after 10 sessions, you’ll be able to jump and play sports again. You won’t believe how much better and stronger your knees will feel', sports:"Knee exercises")
Trainer.create(name: "Olenka Kotyk", image:"https://images.unsplash.com/photo-1567720359666-1cf6be3d5fa3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1233&q=80", bio:' Olenka Kotyk will teach you how to dance more beautifully than you ever imagined possible. She will teach you to be more flexible and elongate your muscles so you grow taller.', sports:"Dancing")

Trainer.create(name: "Alora Griffiths", image:"https://images.unsplash.com/photo-1533560904424-a0c61dc306fc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80", bio:' Alora Griffiths will help you look thicker in your upper body, using only lower body exercises. This counterintuitive training is a secret method to quickly build shoulder and back size.', sports:"Upper body strenth")
Trainer.create(name: "Gan Laughlin ", image:"
  https://images.unsplash.com/photo-1593476123435-4dbefa591fca?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=80", bio:' Gan Laughlin has an innovative training module to make your knees bulletproof and put inches on your vertical. Gan trained himself from a 15 inch vertical to a 36 inch dunking machine.', sports:"Jumping")




puts "events"

Event.create(title: "Ocean Swimming", trainer_id:2, start: "2020-07-01T18:00:00", end: "2020-07-01T19:00:00", details:"Marcis Berzins teaches beginners to swim in the ocean. In less than 10 days, Marcis can take you from treading water to swimming for an hour in the ocean.", allDay:false, color:"#6495ED")

Event.create(title: "Ocean Swimming", trainer_id:2, start: "2020-07-11T18:00:00", end: "2020-07-11T19:00:00", details:"Marcis Berzins teaches beginners to swim in the ocean. In less than 10 days, Marcis can take you from treading water to swimming for an hour in the ocean.", allDay:false, color:"#6495ED")

Event.create(title: "Ocean Swimming", trainer_id:2, start: "2020-07-05T18:00:00", end: "2020-07-05T19:00:00", details:"Marcis Berzins teaches beginners to swim in the ocean. In less than 10 days, Marcis can take you from treading water to swimming for an hour in the ocean.", allDay:false, color:"#6495ED")

Event.create(title: "Ocean Swimming", trainer_id:2, start: "2020-07-17T18:00:00", end: "2020-07-17T19:00:00", details:"Marcis Berzins teaches beginners to swim in the ocean. In less than 10 days, Marcis can take you from treading water to swimming for an hour in the ocean.", allDay:false, color:"#6495ED")

Event.create(title: "Ocean Swimming", trainer_id:2, start: "2020-08-05T18:00:00", end: "2020-08-05T19:00:00", details:"Marcis Berzins teaches beginners to swim in the ocean. In less than 10 days, Marcis can take you from treading water to swimming for an hour in the ocean.", allDay:false, color:"#6495ED")

Event.create(title: "Ocean Swimming", trainer_id:2, start: "2020-08-10T18:00:00", end: "2020-08-10T19:00:00", details:"Marcis Berzins teaches beginners to swim in the ocean. In less than 10 days, Marcis can take you from treading water to swimming for an hour in the ocean.", allDay:false, color:"#6495ED")

Event.create(title: "Ocean Swimming", trainer_id:2, start: "2020-08-13T18:00:00", end: "2020-08-13T19:00:00", details:"Marcis Berzins teaches beginners to swim in the ocean. In less than 10 days, Marcis can take you from treading water to swimming for an hour in the ocean.
", allDay:false, color:"#6495ED")



Event.create(title: "Event to prep for", trainer_id:3, start: "2020-07-22T18:00:00", end: "2020-07-22T19:00:00", details:"Zhi Sun will help you to best prep for Athletic event or competition, Vacation, Wedding", allDay:false, color:"#6495ED")
Event.create(title: "Event to prep for", trainer_id:3, start: "2020-07-08T18:00:00", end: "2020-07-08T19:00:00", details:"Zhi Sun will help you to best prep for Athletic event or competition, Vacation, Wedding", allDay:false, color:"#6495ED")
Event.create(title: "Event to prep for", trainer_id:3, start: "2020-07-29T18:00:00", end: "2020-07-29T19:00:00", details:"Zhi Sun will help you to best prep for Athletic event or competition, Vacation, Wedding", allDay:false, color:"#6495ED")
Event.create(title: "Event to prep for", trainer_id:3, start: "2020-08-04T18:00:00", end: "2020-08-04T19:00:00", details:"Zhi Sun will help you to best prep for Athletic event or competition, Vacation, Wedding", allDay:false, color:"#6495ED")
Event.create(title: "Event to prep for", trainer_id:3, start: "2020-07-12T18:00:00", end: "2020-07-12T19:00:00", details:"Zhi Sun will help you to best prep for Athletic event or competition, Vacation, Wedding", allDay:false, color:"#6495ED")
Event.create(title: "Event to prep for", trainer_id:3, start: "2020-07-14T18:00:00", end: "2020-07-14T19:00:00", details:"Zhi Sun will help you to best prep for Athletic event or competition, Vacation, Wedding", allDay:false, color:"#6495ED")
Event.create(title: "Event to prep for", trainer_id:3, start: "2020-07-18T18:00:00", end: "2020-07-18T19:00:00", details:"Zhi Sun will help you to best prep for Athletic event or competition, Vacation, Wedding", allDay:false, color:"#6495ED")
Event.create(title: "Event to prep for", trainer_id:3, start: "2020-07-17T18:00:00", end: "2020-07-17T19:00:00", details:"Zhi Sun will help you to best prep for Athletic event or competition, Vacation, Wedding", allDay:false, color:"#6495ED")




Event.create(title: 'Beginner tennis', trainer_id:5, start: "2020-07-06T13:00:00", end: "2020-07-06T14:00:00", details:"Best oppotunity to learn the tennis fundamental skill with great coach Rohan Reddy!", allDay:false, color:"#228B22")


Event.create(title: 'Beginner tennis', trainer_id:5, start: "2020-07-12T13:00:00", end: "2020-07-12T14:00:00", details:"Best oppotunity to learn the tennis fundamental skill with great coach Rohan Reddy! ", allDay:false, color:"#228B22")

Event.create(title: 'Beginner tennis', trainer_id:5, start: "2020-07-16T13:00:00", end: "2020-07-16T14:00:00", details:"Best oppotunity to learn the tennis fundamental skill with great coach Rohan Reddy! ", allDay:false, color:"#228B22")

Event.create(title: 'Beginner tennis', trainer_id:5, start: "2020-07-19T13:00:00", end: "2020-07-19T14:00:00", details:"Best oppotunity to learn the tennis fundamental skill with great coach Rohan Reddy! ", allDay:false, color:"#228B22")

Event.create(title: 'Advance tennis', trainer_id:5, start: "2020-08-12T13:00:00", end: "2020-08-12T14:00:00", details:"Work on building technique", allDay:false, color:"#228B22")

Event.create(title: 'Advance tennis', trainer_id:5, start: "2020-08-16T13:00:00", end: "2020-08-16T14:00:00", details:"Work on building technique", allDay:false, color:"#228B22")


Event.create(title: 'Sitting Yoga ', trainer_id:6, start: "2020-07-02T08:00:00", end: "2020-07-02T09:00:00", details:"Focusing on hip, knee, and ankle flexibility. If your back or hips hurt after sitting in the office every day, Sonnie can open your posture so you can feel good again.", allDay:false, color:"#8B008B")

Event.create(title: 'Sitting Yoga ', trainer_id:6, start: "2020-07-09T08:00:00", end: "2020-07-09T09:00:00", details:"Focusing on hip, knee, and ankle flexibility. If your back or hips hurt after sitting in the office every day, Sonnie can open your posture so you can feel good again.", allDay:false, color:"#8B008B")

Event.create(title: 'Sitting Yoga ', trainer_id:6, start: "2020-07-15T08:00:00", end: "2020-07-15T09:00:00", details: "Focusing on hip, knee, and ankle flexibility. If your back or hips hurt after sitting in the office every day, Sonnie can open your posture so you can feel good again.", allDay:false, color:"#8B008B")

Event.create(title: 'Sitting Yoga ', trainer_id:6, start: "2020-08-06T08:00:00", end: "2020-08-06T09:00:00", details:"Focusing on hip, knee, and ankle flexibility. If your back or hips hurt after sitting in the office every day, Sonnie can open your posture so you can feel good again.", allDay:false, color:"#8B008B")

Event.create(title: 'Sitting Yoga ', trainer_id:6, start: "2020-08-28T08:00:00", end: "2020-08-28T09:00:00", details:"Focusing on hip, knee, and ankle flexibility. If your back or hips hurt after sitting in the office every day, Sonnie can open your posture so you can feel good again.", allDay:false, color:"#8B008B")



Event.create(title: 'Build Mass', trainer_id:1, start: "2020-07-03T10:00:00", end: "2020-07-03T11:00:00", details:"Rock your body! Amilie Weaver is a male hypertrophy coach. She helps you build mass, build size and look good. 
", allDay:false, color:"#663399")

Event.create(title: 'Build Mass', trainer_id:1, start: "2020-07-10T10:00:00", end: "2020-07-10T11:00:00", details:"Rock your body! Amilie Weaver is a male hypertrophy coach. She helps you build mass, build size and look good. 
", allDay:false, color:"#663399")

Event.create(title: 'Build Mass', trainer_id:1, start: "2020-07-14T10:00:00", end: "2020-07-14T11:00:00", details:"Rock your body! Amilie Weaver is a male hypertrophy coach. She helps you build mass, build size and look good. 
", allDay:false, color:"#663399")

Event.create(title: 'Build Mass', trainer_id:1, start: "2020-07-17T10:00:00", end: "2020-07-17T11:00:00", details:"Rock your body! Amilie Weaver is a male hypertrophy coach. She helps you build mass, build size and look good. 
", allDay:false, color:"#663399")

Event.create(title: 'Build Mass', trainer_id:1, start: "2020-07-27T10:00:00", end: "2020-07-27T11:00:00", details:"Rock your body! Amilie Weaver is a male hypertrophy coach. She helps you build mass, build size and look good. 
", allDay:false, color:"#663399")

Event.create(title: 'Build Mass', trainer_id:1, start: "2020-08-03T10:00:00", end: "2020-08-03T11:00:00", details:"Rock your body! Amilie Weaver is a male hypertrophy coach. She helps you build mass, build size and look good. 
", allDay:false, color:"#663399")

Event.create(title: 'Build Mass', trainer_id:1, start: "2020-08-09T10:00:00", end: "2020-08-09T11:00:00", details:"Rock your body! Amilie Weaver is a male hypertrophy coach. She helps you build mass, build size and look good. 
", allDay:false, color:"#663399")

Event.create(title: 'Build Mass', trainer_id:1, start: "2020-08-27T10:00:00", end: "2020-08-27T11:00:00", details:"Rock your body! Amilie Weaver is a male hypertrophy coach. She helps you build mass, build size and look good. 
", allDay:false, color:"#663399")



Event.create(title: 'Self Defense', trainer_id: 4, start: "2020-07-28T19:30:00", end: "2020-07-28T20:30:00", details:"Learn to defend yourself and put any opponent on the ground. If you are ready for a tough trainer that can elevate your fighting, book a session with Logan.", allDay:false, color:"#6A5ACD")
Event.create(title: 'Self Defense', trainer_id: 4, start: "2020-08-02T19:30:00", end: "2020-08-02T20:30:00", details:"Learn to defend yourself and put any opponent on the ground. If you are ready for a tough trainer that can elevate your fighting, book a session with Logan.", allDay:false, color:"#6A5ACD")
Event.create(title: 'Self Defense', trainer_id: 4, start: "2020-08-03T19:30:00", end: "2020-08-03T20:30:00", details:"Learn to defend yourself and put any opponent on the ground. If you are ready for a tough trainer that can elevate your fighting, book a session with Logan.", allDay:false, color:"#6A5ACD")
Event.create(title: 'Self Defense', trainer_id: 4, start: "2020-08-07T19:30:00", end: "2020-08-07T20:30:00", details:"Learn to defend yourself and put any opponent on the ground. If you are ready for a tough trainer that can elevate your fighting, book a session with Logan.", allDay:false, color:"#6A5ACD")
Event.create(title: 'Self Defense', trainer_id: 4, start: "2020-08-12T19:30:00", end: "2020-08-12T20:30:00", details:"Learn to defend yourself and put any opponent on the ground. If you are ready for a tough trainer that can elevate your fighting, book a session with Logan.", allDay:false, color:"#6A5ACD")
Event.create(title: 'Self Defense', trainer_id: 4, start: "2020-08-17T019:30:00", end: "2020-08-17T20:30:00", details:"Learn to defend yourself and put any opponent on the ground. If you are ready for a tough trainer that can elevate your fighting, book a session with Logan.", allDay:false, color:"#6A5ACD")
Event.create(title: 'Self Defense', trainer_id: 4, start: "2020-08-21T019:30:00", end: "2020-08-21T20:30:00", details:"Learn to defend yourself and put any opponent on the ground. If you are ready for a tough trainer that can elevate your fighting, book a session with Logan.", allDay:false, color:"#6A5ACD")
Event.create(title: 'Self Defense', trainer_id: 4, start: "2020-08-28T019:30:00", end: "2020-08-28T20:30:00", details:"Learn to defend yourself and put any opponent on the ground. If you are ready for a tough trainer that can elevate your fighting, book a session with Logan.", allDay:false, color:"#6A5ACD")



Event.create(title: ' Energy Boost', trainer_id: 7, start: "2020-07-05T03:00:00", end: "2020-07-05T07:00:00", details:" Do you have low energy? Gin Boldu coaches sessions that don’t tire you out and can increase your energy so you don’t feel tired by 2pm. Training sessions start at 3am with the last session at 7am.", allDay:false, color:"#778899")
Event.create(title: ' Energy Boost', trainer_id: 7, start: "2020-07-06T03:00:00", end: "2020-07-06T07:00:00", details:" Do you have low energy? Gin Boldu coaches sessions that don’t tire you out and can increase your energy so you don’t feel tired by 2pm. Training sessions start at 3am with the last session at 7am.", allDay:false, color:"#778899")
Event.create(title: ' Energy Boost', trainer_id: 7, start: "2020-07-07T03:00:00", end: "2020-07-07T07:00:00", details:" Do you have low energy? Gin Boldu coaches sessions that don’t tire you out and can increase your energy so you don’t feel tired by 2pm. Training sessions start at 3am with the last session at 7am.", allDay:false, color:"#778899")
Event.create(title: ' Energy Boost', trainer_id: 7, start: "2020-07-12T03:00:00", end: "2020-07-12T07:00:00", details:" Do you have low energy? Gin Boldu coaches sessions that don’t tire you out and can increase your energy so you don’t feel tired by 2pm. Training sessions start at 3am with the last session at 7am.", allDay:false, color:"#778899")
Event.create(title: ' Energy Boost', trainer_id: 7, start: "2020-07-13T03:00:00", end: "2020-07-13T07:00:00", details:" Do you have low energy? Gin Boldu coaches sessions that don’t tire you out and can increase your energy so you don’t feel tired by 2pm. Training sessions start at 3am with the last session at 7am.", allDay:false, color:"#778899")
Event.create(title: ' Energy Boost', trainer_id: 7, start: "2020-07-14T03:00:00", end: "2020-07-14T07:00:00", details:" Do you have low energy? Gin Boldu coaches sessions that don’t tire you out and can increase your energy so you don’t feel tired by 2pm. Training sessions start at 3am with the last session at 7am.", allDay:false, color:"#778899")



Event.create(title: ' Running Unknown', trainer_id: 8, start: "2020-07-06T06:00:00", end: "2020-07-06T07:00:00", details:" Tikkho’s running sessions are conducted in the most beautiful parts of the world. Come run with Tikkho and see a new perspective on traveling. Once you book a session, Tikkho will give you travel instructions to his current location. 
", allDay:false, color:"#CD5C5C")
Event.create(title: ' Running Unknown', trainer_id: 8, start: "2020-07-11T06:00:00", end: "2020-07-11T07:00:00", details:" Tikkho’s running sessions are conducted in the most beautiful parts of the world. Come run with Tikkho and see a new perspective on traveling. Once you book a session, Tikkho will give you travel instructions to his current location. 
", allDay:false, color:"#CD5C5C")
Event.create(title: ' Running Unknown', trainer_id: 8, start: "2020-07-13T06:00:00", end: "2020-07-13T07:00:00", details:" Tikkho’s running sessions are conducted in the most beautiful parts of the world. Come run with Tikkho and see a new perspective on traveling. Once you book a session, Tikkho will give you travel instructions to his current location. 
", allDay:false, color:"#CD5C5C")
Event.create(title: ' Running Unknown', trainer_id: 8, start: "2020-07-17T06:00:00", end: "2020-07-17T07:00:00", details:" Tikkho’s running sessions are conducted in the most beautiful parts of the world. Come run with Tikkho and see a new perspective on traveling. Once you book a session, Tikkho will give you travel instructions to his current location. 
", allDay:false, color:"#CD5C5C")
Event.create(title: ' Running Unknown', trainer_id: 8, start: "2020-07-20T06:00:00", end: "2020-07-20T07:00:00", details:" Tikkho’s running sessions are conducted in the most beautiful parts of the world. Come run with Tikkho and see a new perspective on traveling. Once you book a session, Tikkho will give you travel instructions to his current location. 
", allDay:false, color:"#CD5C5C")
Event.create(title: ' Running Unknown', trainer_id: 8, start: "2020-07-27T06:00:00", end: "2020-07-27T07:00:00", details:" Tikkho’s running sessions are conducted in the most beautiful parts of the world. Come run with Tikkho and see a new perspective on traveling. Once you book a session, Tikkho will give you travel instructions to his current location. 
", allDay:false, color:"#CD5C5C")


Event.create(title: 'Reversing Knee Pain', trainer_id: 9, start: "2020-07-04T12:00:00", end: "2020-07-04T13:00:00", details:" Abi Keenan can make your knees feel fluid again. Your knees will feel healthy after 10 sessions, you’ll be able to jump and play sports again. You won’t believe how much better and stronger your knees will feel",  allDay:false, color:"#B8860B", )
Event.create(title: 'Reversing Knee Pain', trainer_id: 9, start: "2020-07-11T12:00:00", end: "2020-07-11T13:00:00", details:" Abi Keenan can make your knees feel fluid again. Your knees will feel healthy after 10 sessions, you’ll be able to jump and play sports again. You won’t believe how much better and stronger your knees will feel",  allDay:false, color:"#B8860B", )
Event.create(title: 'Reversing Knee Pain', trainer_id: 9, start: "2020-07-17T12:00:00", end: "2020-07-17T13:00:00", details:" Abi Keenan can make your knees feel fluid again. Your knees will feel healthy after 10 sessions, you’ll be able to jump and play sports again. You won’t believe how much better and stronger your knees will feel",  allDay:false, color:"#B8860B", )
Event.create(title: 'Reversing Knee Pain', trainer_id: 9, start: "2020-08-14T12:00:00", end: "2020-08-14T13:00:00", details:" Abi Keenan can make your knees feel fluid again. Your knees will feel healthy after 10 sessions, you’ll be able to jump and play sports again. You won’t believe how much better and stronger your knees will feel",  allDay:false, color:"#B8860B", )
Event.create(title: 'Reversing Knee Pain', trainer_id: 9, start: "2020-08-21T12:00:00", end: "2020-08-21T13:00:00", details:" Abi Keenan can make your knees feel fluid again. Your knees will feel healthy after 10 sessions, you’ll be able to jump and play sports again. You won’t believe how much better and stronger your knees will feel",  allDay:false, color:"#B8860B", )
Event.create(title: 'Reversing Knee Pain', trainer_id: 9, start: "2020-08-28T12:00:00", end: "2020-08-28T13:00:00", details:" Abi Keenan can make your knees feel fluid again. Your knees will feel healthy after 10 sessions, you’ll be able to jump and play sports again. You won’t believe how much better and stronger your knees will feel",  allDay:false, color:"#B8860B", )



Event.create(title: ' Dance Training', trainer_id: 10, start: "2020-07-06T18:30:00", end: "2020-07-06T19:30:00", details:"Olenka Kotyk will teach you how to dance more beautifully than you ever imagined possible. She will teach you to be more flexible and elongate your muscles so you grow taller.
 ", allDay:false, color:"#DB7093")
Event.create(title: ' Dance Training', trainer_id: 10, start: "2020-07-08T18:30:00", end: "2020-07-08T19:30:00", details:"Olenka Kotyk will teach you how to dance more beautifully than you ever imagined possible. She will teach you to be more flexible and elongate your muscles so you grow taller.
 ", allDay:false, color:"#DB7093")
Event.create(title: ' Dance Training', trainer_id: 10, start: "2020-07-10T18:30:00", end: "2020-07-10T19:30:00", details:"Olenka Kotyk will teach you how to dance more beautifully than you ever imagined possible. She will teach you to be more flexible and elongate your muscles so you grow taller.
 ", allDay:false, color:"#DB7093")
Event.create(title: ' Dance Training', trainer_id: 10, start: "2020-07-12T18:30:00", end: "2020-07-12T19:30:00", details:"Olenka Kotyk will teach you how to dance more beautifully than you ever imagined possible. She will teach you to be more flexible and elongate your muscles so you grow taller.
 ", allDay:false, color:"#DB7093")
Event.create(title: ' Dance Training', trainer_id: 10, start: "2020-07-22T18:30:00", end: "2020-07-22T19:30:00", details:"Olenka Kotyk will teach you how to dance more beautifully than you ever imagined possible. She will teach you to be more flexible and elongate your muscles so you grow taller.
 ", allDay:false, color:"#DB7093")
Event.create(title: ' Dance Training', trainer_id: 10, start: "2020-07-29T18:30:00", end: "2020-07-29T19:30:00", details:"Olenka Kotyk will teach you how to dance more beautifully than you ever imagined possible. She will teach you to be more flexible and elongate your muscles so you grow taller.
 ", allDay:false, color:"#DB7093")


Event.create(title: ' Upper Body Mass', trainer_id: 11, start: "2020-07-07T17:30:00", end: "2020-07-07T18:30:00", details:"Alora Griffiths will help you look thicker in your upper body, using only lower body exercises. This counterintuitive training is a secret method to quickly build shoulder and back size.  ", allDay:false, color:"#5F9EA0")
Event.create(title: ' Upper Body Mass', trainer_id: 11, start: "2020-07-14T17:30:00", end: "2020-07-14T18:30:00", details:"Alora Griffiths will help you look thicker in your upper body, using only lower body exercises. This counterintuitive training is a secret method to quickly build shoulder and back size.  ", allDay:false, color:"#5F9EA0")
Event.create(title: ' Upper Body Mass', trainer_id: 11, start: "2020-08-22T17:30:00", end: "2020-08-22T18:30:00", details:"Alora Griffiths will help you look thicker in your upper body, using only lower body exercises. This counterintuitive training is a secret method to quickly build shoulder and back size.  ", allDay:false, color:"#5F9EA0")
Event.create(title: ' Upper Body Mass', trainer_id: 11, start: "2020-08-29T17:30:00", end: "2020-08-29T18:30:00", details:"Alora Griffiths will help you look thicker in your upper body, using only lower body exercises. This counterintuitive training is a secret method to quickly build shoulder and back size.  ", allDay:false, color:"#5F9EA0")
Event.create(title: ' Upper Body Mass', trainer_id: 11, start: "2020-08-25T17:30:00", end: "2020-08-25T18:30:00", details:"Alora Griffiths will help you look thicker in your upper body, using only lower body exercises. This counterintuitive training is a secret method to quickly build shoulder and back size.  ", allDay:false, color:"#5F9EA0")
Event.create(title: ' Upper Body Mass', trainer_id: 11, start: "2020-08-18T17:30:00", end: "2020-08-18T18:30:00", details:"Alora Griffiths will help you look thicker in your upper body, using only lower body exercises. This counterintuitive training is a secret method to quickly build shoulder and back size.  ", allDay:false, color:"#5F9EA0")
Event.create(title: ' Upper Body Mass', trainer_id: 11, start: "2020-07-11T17:30:00", end: "2020-07-11T18:30:00", details:"Alora Griffiths will help you look thicker in your upper body, using only lower body exercises. This counterintuitive training is a secret method to quickly build shoulder and back size.  ", allDay:false, color:"#5F9EA0")
Event.create(title: ' Upper Body Mass', trainer_id: 11, start: "2020-07-13T17:30:00", end: "2020-07-13T18:30:00", details:"Alora Griffiths will help you look thicker in your upper body, using only lower body exercises. This counterintuitive training is a secret method to quickly build shoulder and back size.  ", allDay:false, color:"#5F9EA0")
Event.create(title: ' Upper Body Mass', trainer_id: 11, start: "2020-07-18T17:30:00", end: "2020-07-18T18:30:00", details:"Alora Griffiths will help you look thicker in your upper body, using only lower body exercises. This counterintuitive training is a secret method to quickly build shoulder and back size.  ", allDay:false, color:"#5F9EA0")


Event.create(title: ' Jump Training', trainer_id: 12, start: "2020-07-03T08:30:00", end: "2020-07-03T09:30:00", details:" Gan Laughlin has an innovative training module to make your knees bulletproof and put inches on your vertical. Gan trained himself from a 15 inch vertical to a 36 inch dunking machine.", allDay:false, color:"#FF7F50")
Event.create(title: ' Jump Training', trainer_id: 12, start: "2020-07-10T08:30:00", end: "2020-07-10T09:30:00", details:" Gan Laughlin has an innovative training module to make your knees bulletproof and put inches on your vertical. Gan trained himself from a 15 inch vertical to a 36 inch dunking machine.", allDay:false, color:"#FF7F50")
Event.create(title: ' Jump Training', trainer_id: 12, start: "2020-07-17T08:30:00", end: "2020-07-17T09:30:00", details:" Gan Laughlin has an innovative training module to make your knees bulletproof and put inches on your vertical. Gan trained himself from a 15 inch vertical to a 36 inch dunking machine.", allDay:false, color:"#FF7F50")
Event.create(title: ' Jump Training', trainer_id: 12, start: "2020-07-24T08:30:00", end: "2020-07-24T09:30:00", details:" Gan Laughlin has an innovative training module to make your knees bulletproof and put inches on your vertical. Gan trained himself from a 15 inch vertical to a 36 inch dunking machine.", allDay:false, color:"#FF7F50")
Event.create(title: ' Jump Training', trainer_id: 12, start: "2020-07-30T08:30:00", end: "2020-07-30T09:30:00", details:" Gan Laughlin has an innovative training module to make your knees bulletproof and put inches on your vertical. Gan trained himself from a 15 inch vertical to a 36 inch dunking machine.", allDay:false, color:"#FF7F50")
Event.create(title: ' Jump Training', trainer_id: 12, start: "2020-07-07T08:30:00", end: "2020-07-07T09:30:00", details:" Gan Laughlin has an innovative training module to make your knees bulletproof and put inches on your vertical. Gan trained himself from a 15 inch vertical to a 36 inch dunking machine.", allDay:false, color:"#FF7F50")
Event.create(title: ' Jump Training', trainer_id: 12, start: "2020-07-22T08:30:00", end: "2020-07-22T09:30:00", details:" Gan Laughlin has an innovative training module to make your knees bulletproof and put inches on your vertical. Gan trained himself from a 15 inch vertical to a 36 inch dunking machine.", allDay:false, color:"#FF7F50")




# url = RestClient.get("https://randomuser.me/api/?results=20&inc=name,picture,phone,email")
# results = JSON.parse(url)["results"]
# data = results

# puts "user"
# data.each do |user_hash| 
#   User.create(username: user_hash['name']['last'], email: user_hash['email'], phone_number: user_hash['phone'], image: user_hash['picture']['medium'])
# end 


puts "Appointment"

60.times do 
Appointment.create(user_id: rand(1..20), event_id: rand(1..82));
end 














































