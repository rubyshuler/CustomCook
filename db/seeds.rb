# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@users = [
  {
    email: 'admin@admin.com',
    username: 'Admin',
    role: 'admin'
  },
  {
    email: 'moderator@moderator.com',
    username: 'Moderator',
    role: 'moderator'
  },
  {
    email: 'user@user.com',
    username: 'User',
    role: 'user'
  }
]

def create_user(user)
  password = 'testtest'

  User.create!(
    username: user[:username],
    email:    user[:email],
    role:     user[:role],
    password: password,
    password_confirmation: password
  )
end

@users.each do |user|
  u = create_user(user)
  puts "User with email #{u.email} created"
end

@ingredients = [
  {
    name: "Оливковое масло",
    nutritions: "884"
  },
  {
    name: "Лук",
    nutritions: "40"
  },
  {
    name: "Тыква",
    nutritions: "26"
  },
  {
    name: "Морковь",
    nutritions: "41"
  },
  {
    name: "Чеснок",
    nutritions: "149"
  },
  {
    name: "Имбирь",
    nutritions: "80"
  },
  {
    name: "Пармезан",
    nutritions: "431"
  },
  {
    name: "Чили",
    nutritions: "40"
  },
  {
    name: "Кориандр",
    nutritions: "23"
  },
  {
    name: "Мука",
    nutritions: "364"
  },
  {
    name: "Тмин",
    nutritions: "333"
  },
  {
    name: "Лайм",
    nutritions: "30"
  },
  {
    name: "Йогурт",
    nutritions: "59"
  },
  {
    name: "Латук",
    nutritions: "15"
  },
  {
    name: "Чили",
    nutritions: "40"
  },
  {
    name: "Булочки для бургеров",
    nutritions: "272"
  },
  {
    name: "Пападам",
    nutritions: "371"
  },
  {
    name: "Манговый чатни",
    nutritions: "140"
  }
]

# https://www.jamieoliver.com/recipes/vegetable-recipes/brick-lane-burger/

def create_ingredient(create_ingredient)
  Ingredient.create!(
    username:   ingredient[:name],
    nutritions: ingredient[:nutritions]
  )
end

@ingredients.each do |ingredient|
  i = create_ingredient(create_ingredient)
  puts "Ingredient #{i.name} created"
end
