# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

ScheduledTask.destroy_all
Task.destroy_all
User.destroy_all

puts "Creating 3 users..."
user1 = User.create!(
  first_name: 'Vic',
  last_name: 'Krm',
  birth_date: '19/01/1996',
  email: 'vic@gmail.com',
  password: 'secret')

user2 = User.create!(
  first_name: 'Anais',
  last_name: 'Brd',
  birth_date: '30/06/2000',
  email: 'ana@gmail.com',
  password: 'secret')

user3 = User.create!(
  first_name: 'Milou',
  last_name: 'Lbg',
  birth_date: '27/07/2002',
  email: 'milou@gmail.com',
  password: 'secret')

puts "Creating daily tasks..."

task1 = Task.create!(
  task_name: "Feed Riri",
  description: "Give 100g of croquettas buenas and no more even if Riri might be persuasive",
  frequency_type: "daily",
  frequency_amount: 1,
  points: 10
)


task2 = Task.create!(
  task_name: "Water the plants",
  description: "Take a moment to chat with your leafy roommates. They might not talk back, but they'll appreciate the care and the little pep talk. Otherwise, just give each plant a glass of water and pour well at the root",
  frequency_type: "daily",
  frequency_amount: 1,
  points: 15
)

task3 = Task.create!(
  task_name: "Clear the dishwasher",
  description: "Please note that 'clearing the dishwasher' does not mean to remove just one  plate from the dishwasher but all the dishes",
  frequency_type: "daily",
  frequency_amount: 1,
  points: 20
)



puts "Creating weekly tasks..."

task4 = Task.create!(
  task_name: "Take out the bins",
  description: "Turn trash duty into a dance party! Crank up the tunes and move to the beat as you guide the garbage bags to their destination.",
  frequency_type: "weekly",
  frequency_amount: 1,
  frequency_day: "Monday",
  points: 25
)

task5 = Task.create!(
  task_name: "Toilets cleaning",
  description: "Wednesdays are your throne's time to shine! Give your toilet the royal treatment it deserves and keep it flush with pride.",
  frequency_type: "weekly",
  frequency_amount: 1,
  frequency_day: "Monday",
  points: 40
)

task6 = Task.create!(
  task_name: "Bathroom cleaning",
  description: "Start your week by showing your reflection some love. Wipe those mirrors till they're gleaming, and your smile shines brighter than ever!",
  frequency_type: "weekly",
  frequency_amount: 1,
  frequency_day: "Monday",
  points: 50
)

puts "Creating monthly tasks..."

task7 = Task.create!(
  task_name: "Windows cleaning",
  description: "Engage in a monthly Reflective Renewal. As you clean, think of it as a renewal ritual for your windows, inviting in positive energy and fresh perspectives.",
  frequency_type: "monthly",
  frequency_amount: 1,
  frequency_day_of_month: 15,
  points: 50
)

task8 = Task.create!(
  task_name: "Pay the bills",
  description: "Time to party with the funky factures! Once a month, we gather 'round, give those bills a high-five, and send them on their merry way.",
  frequency_type: "monthly",
  frequency_amount: 1,
  frequency_day_of_month: 25,
  points: 40
)

task9 = Task.create!(
  task_name: "Grocery shop",
  description: "Embark on a journey through the produce wonderland! Choose the freshest fruits and veggies as if you're selecting ingredients for a royal feast.",
  frequency_type: "monthly",
  frequency_amount: 1,
  frequency_day_of_month: 5,
  points: 60
)

puts "Creating Daily Scheduled Tasks..."

21.times do |i|
  @date = Date.today + i.days
  ScheduledTask.create!(
    task_id: task1.id,
    to_be_done_date: @date
  )
end

21.times do |i|
  @date = Date.today + i.days
  ScheduledTask.create!(
    task_id: task2.id,
    to_be_done_date: @date
  )
end

21.times do |i|
  @date = Date.today + i.days
  ScheduledTask.create!(
    task_id: task3.id,
    to_be_done_date: @date
  )
end

puts "Creating Weekly Scheduled Tasks..."

3.times do |i|
  @date = Date.today + (i * 7).days
  ScheduledTask.create!(
    task_id: task4.id,
    to_be_done_date: @date
  )
end

3.times do |i|
  @date = Date.today + (i * 7).days
  ScheduledTask.create!(
    task_id: task5.id,
    to_be_done_date: @date
  )
end

3.times do |i|
  @date = Date.today + (i * 7).days
  ScheduledTask.create!(
    task_id: task6.id,
    to_be_done_date: @date
  )
end

puts "Creating Monthly Scheduled Tasks..."

1.times do |i|
  @date = Date.today
  ScheduledTask.create!(
    task_id: task7.id,
    to_be_done_date: @date
  )
end

1.times do |i|
  @date = Date.today
  ScheduledTask.create!(
    task_id: task8.id,
    to_be_done_date: @date
  )
end

1.times do |i|
  @date = Date.today
  ScheduledTask.create!(
    task_id: task9.id,
    to_be_done_date: @date
  )
end

puts "Congrats, seeds done !"
