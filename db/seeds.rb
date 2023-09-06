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

  file = File.open("app/assets/images/pictures/Vicky.jpg")
  user1.photo.attach(io: file, filename: "Vicky.png", content_type: "image/png")
  user1.save

user2 = User.create!(
  first_name: 'Anaïs',
  last_name: 'Brd',
  birth_date: '30/06/1992',
  email: 'ana@gmail.com',
  password: 'secret')

  file = File.open("app/assets/images/pictures/Nanus.jpg")
  user2.photo.attach(io: file, filename: "Nanus.png", content_type: "image/png")
  user2.save

user3 = User.create!(
  first_name: 'Milou',
  last_name: 'Lbg',
  birth_date: '27/07/2002',
  email: 'milou@gmail.com',
  password: 'secret')

  file = File.open("app/assets/images/pictures/Milou.jpg")
  user3.photo.attach(io: file, filename: "Milou.png", content_type: "image/png")
  user3.save

puts "Creating Daily tasks..."

task1 = Task.create!(
  task_name: "Feed Riri",
  description: "Give 100g of croquettas buenas and no more even if Riri might be persuasive",
  frequency_type: "Daily",
  frequency_amount: 1,
  points: 10
)


task2 = Task.create!(
  task_name: "Water the plants",
  description: "Take a moment to chat with your leafy roommates. They might not talk back, but they'll appreciate the care and the little pep talk. Otherwise, just give each plant a glass of water and pour well at the root",
  frequency_type: "Daily",
  frequency_amount: 1,
  points: 15
)

task3 = Task.create!(
  task_name: "Clear the dishwasher",
  description: "Please note that 'clearing the dishwasher' does not mean to remove just one  plate from the dishwasher but all the dishes",
  frequency_type: "Daily",
  frequency_amount: 1,
  points: 20
)



puts "Creating Weekly tasks..."

task4 = Task.create!(
  task_name: "Take out the bins",
  description: "Turn trash duty into a dance party! Crank up the tunes and move to the beat as you guide the garbage bags to their destination.",
  frequency_type: "Weekly",
  frequency_amount: 1,
  frequency_day: "Thursday",
  points: 25
)

task5 = Task.create!(
  task_name: "Toilets cleaning",
  description: "Wednesdays are your throne's time to shine! Give your toilet the royal treatment it deserves and keep it flush with pride.",
  frequency_type: "Weekly",
  frequency_amount: 1,
  frequency_day: "Tuesday",
  points: 40
)

task6 = Task.create!(
  task_name: "Bathroom cleaning",
  description: "Start your week by showing your reflection some love. Wipe those mirrors till they're gleaming, and your smile shines brighter than ever!",
  frequency_type: "Weekly",
  frequency_amount: 1,
  frequency_day: "Monday",
  points: 50
)

puts "Creating Monthly tasks..."

task7 = Task.create!(
  task_name: "Windows cleaning",
  description: "Engage in a Monthly Reflective Renewal. As you clean, think of it as a renewal ritual for your windows, inviting in positive energy and fresh perspectives.",
  frequency_type: "Monthly",
  frequency_amount: 1,
  frequency_week_of_month: "First",
  frequency_day_of_month: 7,
  points: 50
)

task8 = Task.create!(
  task_name: "Pay the bills",
  description: "Time to party with the funky factures! Once a month, we gather 'round, give those bills a high-five, and send them on their merry way.",
  frequency_type: "Monthly",
  frequency_amount: 1,
  frequency_week_of_month: "Second",
  frequency_day_of_month: 6,
  points: 40
)

