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

task10 = Task.create!(
  task_name: "Clear the cat's litter box",
  description: "Embarking on the brave mission of 'Riri's litter liberation,' where each scoop is a heroic quest for a fresher feline realm !",
  frequency_type: "Daily",
  frequency_amount: 1,
  points: 25
)

task11 = Task.create!(
  task_name: "Walk the dog",
  description: "Strutting the streets with Georges the Beagle, where every tree is a potential 'sniff-et' and every mailbox, a surprise delivery spot !",
  frequency_type: "Daily",
  frequency_amount: 1,
  points: 25
)

task12 = Task.create!(
  task_name: "Feed the dog",
  description: "Mastering the culinary art of 'Georges' gourmet dinners, where every mealtime is a tail-wagging Michelin star experience !",
  frequency_type: "Daily",
  frequency_amount: 1,
  points: 10
)


puts "Creating Weekly tasks..."

task4 = Task.create!(
  task_name: "Take out the blue bin",
  description: "Turn trash duty into a dance party! Crank up the tunes and move to the beat as you guide the garbage bags to their destination.",
  frequency_type: "Weekly",
  frequency_amount: 1,
  frequency_day: "Thursday",
  points: 15
)

task5 = Task.create!(
  task_name: "Toilets cleaning",
  description: "Wednesdays are your throne's time to shine! Give your toilet the royal treatment it deserves and keep it flush with pride.",
  frequency_type: "Weekly",
  frequency_amount: 1,
  frequency_day: "Sunday",
  points: 30
)

task6 = Task.create!(
  task_name: "Bathroom cleaning",
  description: "Start your week by showing your reflection some love. Wipe those mirrors till they're gleaming, and your smile shines brighter than ever !",
  frequency_type: "Weekly",
  frequency_amount: 1,
  frequency_day: "Sunday",
  points: 50
)

task13 = Task.create!(
  task_name: "Water the cactus",
  description: "Bestowing liquid love upon the desert's most resilient resident, a solemn ceremony in the life of 'Cactus Quencher Extraordinaire' !",
  frequency_type: "Weekly",
  frequency_amount: 1,
  frequency_day: "Friday",
  points: 10
)

task14 = Task.create!(
  task_name: "Kitchen cleaning",
  description: "Venturing into the wild territory of 'Kitchen Crusader,' where chaos is conquered one dish at a time, armed with a sponge and superhero cape !",
  frequency_type: "Weekly",
  frequency_amount: 1,
  frequency_day: "Sunday",
  points: 50
)

task15 = Task.create!(
  task_name: "Take out the yellow bin",
  description: "Unleashing the mighty 'Yellow Bin Wrangler,' where the bins of recycling embark on a grand adventure to their curbside destiny !",
  frequency_type: "Weekly",
  frequency_amount: 1,
  frequency_day: "Friday",
  points: 15
)

puts "Creating Monthly tasks..."

task7 = Task.create!(
  task_name: "Windows cleaning",
  description: "Engage in a Monthly Reflective Renewal. As you clean, think of it as a renewal ritual for your windows, inviting in positive energy and fresh perspectives.",
  frequency_type: "Monthly",
  frequency_amount: 1,
  frequency_week_of_month: "First",
  frequency_day_of_month: 6,
  points: 50
)

task8 = Task.create!(
  task_name: "Pay the bills",
  description: "Time to party with the funky factures! Once a month, we gather 'round, give those bills a high-five, and send them on their merry way.",
  frequency_type: "Monthly",
  frequency_amount: 1,
  frequency_week_of_month: "Second",
  frequency_day_of_month: 8,
  points: 40
)

task9 = Task.create!(
  task_name: "Grocery shop",
  description: "Embark on a journey through the produce wonderland! Choose the freshest fruits and veggies as if you're selecting ingredients for a royal feast.",
  frequency_type: "Monthly",
  frequency_amount: 1,
  frequency_week_of_month: "Fourth",
  frequency_day_of_month: 8,
  points: 60
)

task16 = Task.create!(
  task_name: "Game night organisation",
  description: "Becoming the grand conductor of 'Game Night Extravaganza,' where strategy, laughter, and snacks collide in a symphony of fun !",
  frequency_type: "Monthly",
  frequency_amount: 1,
  frequency_week_of_month: "Fourth",
  frequency_day_of_month: 8,
  points: 20
)

