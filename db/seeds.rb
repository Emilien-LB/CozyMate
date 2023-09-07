# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Event.destroy_all
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
  task_name: "Nourrir Riri",
  description: "Donner 100g de croquettas buenas à Riri et surtout résistez à sa force de persuasion !",
  frequency_type: "Daily",
  frequency_amount: 1,
  points: 10
)


task2 = Task.create!(
  task_name: "Arroser les plantes",
  description: "Un verre d'eau pour chaque plante à verser au niveau de la racine et le tour est joué !",
  frequency_type: "Daily",
  frequency_amount: 1,
  points: 15
)

task3 = Task.create!(
  task_name: "Vider le lave-vaisselle",
  description: "Il faut bien ranger tous plats, retirer une seule assiette du lave-vaisselle ne compte pas.",
  frequency_type: "Daily",
  frequency_amount: 1,
  points: 20
)

task10 = Task.create!(
  task_name: "Nettoyer la litière du chat",
  description: "Votre mission, à supposer que vous l'acceptiez, consiste à déminer la litière de Riri.",
  frequency_type: "Daily",
  frequency_amount: 1,
  points: 25
)

task11 = Task.create!(
  task_name: "Balade du chien",
  description: "Attention: la mission est de promener Georges le Beagle et non pas de se faire promener !",
  frequency_type: "Daily",
  frequency_amount: 1,
  points: 25
)

task12 = Task.create!(
  task_name: "Nourrir le chien",
  description: "Si Georges remue la queue, c'est que le repas est délicieux. Surtout ne pas donner de sucrerie.",
  frequency_type: "Daily",
  frequency_amount: 1,
  points: 10
)


puts "Creating Weekly tasks..."

task4 = Task.create!(
  task_name: "Sortir la poubelle bleue",
  description: "Elu(e) Mister/Miss Poubelle de la Bin week ! Prépare ta meilleure catwalk vers le local à poubelle.",
  frequency_type: "Weekly",
  frequency_amount: 1,
  frequency_day: "Thursday",
  points: 15
)

task5 = Task.create!(
  task_name: "Nettoyer les WC",
  description: "Redonnez aux toilette le traitement royal qu'elles méritent et gardez-les étincelante de fierté.",
  frequency_type: "Weekly",
  frequency_amount: 1,
  frequency_day: "Sunday",
  points: 30
)

task6 = Task.create!(
  task_name: "Nettoyage salle de bain",
  description: "Nettoyez ces miroirs pour que vous puissiez admirer votre plus beau reflet ! Un peu de self-love",
  frequency_type: "Weekly",
  frequency_amount: 1,
  frequency_day: "Sunday",
  points: 50
)

task13 = Task.create!(
  task_name: "Arroser le cactus",
  description: "Et un verre pour Brutus le Cactus, notre résident le plus résilient du désert !",
  frequency_type: "Weekly",
  frequency_amount: 1,
  frequency_day: "Friday",
  points: 10
)

task14 = Task.create!(
  task_name: "Nettoyage de la cuisine",
  description: "Nettoyer, balayer, astiquer... La cuisine est toujours propre ! Faites-le en chantant !",
  frequency_type: "Weekly",
  frequency_amount: 1,
  frequency_day: "Sunday",
  points: 50
)

task15 = Task.create!(
  task_name: "Sortir la poubelle jaune",
  description: "Elu(e) Mister/Miss Poubelle de la Bin week ! Prépare ta meilleure catwalk vers le local à poubelle.",
  frequency_type: "Weekly",
  frequency_amount: 1,
  frequency_day: "Friday",
  points: 15
)

puts "Creating Monthly tasks..."

task7 = Task.create!(
  task_name: "Nettoyage des fenêtres",
  description: "Nettoyées, elles vous permettront enfin de voir si le voisin porte un slip en peau de léopard !",
  frequency_type: "Monthly",
  frequency_amount: 1,
  frequency_week_of_month: "First",
  frequency_day_of_month: 6,
  points: 50
)

task8 = Task.create!(
  task_name: "Payer les factures",
  description: "C'est l'heure des factures et donc d'un énième drame financier, préparez les mouchoirs...",
  frequency_type: "Monthly",
  frequency_amount: 1,
  frequency_week_of_month: "Second",
  frequency_day_of_month: 8,
  points: 40
)

task9 = Task.create!(
  task_name: "Courses alimentaires",
  description: "Embarquez dans un voyage fascinant à travers le monde des supermarchés ! N'oubliez pas la liste...",
  frequency_type: "Monthly",
  frequency_amount: 1,
  frequency_week_of_month: "Fourth",
  frequency_day_of_month: 8,
  points: 60
)

task16 = Task.create!(
  task_name: "Organisation soirée jeux",
  description: " Soirées où stratégie, rires et apéro se rencontrent autour de vos jeux préférés !",
  frequency_type: "Monthly",
  frequency_amount: 1,
  frequency_week_of_month: "Fourth",
  frequency_day_of_month: 8,
  points: 20
)

task17 = Task.create!(
  task_name: "Nettoyage micro-ondes",
  description: "Eh oui mon Jojo ! Tu en serais pas là si tu avais bien mis le couvercle avant de réchauffer!",
  frequency_type: "Monthly",
  frequency_amount: 1,
  frequency_week_of_month: "Fourth",
  frequency_day_of_month: 25,
  points: 30
)

task18 = Task.create!(
  task_name: "Nettoyage du four",
  description: "L''Odyssée du Four', où la graisse et la saleté s'affrontent dans notre quête épique de nettoyage !",
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

puts "Events creation - September"

event1 = Event.create!(
  title: "Demo Day 🚀",
  start_time: Time.strptime('09/08/2023 18:00', '%m/%d/%Y %H:%M'),
  end_time: Time.strptime('09/08/2023 23:00', '%m/%d/%Y %H:%M'),
  user_id: user1.id,
  description: "Dernière étape du Bootcamp 🏎 🏁! Let's nailed it !"
)

event2 = Event.create!(
  title: "BBQ night 🔥",
  start_time: Time.strptime('09/07/2023 20:00', '%m/%d/%Y %H:%M'),
  end_time: Time.strptime('09/07/2023 23:00', '%m/%d/%Y %H:%M'),
  user_id: user2.id,
  description: "Ne pas oublier l'halloumi ! J'ai invité qqs ami.es, on sera moins de 10"
)
event3 = Event.create!(
  title: "Anaïs' Birthday 🐆",
  start_time: Time.strptime('09/30/2023 20:00', '%m/%d/%Y %H:%M'),
  end_time: Time.strptime('09/30/2023 23:00', '%m/%d/%Y %H:%M'),
  user_id: user2.id,
  description: "N'oubliez pas d'apporter votre sourire (et des cadeaux s'il vous plaît). Le léopard est le thème de la soirée, alors libérons notre félin intérieur !",
)

puts "Congrats, seeds done !"