task9 = Task.create!(
  task_name: "Grocery shop",
  description: "Embark on a journey through the produce wonderland! Choose the freshest fruits and veggies as if you're selecting ingredients for a royal feast.",
  frequency_type: "Monthly",
  frequency_amount: 1,
  frequency_week_of_month: "Fourth",
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

puts "Creating old Daily Scheduled Tasks that are done..."

user_instances = [user1, user2, user3]
@date = Date.today


40.times do |i|
  @date -= 1.days
  ScheduledTask.create!(
    task_id: task1.id,
    to_be_done_date: @date,
    user_id: user_instances.sample.id,
    recorded_date: @date,
    done: true
  )
  @date -= 1.days
  ScheduledTask.create!(
    task_id: task1.id,
    to_be_done_date: @date
  )
  @date -= 1.days
  ScheduledTask.create!(
    task_id: task1.id,
    to_be_done_date: @date,
    user_id: user_instances.sample.id,
    recorded_date: @date,
    done: true
  )
end

@date = Date.today

40.times do |i|
  @date -= 1.days
  ScheduledTask.create!(
    task_id: task2.id,
    to_be_done_date: @date,
    user_id: user_instances.sample.id,
    recorded_date: @date,
    done: true
  )
  @date -= 1.days
  ScheduledTask.create!(
    task_id: task2.id,
    to_be_done_date: @date
  )
end

@date = Date.today

40.times do |i|
  @date -= 1.days
  ScheduledTask.create!(
    task_id: task3.id,
    to_be_done_date: @date,
    user_id: user_instances.sample.id,
    recorded_date: @date,
    done: true
  )
  @date -= 1.days
  ScheduledTask.create!(
    task_id: task3.id,
    to_be_done_date: @date
  )
  @date -= 1.days
  ScheduledTask.create!(
    task_id: task3.id,
    to_be_done_date: @date,
    user_id: user_instances.sample.id,
    recorded_date: @date,
    done: true
  )
  @date -= 1.days
  ScheduledTask.create!(
    task_id: task3.id,
    to_be_done_date: @date,
    user_id: user_instances.sample.id,
    recorded_date: @date,
    done: true
  )
end

# puts "Creating Weekly Scheduled Tasks..."


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

# puts "Creating old Weekly Scheduled Tasks that are done..."

@date = Date.today

8.times do |i|
  @date -= (2*7).days
  ScheduledTask.create!(
    task_id: task4.id,
    to_be_done_date: @date,
    user_id: user_instances.sample.id,
    recorded_date: @date,
    done: true
  )
  @date += (1*7).days
  ScheduledTask.create!(
    task_id: task4.id,
    to_be_done_date: @date
  )
  @date -= (2*7).days
  ScheduledTask.create!(
    task_id: task4.id,
    to_be_done_date: @date,
    user_id: user_instances.sample.id,
    recorded_date: @date,
    done: true
  )
end

@date = Date.today

8.times do |i|
  @date -= 7.days
  ScheduledTask.create!(
    task_id: task5.id,
    to_be_done_date: @date,
    user_id: user_instances.sample.id,
    recorded_date: @date,
    done: true
  )
  @date -= 7.days
  ScheduledTask.create!(
    task_id: task5.id,
    to_be_done_date: @date
  )
  @date -= 7.days
  ScheduledTask.create!(
    task_id: task5.id,
    to_be_done_date: @date,
    user_id: user_instances.sample.id,
    recorded_date: @date,
    done: true
  )
  @date -= 7.days
  ScheduledTask.create!(
    task_id: task5.id,
    to_be_done_date: @date,
    user_id: user_instances.sample.id,
    recorded_date: @date,
    done: true
  )
end

@date = Date.today

8.times do |i|
  @date -= 7.days
  ScheduledTask.create!(
    task_id: task6.id,
    to_be_done_date: @date,
    user_id: user_instances.sample.id,
    recorded_date: @date,
    done: true
  )
  @date -= 7.days
  ScheduledTask.create!(
    task_id: task6.id,
    to_be_done_date: @date
  )
  @date -= 7.days
  ScheduledTask.create!(
    task_id: task6.id,
    to_be_done_date: @date,
    user_id: user_instances.sample.id,
    recorded_date: @date,
    done: true
  )
  @date -= 7.days
  ScheduledTask.create!(
    task_id: task6.id,
    to_be_done_date: @date,
    user_id: user_instances.sample.id,
    recorded_date: @date,
    done: true
  )
  @date -= 7.days
  ScheduledTask.create!(
    task_id: task6.id,
    to_be_done_date: @date,
    user_id: user_instances.sample.id,
    recorded_date: @date,
    done: true
  )
end

puts "Creating Monthly Scheduled Tasks..."


3.times do |i|
  @date = Date.today + i.month
  ScheduledTask.create!(
    task_id: task7.id,
    to_be_done_date: @date
  )
end

3.times do |i|
  @date = Date.today + i.month
  ScheduledTask.create!(
    task_id: task8.id,
    to_be_done_date: @date
  )
end

3.times do |i|
  @date = Date.today + i.month
  ScheduledTask.create!(
    task_id: task9.id,
    to_be_done_date: @date
  )
end

puts "Creating old Monthly Scheduled Tasks that are done..."

@date = Date.today

4.times do |i|
  @date -= 1.month
  ScheduledTask.create!(
    task_id: task7.id,
    to_be_done_date: @date,
    user_id: user_instances.sample.id,
    recorded_date: @date,
    done: true
  )
  @date -= 2.month
  ScheduledTask.create!(
    task_id: task7.id,
    to_be_done_date: @date,
  )
end

@date = Date.today
4.times do |i|
  @date -= 1.month
  ScheduledTask.create!(
    task_id: task8.id,
    to_be_done_date: @date,
    user_id: user_instances.sample.id,
    recorded_date: @date,
    done: true
  )
end

@date = Date.today

4.times do |i|
  @date -= 1.month
  ScheduledTask.create!(
    task_id: task9.id,
    to_be_done_date: @date,
    user_id: user_instances.sample.id,
    recorded_date: @date,
    done: true
  )
  @date -= 1.month
  ScheduledTask.create!(
    task_id: task9.id,
    to_be_done_date: @date,
  )
  @date -= 1.month
  ScheduledTask.create!(
    task_id: task9.id,
    to_be_done_date: @date,
    user_id: user_instances.sample.id,
    recorded_date: @date,
    done: true
  )
end


puts "Congrats, seeds done !"
