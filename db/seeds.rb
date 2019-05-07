# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
=begin
Event.destroy_all
Attendance.destroy_all
array_time = [5,10,15,20,30]
puts rand(10.years).seconds.from_now
10.times do
  User.create!(first_name: Faker::Games::SuperSmashBros.fighter,encrypted_password: "123456789", last_name: Faker::Name.last_name, description: Faker::GreekPhilosophers.quote, email: Faker::Internet.email)
end

10.times do
  Event.create!(start_date: rand(10.years).seconds.from_now,duration: array_time.sample,title:Faker::TvShows::BojackHorseman.character , description:Faker::TvShows::BojackHorseman.unique.quote , user_id: User.all.sample.id ,price: rand(1..1000),location: Faker::Games::SuperSmashBros.stage) 
end

10.times do
  Attendance.create!(stripe_customer_id:Faker::Internet.free_email, user_id: User.all.sample.id, event_id: Event.all.sample.id )
end
=end 
array_time = [5,10,15,20,30]
 User.create!(first_name: Faker::Games::SuperSmashBros.fighter,encrypted_password: "123456789", last_name: Faker::Name.last_name, description: Faker::GreekPhilosophers.quote, email:"mathiaworms@yopmail.com")
 Event.create!(start_date: rand(10.years).seconds.from_now,duration: array_time.sample,title:Faker::TvShows::BojackHorseman.character , description:Faker::TvShows::BojackHorseman.unique.quote , user_id: User.all.sample.id ,price: rand(1..1000),location: Faker::Games::SuperSmashBros.stage) 
 Attendance.create!(stripe_customer_id:Faker::Internet.free_email, user_id: User.all.sample.id, event_id: Event.all.sample.id )
