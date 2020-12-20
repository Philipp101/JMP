# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "clearing data"
Event.destroy_all

puts "generating events"
event1 = Event.create!(title: "This is the first event", date_start: Date.parse("03.12.2020"), date_end: Date.parse("03.02.2021"), description: "This is the description of the first event")
event1.photo.attach(io: File.open(Rails.root.join('app','assets','images','event111.jpg')), filename: 'event111.jpg', content_type: 'image/jpg')
event2 = Event.create!(title: "This is the second event", date_start: Date.parse("03.04.2021"), date_end: Date.parse("12.05.2021"), description: "This is the description of the second event")
event2.photo.attach(io: File.open(Rails.root.join('app','assets','images','event222.jpg')), filename: 'event222.jpg', content_type: 'image/jpg')
event3 = Event.create!(title: "This is the third event", date_start: Date.parse("11.04.2021"), date_end: Date.parse("15.06.2021"), description: "This is the description of the third event")
event3.photo.attach(io: File.open(Rails.root.join('app','assets','images','event333.jpg')), filename: 'event333.jpg', content_type: 'image/jpg')
puts "done"
