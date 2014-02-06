require 'faker'
# create a few users
  User.create :name => 'Dev Bootcamp Student', :email => 'me@example.com', :password => 'password'
  5.times do
    User.create :name => Faker::Name.name, :email => Faker::Internet.email, :password => 'password'
  end
# create a few technical skills
  computer_skills = %w(Ruby-technical Sinatra-technical Rails-technical JavaScript-technical jQuery-technical HTML-technical CSS-technical)
  computer_skills.each do |skill|
    Skill.create :name => skill
  end
# create a few creative skills
  design_skills = %w(Photoshop-creative Illustrator-creative Responsive-Design-creative)
    design_skills.each do |skill|
    Skill.create :name => skill
  end
# TODO: create associations between users and skills
  num_skills = Skill.count
  User.all.each do |user|
    skill = Skill.find(rand(0..num_skills))
    proficiency = Proficiency.create(years: rand(6), formal: [true, false].sample)
    proficiency.user = user
    proficiency.skill = skill
    proficiency.save
  end
