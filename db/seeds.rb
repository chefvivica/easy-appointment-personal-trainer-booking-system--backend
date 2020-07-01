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
Comment.delete_all

puts "Trainer"

Trainer.create(name: "Margo", image:"https://personal-fitness-trainer-austin.com/blog/wp-content/uploads/2009/04/fit.png", bio:'I offer one-on-one private fitness and nutrition services.')

Trainer.create(name: "Ahmet T.", image:"https://production-next-images-cdn.thumbtack.com/i/379732242238021632/desktop/standard/400square-legacy", bio:'Let’s get moving through these confinement times with these great programs that I’m offering to EVERYONE!
30/60 minutes programs with:
- HIIT
- Cardio
- Toning
- Strength
- Circuits
- Stretch
- Low impact

Pick your day and time and we will work in the comfort of your living room!
Let’s Gooooooo!!!!')
Trainer.create(name: "Zhi Sun.", image:"https://production-next-images-cdn.thumbtack.com/i/370562357469405185/width/2200.webp", bio:'My name is Zhi Sun, I started my professional training career at Equinox midtown, and worked myself to become a high end tier trainer. So, I had the opportunity to work with clients of varying levels of fitness.')

Trainer.create(name: "Maryann McNally.", image:"https://www.happyswimmers.com/wp-content/uploads/2016/03/MaryAnn-Mc-Nally-NYC-LG-2013-e1460265286896.png", bio:'Hi my name is Maryann McNally. I am 21 years old. I live on Long Island, NY. I am certified in CPR and life-guarding. I have been lifeguarding for 6 summers now. I want the everyone in the pool to be safe and have fun! I also have experience teaching swimming lessons. I was a swimming instructor for 2 years.')

Trainer.create(name: "Rohan Reddy", image:"https://production-next-images-cdn.thumbtack.com/i/391394100657881100/desktop/standard/400square-legacy", bio:'Hi, my name is Rohan Reddy and I am a top ranked junior tennis player in New York and the United States, looking to spread the knowledge I have amassed over the years, by teaching private tennis lessons. I have been playing tennis for around 15 years now, and I am ranked top 5 in New York and top 70 in the United States. With the current situation regarding COVID-19, I have a private outdoor tennis court that is isolated from others and in great condition. All social distancing rules will be applied during lessons to ensure safety.')


puts "events"

Event.create(title: "swimming lesson", trainer_id:4, start: "2020-07-19T18:00:00",
end: "2020-07-19T19:00:00", details:"Group swim lesson, work on building stroke technique.", allDay:false, event_type:"group")

Event.create(title: "swimming lesson", trainer_id:4, start: "2020-07-23T18:00:00",
end: "2020-07-23T19:00:00", details:"Group swim lesson, work on building stroke technique.", allDay:false, event_type:"group")

Event.create(title: "swim lesson", trainer_id:4, start: "2020-07-25T07:00:00", end: "2020-07-25T08:00:00", details:"One one one lesson, work on learning to swim or building stroke technique ", allDay:false, event_type:"priavte")

Event.create(title: "swim lesson", trainer_id:4, start: "2020-07-11T19:00:00", end: "2020-07-11T20:00:00", details:"Group lesson, work on learning to swim or building stroke technique ", allDay:false, event_type:"gorup")

Event.create(title: "swim lesson", trainer_id:4, start: "2020-07-18T07:00:00", end: "2020-07-18T08:00:00", details:"One one one lesson, work on learning to swim or building stroke technique ", allDay:false, event_type:"private")


Event.create(title: 'free trail best tennis lesson', trainer_id:5, start: "2020-07-11T13:00:00", end: "2020-07-11T14:00:00", details:"Group lesson, work on learning how to playing tennis", allDay:false, event_type:"group")


Event.create(title: 'tennis lesson', trainer_id:5, start: "2020-07-12T13:00:00", end: "2020-07-12T14:00:00", details:"One one one lesson, work on learning to playing tennis or building technique", allDay:false, event_type:"private")


Event.create(title: 'yoga lesson', trainer_id:1, start: "2020-07-10T08:00:00", end: "2020-07-10T09:00:00", details:"One one one lesson, building your body", allDay:false, event_type:"private")

Event.create(title: 'Kickboxing lesson', trainer_id:2, start: "2020-07-11T18:00:00", end: "2020-07-11T19:00:00", details:"Group lesson, Rock your body", allDay:false, event_type:"group")

Event.create(title: 'Strength lesson', trainer_id:3, start: "2020-07-20T019:30:00", end: "2020-07-20T20:30:00", details:"Rock your body", allDay:false, event_type:"group")


url = RestClient.get("https://randomuser.me/api/?results=100&inc=name,picture,phone,email")
results = JSON.parse(url)["results"]
data = results

puts "user"
data.each do |user_hash| 
  User.create(username: user_hash['name']['last'], email: user_hash['email'], phone_number: user_hash['phone'], image: user_hash['picture']['medium'])
end 




puts "Appointment"

150.times do 
Appointment.create(user_id: User.all.sample.id, event_id: Event.all.sample.id);
end 

puts 'comment'

Comment.create(user_id: User.all.sample.id, trainer_id:1 , content: "I am 67. I have not been active for years. For medical reasons I have learned to be afraid of movement thinking any movement is painful. Margo helped me sort out what was in my head and showed me what my body can actually do without hurting me. She is completely honest in her evaluations. It did not take long until I looked forward to our sessions instead of fearing them. I always feel better after her sessions. I have never felt any judgement from her..only encouragement. Her knowledge as a personal trainer is extensive. She knows what she is doing for sure and has many modalities for training. My body feels better and as a bonus my self confidence, self esteem and self motivation are the best they have been in a long time. I highly recommend her as a personal trainer for anyone but especially for seniors who have special challenges or need help with self motivation.",rating: 5)



Comment.create(user_id: User.all.sample.id, trainer_id:1, content: 'Margo is awesome! A month ago I started my training with her & I see a BIG difference. I feel better & have lost weight!! She is very good at her job. She not only instructs but also does the exercises with you & makes sure you are doing it the right way. She is exactly what I needed! I highly recommend Margo!!', rating:5)


Comment.create(user_id: User.all.sample.id, trainer_id:2, content: 'I wanted to lose few pounds! I ran 2 miles 5 days a week, switched to “healthy food” but my weight got stuck at a certain number and wouldn’t go down! I found Margo on google and decided to give it a try! In 4 weeks I lost 5 pounds!!! Margo taught me how to reduce weight through nutrition and workout! And they weren’t big crazy steps!! In fact small steps at a time! Margo taught me a lot! Thank you sooooo much Margo! You are amazing!!!', rating:5)

Comment.create(user_id: User.all.sample.id, trainer_id:2, content: 'I have been training with Ahmet for three weeks. He is diligent, flexible and tailors the training based on your strength and endurance. The sessions change daily a d challenging. He is a great balance of professionalism, encouragement and creativity with his program. If your looking for a skilled, professional , and challenging trainer sign up with Ahmet you will not regret it!', rating:5)

Comment.create(user_id: User.all.sample.id, trainer_id:2, content: 'BEST trainer ever! Very professional, high energy and his focus is how to get the best from you and your muscles.', rating:5)

Comment.create(user_id: User.all.sample.id, trainer_id:3, content: 'I could not emphasize enough how fortunate I am to have connected with Ahmet. It’s challenging to find the right personal trainer for you when there are so many to available. Ahmet is professional, very knowledgable, but most importantly he will focus on building a relationship with you to help you achieve your goals. If you are looking for the right personal trainer, look no further because Ahmet is your guy!', rating:5)

Comment.create(user_id: User.all.sample.id, trainer_id:3, content: ' Very professional, intelligent and very knowledgable about all areas of body. Training regimens are suited to your individual needs, and he is hands on during workouts helping and guiding you. Overall a great trainer and highly recommended, looking forward to train more with him', rating:5)


Comment.create(user_id: User.all.sample.id, trainer_id:4, content: ' Olivia is 4 and didn’t know how to swim and she’s swimming on her own now and really confident in the pool. Hallie is now a much stronger swimmer now and her strokes have improved tremendously. We’ve had a really positive experience. My girls love it!', rating:5)

Comment.create(user_id: User.all.sample.id, trainer_id:4, content: ' My son loves the instructor and he’s learned so much. She relates really well with my son, always arrives on time and is professional. From the 3rd class he was swimming by himself, floating by himself.', rating:5)

Comment.create(user_id: User.all.sample.id, trainer_id:5, content: ' I only started working with Rohan for a short period of time, but he has helped elevate my game to the next level. Whether it be working on technique, tactics, endurance or just rallying, Rohan is highly trained in all areas. He has the ability to teach anyone ranging from beginners to advanced players as he has a lot of experience himself competing at the national level. I highly recommend Rohan as a tennis coach', rating:5)
Comment.create(user_id: User.all.sample.id, trainer_id:5, content: ' Working with Rohan has been an absolute pleasure. Not only did Rohan give me a great workout every time we played, but he also made me a much better tennis player.', rating:5)
Comment.create(user_id: User.all.sample.id, trainer_id:5, content: ' I highly recommend Rohan as a tennis coach for anyone looking to improve their game. He is very professional and works hard to make sure that his clients improve and have fun at the same time. He is a great coach!', rating:5)
















































