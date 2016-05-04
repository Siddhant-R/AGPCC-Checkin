# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

Member.create!(email: "sid@example.com", first_name: "Siddhant", last_name: "Rath", gender: "Male", classification: "Master", paid_status: true, points: 0)
Member.create!(email: "gsam@example.com", first_name: "Ghanshyam", last_name: "Bhutra", gender: "Male", classification: "Master", paid_status: false, points: 0) 
Member.create!(email: "aman@example.com", first_name: "Amandeep", last_name: "Bahl", gender: "Male", classification: "Master", paid_status: false, points: 0)
Member.create!(email: "ankit@example.com", first_name: "Ankit", last_name: "Patnaik", gender: "Male", classification: "Master", paid_status: true, points: 0)
Member.create!(email: "fraeokfo@gma.com", first_name: "Lei", last_name: "Fan", gender: "Male", classification: "Master", paid_status: false, points: 0)
Member.create!(email: "swaroop.pal1088@gmail.com", first_name: "Swaroop Kumar", last_name: "Pal", gender: "Male", classification: "Master", paid_status: true, points: 1)
Member.create!(email: "burak@gmail.com", first_name: "Burak", last_name: "Kalac", gender: "Male", classification: "Master", paid_status: false, points: 0)

Event.create!(title: "Graduate and Professional Mix and Mingle - Carneys...", description: "You are welcomed to our Graduate Mix and Mingle at...", venue: "Carney's Pub & Grill, 3410 S College Ave, Bryan, T...", longitude: -96.3561124, latitude: 30.6364103, start_time: "2016-05-04 21:00:00", end_time: "2016-05-05 00:00:00")
Event.create!(title: "Graduate and Professional Mix and Mingle- Rebels D...", description: "AGPCC encourages all graduate and professional stu...", venue: "Rebel Draft House, College Main, College Station, ...",  longitude: -96.3477193, latitude: 30.6204233, start_time: "2016-03-06 23:00:00", end_time: "2016-03-08 03:00:00")
Event.create!(title: "AGPCC Elections", description: "Electing the the for AGPCC!", venue: "Rudder Tower, Joe Routt Boulevard, College Station...", longitude: -96.3402614, latitude: 30.6128288, start_time: "2016-05-05 22:00:00", end_time: "2016-05-05 23:00:00")
Event.create!(title: "Big Event 2016 with AGPCC", description: "Please join AGPCC on April, Saturday 2nd to say \"T...", venue: "ETB, College Station, TX, United States", longitude: -96.3392415, latitude: 30.6226948, start_time: "2016-05-04 17:00:00", end_time: "2016-05-05 00:00:00")
Event.create!(title: "Big Event 2016 with AGPCC", description: "Please join AGPCC on April, Saturday 2nd to say \"T...", venue: "Kyle Field, Wellborn Road, College Station, TX 778...", longitude: -96.3380211, latitude: 30.6027884, start_time: "2016-04-02 12:55:00", end_time: "2016-04-02 22:00:00")
Event.create!(title: "Graduate and Professional Mix and Mingle- Chimy's", description: "This is a partnership event with Young Professiona...", venue: "Chimy's College Station, 203 University Drive, Col...", longitude: -96.3478271, latitude: 30.6168766, start_time: "2016-05-06 05:00:00", end_time: "2016-05-10 05:01:00")