task17 = Task.create!(
  task_name: "Microwave cleaning",
  description: "Venturing into the depths of 'Microwave Marvel,' where culinary explosions meet their match in a squeaky clean showdown !",
  frequency_type: "Monthly",
  frequency_amount: 1,
  frequency_week_of_month: "Fourth",
  frequency_day_of_month: 25,
  points: 30
)

task18 = Task.create!(
  task_name: "Oven cleaning",
  description: "Conquering the fiery battlefield of 'Oven Odyssey,' where grease and grime face the heat of our epic cleaning quest !",
  frequency_type: "Monthly",
  frequency_amount: 1,
  frequency_week_of_month: "Fourth",
  frequency_day_of_month: 25,
  points: 40
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

21.times do |i|
  @date = Date.today + i.days
  ScheduledTask.create!(
    task_id: task10.id,
    to_be_done_date: @date
  )
end

21.times do |i|
  @date = Date.today + i.days
  ScheduledTask.create!(
    task_id: task11.id,
    to_be_done_date: @date
  )
end

21.times do |i|
  @date = Date.today + i.days
  ScheduledTask.create!(
    task_id: task12.id,
    to_be_done_date: @date
  )
end

puts "Creating old Daily Scheduled Tasks that are done..."

user_instances = [user1, user2, user3]
@date = Date.today

puts "old daily scheduled tasks for task 1"

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

puts "old daily scheduled tasks for task 2"
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

puts "old daily scheduled tasks for task 3"
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
puts "old daily scheduled tasks for task 10"
@date = Date.today
40.times do |i|
  @date -= 1.days
  ScheduledTask.create!(
    task_id: task10.id,
    to_be_done_date: @date,
    user_id: user_instances.sample.id,
    recorded_date: @date,
    done: true
  )
  @date -= 1.days
  ScheduledTask.create!(
    task_id: task10.id,
    to_be_done_date: @date
  )
  @date -= 1.days
  ScheduledTask.create!(
    task_id: task10.id,
    to_be_done_date: @date,
    user_id: user_instances.sample.id,
    recorded_date: @date,
    done: true
  )
end

puts "old daily scheduled tasks for task 11"
@date = Date.today

40.times do |i|
  @date -= 1.days
  ScheduledTask.create!(
    task_id: task11.id,
    to_be_done_date: @date,
    user_id: user_instances.sample.id,
    recorded_date: @date,
    done: true
  )
  @date -= 1.days
  ScheduledTask.create!(
    task_id: task11.id,
    to_be_done_date: @date
  )
end

puts "old daily scheduled tasks for task 12"

@date = Date.today

40.times do |i|
  @date -= 1.days
  ScheduledTask.create!(
    task_id: task12.id,
    to_be_done_date: @date,
    user_id: user_instances.sample.id,
    recorded_date: @date,
    done: true
  )
  @date -= 1.days
  ScheduledTask.create!(
    task_id: task12.id,
    to_be_done_date: @date
  )
  @date -= 1.days
  ScheduledTask.create!(
    task_id: task12.id,
    to_be_done_date: @date,
    user_id: user_instances.sample.id,
    recorded_date: @date,
    done: true
  )
  @date -= 1.days
  ScheduledTask.create!(
    task_id: task12.id,
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

3.times do |i|
  @date = Date.today + (i * 7).days
  ScheduledTask.create!(
    task_id: task13.id,
    to_be_done_date: @date
  )
end

3.times do |i|
  @date = Date.today + (i * 7).days
  ScheduledTask.create!(
    task_id: task14.id,
    to_be_done_date: @date
  )
end

3.times do |i|
  @date = Date.today + (i * 7).days
  ScheduledTask.create!(
    task_id: task15.id,
    to_be_done_date: @date
  )
end

# puts "Creating old Weekly Scheduled Tasks that are done..."

puts "old weekly scheduled tasks for task 4"
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
puts "old weekly scheduled tasks for task 5"
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
puts "old weekly scheduled tasks for task 6"

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

puts "old weekly scheduled tasks for task 13"
@date = Date.today

8.times do |i|
  @date -= (2*7).days
  ScheduledTask.create!(
    task_id: task13.id,
    to_be_done_date: @date,
    user_id: user_instances.sample.id,
    recorded_date: @date,
    done: true
  )
  @date += (1*7).days
  ScheduledTask.create!(
    task_id: task13.id,
    to_be_done_date: @date
  )
  @date -= (2*7).days
  ScheduledTask.create!(
    task_id: task13.id,
    to_be_done_date: @date,
    user_id: user_instances.sample.id,
    recorded_date: @date,
    done: true
  )
end
puts "old weekly scheduled tasks for task 14"
@date = Date.today

8.times do |i|
  @date -= 7.days
  ScheduledTask.create!(
    task_id: task14.id,
    to_be_done_date: @date,
    user_id: user_instances.sample.id,
    recorded_date: @date,
    done: true
  )
  @date -= 7.days
  ScheduledTask.create!(
    task_id: task14.id,
    to_be_done_date: @date
  )
  @date -= 7.days
  ScheduledTask.create!(
    task_id: task14.id,
    to_be_done_date: @date,
    user_id: user_instances.sample.id,
    recorded_date: @date,
    done: true
  )
  @date -= 7.days
  ScheduledTask.create!(
    task_id: task14.id,
    to_be_done_date: @date,
    user_id: user_instances.sample.id,
    recorded_date: @date,
    done: true
  )
end
puts "old weekly scheduled tasks for task 15"

@date = Date.today

8.times do |i|
  @date -= 7.days
  ScheduledTask.create!(
    task_id: task15.id,
    to_be_done_date: @date,
    user_id: user_instances.sample.id,
    recorded_date: @date,
    done: true
  )
  @date -= 7.days
  ScheduledTask.create!(
    task_id: task15.id,
    to_be_done_date: @date
  )
  @date -= 7.days
  ScheduledTask.create!(
    task_id: task15.id,
    to_be_done_date: @date,
    user_id: user_instances.sample.id,
    recorded_date: @date,
    done: true
  )
  @date -= 7.days
  ScheduledTask.create!(
    task_id: task15.id,
    to_be_done_date: @date,
    user_id: user_instances.sample.id,
    recorded_date: @date,
    done: true
  )
  @date -= 7.days
  ScheduledTask.create!(
    task_id: task15.id,
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

3.times do |i|
  @date = Date.today + i.month
  ScheduledTask.create!(
    task_id: task16.id,
    to_be_done_date: @date
  )
end

3.times do |i|
  @date = Date.today + i.month
  ScheduledTask.create!(
    task_id: task17.id,
    to_be_done_date: @date
  )
end

3.times do |i|
  @date = Date.today + i.month
  ScheduledTask.create!(
    task_id: task18.id,
    to_be_done_date: @date
  )
end
puts "Creating old Monthly Scheduled Tasks that are done..."

puts "old monthly scheduled tasks for task 7"

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

puts "old monthly scheduled tasks for task 8"
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
puts "old monthly scheduled tasks for task 9"

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

puts "old monthly scheduled tasks for task 16"

@date = Date.today

4.times do |i|
  @date -= 1.month
  ScheduledTask.create!(
    task_id: task16.id,
    to_be_done_date: @date,
    user_id: user_instances.sample.id,
    recorded_date: @date,
    done: true
  )
  @date -= 2.month
  ScheduledTask.create!(
    task_id: task16.id,
    to_be_done_date: @date,
  )
end

puts "old monthly scheduled tasks for task 17"
@date = Date.today
4.times do |i|
  @date -= 1.month
  ScheduledTask.create!(
    task_id: task17.id,
    to_be_done_date: @date,
    user_id: user_instances.sample.id,
    recorded_date: @date,
    done: true
  )
end
puts "old monthly scheduled tasks for task 18"

@date = Date.today

4.times do |i|
  @date -= 1.month
  ScheduledTask.create!(
    task_id: task18.id,
    to_be_done_date: @date,
    user_id: user_instances.sample.id,
    recorded_date: @date,
    done: true
  )
  @date -= 1.month
  ScheduledTask.create!(
    task_id: task18.id,
    to_be_done_date: @date,
  )
  @date -= 1.month
  ScheduledTask.create!(
    task_id: task18.id,
    to_be_done_date: @date,
    user_id: user_instances.sample.id,
    recorded_date: @date,
    done: true
  )
end


puts "Congrats, seeds done !"
