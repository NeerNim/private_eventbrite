User.create!(name:  "Genesis",
             email: "genesis@gmail.com",
             password:              "foobar",
             password_confirmation: "foobar")

20.times do |n|
  name  = Faker::Name.name
  email = "genesis-#{n+1}@gmail.com"
  password = "password"
  creator = User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)

  Event.create!(creator_id: creator.id, 
          title:"new party", 
          date:Date.parse("Thur 23 Sep 2019"), 
          time:"14:33:20", location:"home", 
          description:"everyone is welcome")

          Event.create!(creator_id: creator.id, 
           title:"Tribute to 80's rock music", 
          date:Date.parse("Thur 23 Sep 2015"), 
          time:"14:33:20", location:"home", 
          description:"come and celebrate 80's rock and roll music with us")
        
end

event = Event.last

User.limit(5).each do |user|
  Attendance.create(event_id: event.id, attendee_id: user.id)
end

first = Event.first

User.limit(8).each do |user|
  Attendance.create(event_id: first.id, attendee_id: user.id)
end




 
