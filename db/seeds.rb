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
  description: "Donner 100g de buenas croquettas et pas plus même si Riri peut être très persuasive !",
  frequency_type: "Daily",
  frequency_amount: 1,
  points: 10
)


task2 = Task.create!(
  task_name: "Arroser les plantes",
  description: "Prenez un moment pour discuter avec vos colocataires à feuilles. Ils ne répondront peut-être pas, mais ils apprécieront les soins et le petit discours d'encouragement. Sinon, un verre d'eau et arrosez bien à la racine.",
  frequency_type: "Daily",
  frequency_amount: 1,
  points: 15
)

task3 = Task.create!(
  task_name: "Vider le lave-vaisselle",
  description: "Veuillez noter que 'vider le lave-vaisselle' ne signifie pas simplement retirer une seule assiette du lave-vaisselle, mais bien tous les plats.",
  frequency_type: "Daily",
  frequency_amount: 1,
  points: 20
)

task10 = Task.create!(
  task_name: "Nettoyer la litière du chat",
  description: "Embarquez dans la courageuse mission de 'la libération de la litière de Riri', où chaque pelletée est une quête héroïque pour un royaume félin plus frais !",
  frequency_type: "Daily",
  frequency_amount: 1,
  points: 25
)

task11 = Task.create!(
  task_name: "Balade du chien",
  description: "Parcourir les rues avec Georges le Beagle, où chaque arbre est un potentiel 'sniff-et' et chaque porte un colis surprise !",
  frequency_type: "Daily",
  frequency_amount: 1,
  points: 25
)

task12 = Task.create!(
  task_name: "Nourrir le chien",
  description: "Maîtriser l'art culinaire des dîners gastronomiques de 'Georges', où chaque repas est une expérience étoilée Michelin qui fait remuer la queue !",
  frequency_type: "Daily",
  frequency_amount: 1,
  points: 10
)


puts "Creating Weekly tasks..."

task4 = Task.create!(
  task_name: "Sortir la poubelle bleue",
  description: "Transformez la corvée de poubelle en une soirée dansante ! Montez le son et bougez au rythme tout en guidant les sacs poubelle vers leur destination.",
  frequency_type: "Weekly",
  frequency_amount: 1,
  frequency_day: "Thursday",
  points: 15
)

task5 = Task.create!(
  task_name: "Nettoyer les WC",
  description: "Les mercredis sont les jours de gloire de votre trône ! Donnez à votre toilette le traitement royal qu'elle mérite et gardez-la étincelante de fierté.",
  frequency_type: "Weekly",
  frequency_amount: 1,
  frequency_day: "Sunday",
  points: 30
)

task6 = Task.create!(
  task_name: "Nettoyage salle de bains",
  description: "Commencez votre semaine en montrant un peu d'amour à votre reflet. Essuyez ces miroirs jusqu'à ce qu'ils brillent, et votre sourire sera plus éclatant que jamais !",
  frequency_type: "Weekly",
  frequency_amount: 1,
  frequency_day: "Sunday",
  points: 50
)

task13 = Task.create!(
  task_name: "Arroser le cactus",
  description: "Offrir un amour liquide au résident le plus résilient du désert, une cérémonie solennelle dans la vie du 'Spécialiste de l'Arrosage de Cactus' !",
  frequency_type: "Weekly",
  frequency_amount: 1,
  frequency_day: "Friday",
  points: 10
)

task14 = Task.create!(
  task_name: "Nettoyage de la cuisine",
  description: "S'aventurer sur le territoire sauvage du 'Croisé de la Cuisine', où le chaos est conquis un plat à la fois, armé d'une éponge et d'une cape de super-héros !",
  frequency_type: "Weekly",
  frequency_amount: 1,
  frequency_day: "Sunday",
  points: 50
)

task15 = Task.create!(
  task_name: "Sortir la poubelle jaune",
  description: "Libérez le puissant 'Dompteur de Poubelle Jaune', où les bacs de recyclage entament une grande aventure vers leur destin sur le trottoir !",
  frequency_type: "Weekly",
  frequency_amount: 1,
  frequency_day: "Friday",
  points: 15
)

puts "Creating Monthly tasks..."

task7 = Task.create!(
  task_name: "Nettoyage des fenêtres",
  description: "Participez à un renouvellement réflectif mensuel. En nettoyant, considérez cela comme un rituel de renouvellement pour vos fenêtres, invitant une énergie positive et de nouvelles perspectives.",
  frequency_type: "Monthly",
  frequency_amount: 1,
  frequency_week_of_month: "First",
  frequency_day_of_month: 6,
  points: 50
)

task8 = Task.create!(
  task_name: "Payer les factures",
  description: "C'est l'heure de faire la fête avec les factures funky ! Une fois par mois, nous nous rassemblons, donnons une tape dans la main à ces factures et les payons en pleurant.",
  frequency_type: "Monthly",
  frequency_amount: 1,
  frequency_week_of_month: "Second",
  frequency_day_of_month: 8,
  points: 40
)

task9 = Task.create!(
  task_name: "Courses alimentaires",
  description: "Embarquez dans un voyage à travers le merveilleux monde des produits frais ! Choisissez les fruits et légumes les plus frais comme si vous sélectionniez des ingrédients pour un festin royal.",
  frequency_type: "Monthly",
  frequency_amount: 1,
  frequency_week_of_month: "Fourth",
  frequency_day_of_month: 8,
  points: 60
)

task16 = Task.create!(
  task_name: "Organisation soirée jeux",
  description: "Devenez le grand chef d'orchestre du 'Spectacle de Soirée Jeux', où stratégie, rires et en-cas se rencontrent dans une symphonie de plaisir !",
  frequency_type: "Monthly",
  frequency_amount: 1,
  frequency_week_of_month: "Fourth",
  frequency_day_of_month: 8,
  points: 20
)

task17 = Task.create!(
  task_name: "Nettoyage micro-ondes",
  description: "Plongez dans les profondeurs du 'Merveilleux Micro-ondes', où les explosions culinaires trouvent leur adversaire dans un duel impeccablement propre !",
  frequency_type: "Monthly",
  frequency_amount: 1,
  frequency_week_of_month: "Fourth",
  frequency_day_of_month: 25,
  points: 30
)

task18 = Task.create!(
  task_name: "Nettoyage du four",
  description: "Conquérir le champ de bataille enflammé de l''Odyssée du Four', où la graisse et la saleté affrontent la chaleur de notre quête épique de nettoyage !",
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
