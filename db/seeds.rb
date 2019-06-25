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
    role: 'admin',
    avatar: File.open(File.join(Rails.root,'db/images/avatars/1.jpg'))
  },
  {
    email: 'moderator@moderator.com',
    username: 'Moderator',
    role: 'moderator',
    avatar: File.open(File.join(Rails.root,'db/images/avatars/2.jpg'))
  },
  {
    email: 'user@user.com',
    username: 'User',
    role: 'user',
    avatar: File.open(File.join(Rails.root,'db/images/avatars/3.jpg'))
  }
]

def create_user(user)
  password = 'testtest'

  User.create!(
    username: user[:username],
    email:    user[:email],
    role:     user[:role],
    avatar:   user[:avatar],
    password: password,
    password_confirmation: password
  )
end

@users.each do |user|
  u = create_user(user)
  puts "User with email #{u.email} created"
end

# Ингредиенты для рецептов

@ingredients = [
  {
    name: "Белый хлеб",
  },
  {
    name: "Томаты",
  },
  {
    name: "Оливковое масло",
  },
  {
    name: "Чеснок",
  },
  {
    name: "Бальзамический крем",
  },
  {
    name: "Свежемолотый черный перец",
  },
  {
    name: "Соль",
  },
  {
    name: "Темный шоколад",
  },
  {
    name: "Сливочное масло",
  },
  {
    name: "Коричневый сахар",
  },
  {
    name: "Яйцо куриное",
  },
  {
    name: "Пшеничная мука",
  },
  {
    name: "Грецкие орехи",
  },
  {
    name: "Молоко",
  },
  {
    name: "Сахар",
  },
  {
    name: "Гашеная сода",
  },
  {
    name: "Молотая корица",
  },
  {
    name: "Спагетти",
  },
  {
    name: "Перец чили",
  },
  {
    name: "Петрушка",
  },
  {
    name: "Лимон",
  },
  {
    name: "Филе трески",
  }
]

def create_ingredient(ingredient)
  Ingredient.create!(
    name:   ingredient[:name]
  )
end

@ingredients.each do |ingredient|
  i = create_ingredient(ingredient)
  puts "Ingredient #{i.name} created"
end

# категории

@categories = [
  {
    category_name: "Вегетарианство"
  }, {
    category_name: "Веганство"
  }, {
    category_name: "Без глютена"
  }, {
    category_name: "Мало калорий"
  }, {
    category_name: "Десерты"
  }, {
    category_name: "Мясо"
  }, {
    category_name: "Рыба"
  }, {
    category_name: "Птица"
  }
]

def create_category(category)
  Category.create!(
    category_name: category[:category_name]
  )
end

@categories.each do |category|
  i = create_category(category)
  puts "Category #{i.category_name} created"
end

# Рецепты

@recipes = [
  {
    title: "Брускетта с помидорами",
    recipe_description: "Брускетта с помидорами – вкусная итальянская закуска, а также простейший способ положить что-то на зуб, почувствовать легкую сытость, но обойтись при этом без переедания. Кроме того, брускетты всегда выглядят очень нарядно. И приготовление их занимает минимум времени. Самое популярное сочетание —поджаренный хлеб, помидоры, чеснок и базилик. Если нет времени бланшировать помидоры на сковороде, можно заменить их на вяленые томаты. Для приготовления итальянской брускетты лучше взять чиабатту — ее ломтики после поджарки хорошо впитают оливковое масло",
    portions: 4,
    time: "10 минут",
    difficulty: "Легко",
    nutritions: "132 калорий",
    user_id: 1,
    category_id: 2
  },
  {
    title: "Брауни",
    portions: 6,
    time: "40 минут",
    difficulty: "Не просто",
    nutritions: "676 калорий",
    user_id: 1,
    recipe_description: "Один из самых популярных десертов в мире — брауни — был придуман в 1893 году на кухне легендарного отеля Palmer House в Чикаго. Этот пирог там пекут до сих пор по оригинальному рецепту, покрывая сверху абрикосовой глазурью. В домашней версии, впрочем, у брауни получается такая изумительная сахарная корочка, что глазировать ее было бы преступлением. У традиционных шоколадных брауни ванильный аромат, хрустящая корочка и влажная серединка. В торт также добавляют грецкие орехи или фисташки, а еще клюкву.",
    category_id: 5
  },
  {
    title: "Американские панкейки с корицей",
    portions: 4,
    time: "30 минут",
    difficulty: "Легко",
    nutritions: "366 калорий",
    user_id: 1,
    recipe_description: "Панкейки — пирожные на сковородке, если перевести, — круглые пышные блинчики, которые принято складывать стопочкой по четыре-пять штук на порцию, поливать кленовым сиропом или растопленным сливочным маслом и есть на завтрак. Тесто для панкейков, правда, готовится не слишком быстро: чтобы добиться правильной пористой структуры, придется отдельно взбивать белки. В этот рецепт для выразительности добавили корицу, а так панкейки можно делать самых разнообразных вкусов — например, добавляя банановое пюре или какао.",
    category_id: 1
  },
  {
    title: "Спагетти с чесноком и маслом",
    recipe_description: "Самый аскетичный вариант приготовления пасты. Еще одно наследие итальянских бедняков — в блюде совсем нет мяса, а вкусно так, что про него и не вспоминаешь. Итальянцы называют классические острые спагетти с чесноком и маслом — aglio e olio peperoncino. Это настоящее кулинарное произведение из минимума элементов. Спагетти алио-олио можно приготовить и со сладким болгарским перцем вместо чили. Лимонная цедра с соком вместо привычного пармезана делает пасту легкой. Секрет идеального алио-олио — в хорошем оливковом масле: чем выше его качество, тем лучше вкус.",
    portions: 4,
    time: "15 минут",
    difficulty: "Легко",
    nutritions: "688 калорий",
    user_id: 1,
    category_id: 2
  },
  {
    title: "Треска с помидорами",
    recipe_description: "Треска — крупная морская рыба с сочным белым мясом. В русской кухне треска очень ценится и служит основой множеству традиционных блюд. В магазинах легко достать замороженное филе и экспериментировать с ним в любых вариациях. В Мурманске даже возвели памятник треске, который красуется на главной площади города. Это к тому же очень диетичная рыба, богатая белком. И готовится она очень просто. Треска с помидорами запекается в духовке всего за пятнадцать минут — достаточно поместить все ингредиенты в кулинарный рукав и встряхнуть.",
    portions: 6,
    time: "15 минут",
    difficulty: "Легко",
    nutritions: "363 калорий",
    user_id: 1,
    category_id: 7
  },
  {
    title: "Форк 1: Американские панкейки с корицей",
    portions: 4,
    time: "30 минут",
    difficulty: "Легко",
    nutritions: "366 калорий",
    user_id: 1,
    recipe_description: "Панкейки — пирожные на сковородке, если перевести, — круглые пышные блинчики, которые принято складывать стопочкой по четыре-пять штук на порцию, поливать кленовым сиропом или растопленным сливочным маслом и есть на завтрак. Тесто для панкейков, правда, готовится не слишком быстро: чтобы добиться правильной пористой структуры, придется отдельно взбивать белки. В этот рецепт для выразительности добавили корицу, а так панкейки можно делать самых разнообразных вкусов — например, добавляя банановое пюре или какао.",
    category_id: 1,
    origin_id: 3
  }
]

def create_recipes(recipe)
  Recipe.create!(
    title:   recipe[:title],
    recipe_description:   recipe[:recipe_description],
    portions:   recipe[:portions],
    time:   recipe[:time],
    difficulty:   recipe[:difficulty],
    nutritions:   recipe[:nutritions],
    user_id:   recipe[:user_id],
    category_id:   recipe[:category_id],
  )
end

@recipes.each do |recipe|
  i = create_recipes(recipe)
  puts "Recipe #{i.title} created"
end

# Изображени для рецептов

@recipe_attachments = [
  {
      recipe_id: 1,
      recipe_image: File.open(File.join(Rails.root,'db/images/recipes/recipe1_1.jpg'))
    },
  {
      recipe_id: 1,
      recipe_image: File.open(File.join(Rails.root,'db/images/recipes/recipe1_2.jpg'))
    },
  {
      recipe_id: 1,
      recipe_image: File.open(File.join(Rails.root,'db/images/recipes/recipe1_3.jpg'))
    },
  {
      recipe_id: 2,
      recipe_image: File.open(File.join(Rails.root,'db/images/recipes/recipe2_1.jpg'))
    },
  {
      recipe_id: 2,
      recipe_image: File.open(File.join(Rails.root,'db/images/recipes/recipe2_2.jpg'))
    },
  {
      recipe_id: 2,
      recipe_image: File.open(File.join(Rails.root,'db/images/recipes/recipe2_3.jpg'))
    },
  {
      recipe_id: 3,
      recipe_image: File.open(File.join(Rails.root,'db/images/recipes/recipe3_1.jpg'))
    },
  {
      recipe_id: 3,
      recipe_image: File.open(File.join(Rails.root,'db/images/recipes/recipe3_2.jpg'))
    },
  {
      recipe_id: 3,
      recipe_image: File.open(File.join(Rails.root,'db/images/recipes/recipe3_3.jpg'))
    },
  {
      recipe_id: 4,
      recipe_image: File.open(File.join(Rails.root,'db/images/recipes/recipe4_1.jpg'))
    },
  {
      recipe_id: 4,
      recipe_image: File.open(File.join(Rails.root,'db/images/recipes/recipe4_2.jpg'))
    },
  {
      recipe_id: 4,
      recipe_image: File.open(File.join(Rails.root,'db/images/recipes/recipe4_3.jpg'))
    },
  {
      recipe_id: 5,
      recipe_image: File.open(File.join(Rails.root,'db/images/recipes/recipe5_1.jpg'))
    },
  {
      recipe_id: 5,
      recipe_image: File.open(File.join(Rails.root,'db/images/recipes/recipe5_2.jpg'))
    },
  {
      recipe_id: 5,
      recipe_image: File.open(File.join(Rails.root,'db/images/recipes/recipe5_3.jpg'))
  },
  {
      recipe_id: 6,
      recipe_image: File.open(File.join(Rails.root,'db/images/recipes/recipe6_1.jpg'))
  },
  {
      recipe_id: 6,
      recipe_image: File.open(File.join(Rails.root,'db/images/recipes/recipe6_2.jpg'))
  },
  {
      recipe_id: 6,
      recipe_image: File.open(File.join(Rails.root,'db/images/recipes/recipe6_3.jpg'))
  }
]

def create_recipe_attachments(recipe_attachment)
  RecipeAttachment.create!(
    recipe_id:       recipe_attachment[:recipe_id],
    recipe_image:   recipe_attachment[:recipe_image]
  )
end

@recipe_attachments.each do |recipe_attachment|
  i = create_recipe_attachments(recipe_attachment)
  puts "recipe attachment #{i.recipe_id} created"
end

# Ингредиенты для рецептов

@recipe_ingredients = [
  {
    recipe_id: 1,
    ingredient_id: 1,
    quantity: 4,
    measure: "куска"
  },
  {
    recipe_id: 1,
    ingredient_id: 2,
    quantity: 3,
    measure: "штуки"
  },
  {
    recipe_id: 1,
    ingredient_id: 3,
    quantity: 30,
    measure: "мл"
  },
  {
    recipe_id: 1,
    ingredient_id: 4,
    quantity: 3,
    measure: "зубчика"
  },
  {
    recipe_id: 1,
    ingredient_id: 5,
    quantity: 10,
    measure: "г"
  },
  {
    recipe_id: 1,
    ingredient_id: 6,
    quantity: "",
    measure: ""
  },
  {
    recipe_id: 1,
    ingredient_id: 7,
    quantity: "",
    measure: ""
  },
  {
    recipe_id: 2,
    ingredient_id: 8,
    quantity: 100,
    measure: "г"
  }, {
    recipe_id: 2,
    ingredient_id: 9,
    quantity: 180,
    measure: "г"
  }, {
    recipe_id: 2,
    ingredient_id: 10,
    quantity: 200,
    measure: "г"
  }, {
    recipe_id: 2,
    ingredient_id: 11,
    quantity: 4,
    measure: "штуки"
  }, {
    recipe_id: 2,
    ingredient_id: 12,
    quantity: 100,
    measure: "г"
  }, {
    recipe_id: 2,
    ingredient_id: 13,
    quantity: 100,
    measure: "г"
  },
  {
    recipe_id: 3,
    ingredient_id: 12,
    quantity: 240,
    measure: "г"
  }, {
    recipe_id: 3,
    ingredient_id: 14,
    quantity: 220,
    measure: "мл"
  }, {
    recipe_id: 3,
    ingredient_id: 16,
    quantity: 2,
    measure: "столовые ложки"
  }, {
    recipe_id: 3,
    ingredient_id: 11,
    quantity: 4,
    measure: "штуки"
  }, {
    recipe_id: 3,
    ingredient_id: 7,
    quantity: 1,
    measure: "щепотка"
  }, {
    recipe_id: 3,
    ingredient_id: 17,
    quantity: 0.2,
    measure: "чайной ложки"
  }, {
    recipe_id: 3,
    ingredient_id: 18,
    quantity: " ",
    measure: "по вкусу"
  },
  {
    recipe_id: 6,
    ingredient_id: 12,
    quantity: 240,
    measure: "г"
  }, {
    recipe_id: 6,
    ingredient_id: 14,
    quantity: 220,
    measure: "мл"
  }, {
    recipe_id: 6,
    ingredient_id: 16,
    quantity: 2,
    measure: "столовые ложки"
  }, {
    recipe_id: 6,
    ingredient_id: 11,
    quantity: 4,
    measure: "штуки"
  }, {
    recipe_id: 6,
    ingredient_id: 7,
    quantity: 1,
    measure: "щепотка"
  }, {
    recipe_id: 6,
    ingredient_id: 17,
    quantity: 0.2,
    measure: "чайной ложки"
  }, {
    recipe_id: 6,
    ingredient_id: 18,
    quantity: " ",
    measure: "по вкусу"
  },
  {
    recipe_id: 4,
    ingredient_id: 19,
    quantity: 500,
    measure: "г"
  }, {
    recipe_id: 4,
    ingredient_id: 4,
    quantity: 8,
    measure: "зубчиков"
  }, {
    recipe_id: 4,
    ingredient_id: 20,
    quantity: 2,
    measure: "штуки"
  }, {
    recipe_id: 4,
    ingredient_id: 21,
    quantity: 50,
    measure: "г"
  }, {
    recipe_id: 4,
    ingredient_id: 3,
    quantity: 100,
    measure: "мл"
  }, {
    recipe_id: 4,
    ingredient_id: 22,
    quantity: 0.5,
    measure: "штуки"
  }, {
    recipe_id: 4,
    ingredient_id: 7,
    quantity: "",
    measure: "по вкусу"
  }, {
    recipe_id: 4,
    ingredient_id: 6,
    quantity: "",
    measure: "по вкусу"
  }, {
    recipe_id: 5,
    ingredient_id: 22,
    quantity: 1.2,
    measure: "кг"
  }, {
    recipe_id: 5,
    ingredient_id: 3,
    quantity: 6,
    measure: "ст. л"
  }, {
    recipe_id: 5,
    ingredient_id: 21,
    quantity: 2,
    measure: "штуки"
  }, {
    recipe_id: 5,
    ingredient_id: 20,
    quantity: 120,
    measure: "г"
  }, {
    recipe_id: 5,
    ingredient_id: 2,
    quantity: 24,
    measure: "штуки"
  }, {
    recipe_id: 5,
    ingredient_id: 7,
    quantity: "",
    measure: ""
  }, {
    recipe_id: 5,
    ingredient_id: 6,
    quantity: "",
    measure: ""
  }
]

def create_recipe_ingredients(recipe_ingredient)
  RecipeIngredient.create!(
    recipe_id:     recipe_ingredient[:recipe_id],
    ingredient_id: recipe_ingredient[:ingredient_id],
    quantity:      recipe_ingredient[:quantity],
    measure:       recipe_ingredient[:measure],
  )
end

@recipe_ingredients.each do |recipe_ingredient|
  i = create_recipe_ingredients(recipe_ingredient)
  puts "recipe ingredient #{i.recipe_id} created"
end

# Шаги

@steps = [
  {
    recipe_id: 1,
    position: 1,
    description: "Поджарить хлеб на сухой сковородке или в духовке до золотистой корочки. В духовке это займет три-пять минут (в зависимости от размера ломтя хлеба) при температуре 200 градусов."
  }, {
    recipe_id: 1,
    position: 2,
    description: "Помидоры нарезать кубиками с ребром около полсантиметра. Мелко нарубить три зубчика чеснока."
  }, {
    recipe_id: 1,
    position: 3,
    description: "Разогреть сковороду, плеснуть в нее немного оливкового масла и высыпать в него помидоры и чеснок. Готовить их минуту-другую, просто чтобы прогреть, не потеряв вкуса свежего помидора. Тогда капнуть в сковороду бальзамического крема, перемешать и снять с огня."
  }, {
    recipe_id: 1,
    position: 4,
    description: "Поджаренный хлеб пропитать оставшимся оливковым маслом, разлив понемногу на каждый ломоть. Сверху выложить теплые помидоры, посолить по вкусу, посыпать свежемолотым черным перцем и мелко нарезанной зеленью — любой, какая окажется под рукой. И подавать как закуску — например, к вину."
  }, {
    recipe_id: 2,
    position: 1,
    description: "Шоколад разломать на кусочки и вместе со сливочным маслом растопить на водяной бане, не переставая все время помешивать лопаткой или деревянной ложкой. Получившийся густой шоколадный соус снять с водяной бани и оставить остывать."
  }, {
    recipe_id: 2,
    position: 2,
    description: "Тем временем смешать яйца со ста граммами коричневого сахара: яйца разбить в отдельную миску и взбить, постепенно добавляя сахар. Взбивать можно при помощи миксера или вручную — как больше нравится, — но не меньше двух с половиной-трех минут."
  }, {
    recipe_id: 2,
    position: 3,
    description: "Острым ножом на разделочной доске порубить грецкие орехи. Предварительно их можно поджарить на сухой сковороде до появления аромата, но это необязательная опция."
  }, {
    recipe_id: 2,
    position: 4,
    description: "В остывший растопленный со сливочным маслом шоколад аккуратно добавить оставшийся сахар, затем муку и измельченные орехи и все хорошо перемешать венчиком."
  }, {
    recipe_id: 2,
    position: 5,
    description: "Затем влить сахарно-яичную смесь и тщательно смешать с шоколадной массой. Цвет у теста должен получиться равномерным, без разводов."
  }, {
    recipe_id: 2,
    position: 6,
    description: "Разогреть духовку до 200 градусов. Дно небольшой глубокой огнеупорной формы выстелить листом бумаги для выпечки или калькой. Перелить тесто в форму. Поставить в духовку и выпекать двадцать пять — тридцать минут до появления сахарной корочки."
  }, {
    recipe_id: 2,
    position: 7,
    description: "Готовый пирог вытащить из духовки, дать остыть и нарезать на квадратики острым ножом или ножом для пиццы — так кусочки получатся особенно ровными."
  }, {
    recipe_id: 2,
    position: 8,
    description: "Подавать брауни можно просто так, а можно посыпать сверху сахарной пудрой или разложить квадратики по тарелкам и украсить каждую порцию шариком ванильного мороженого."
  }, {
    recipe_id: 3,
    position: 1,
    description: "Отделить белки от желтков. Белки убрать в холодильник, а желтки выложить в глубокую и широкую миску, добавить к ним сахар, пару щепоток моло- той корицы и растереть до однородной массы."
  }, {
    recipe_id: 3,
    position: 2,
    description: "Влить небольшой струйкой в миску полный стакан молока и смешать с яично-сахарной смесью венчиком, стараясь при этом не взбивать жидкость до образования пены."
  }, {
    recipe_id: 3,
    position: 3,
    description: "Аккуратно всыпать в яично-молочную смесь просеянную муку, не переставая помешивать венчиком. Добавить соду, гашенную уксусом. Осторожно перемешать."
  }, {
    recipe_id: 3,
    position: 4,
    description: "Вымесить венчиком однородное густое тесто, по возможности максимально разбивая образовавшиеся комочки. По консистенции масса должна напоминать густую сметану."
  }, {
    recipe_id: 3,
    position: 5,
    description: "В охлажденные белки добавить щепотку соли и взбить венчиком в крутую пену. Если под рукой есть миксер, то лучше воспользоваться им — на высоких оборотах весь процесс займет не больше минуты."
  }, {
    recipe_id: 3,
    position: 6,
    description: "Бережно, силиконовой лопаткой или деревянной ложкой, постепенно вмешать взбитые белки в тесто, стараясь не повредить их хрупкую текстуру. Широкую сковороду с антипригарным покрытием смазать половиной чайной ложки сливочного масла и разогреть на умеренном огне."
  }, {
    recipe_id: 3,
    position: 7,
    description: "Вылить на сковороду два полных половника теста — один половник на один блинчик. Печь примерно полторы минуты, затем перевернуть и подрумянить с другой стороны. Переложить на блюдо, а на сковороду вылить следующую порцию теста."
  }, {
    recipe_id: 3,
    position: 8,
    description: "Добавлять в сковороду масло при этом больше не нужно: все остальные блинчики должны не жариться, а печься на слабом огне до приобретения легкого равномерного румянца. Готовые панкейки выложить на блюдо, смазать оставшимся сливочным маслом и сразу подавать."
  }, {
    recipe_id: 6,
    position: 1,
    description: "Отделить белки от желтков. Белки убрать в холодильник, а желтки выложить в глубокую и широкую миску, добавить к ним сахар, пару щепоток моло- той корицы и растереть до однородной массы."
  }, {
    recipe_id: 6,
    position: 2,
    description: "Влить небольшой струйкой в миску полный стакан молока и смешать с яично-сахарной смесью венчиком, стараясь при этом не взбивать жидкость до образования пены."
  }, {
    recipe_id: 6,
    position: 3,
    description: "Аккуратно всыпать в яично-молочную смесь просеянную муку, не переставая помешивать венчиком. Добавить соду, гашенную уксусом. Осторожно перемешать."
  }, {
    recipe_id: 6,
    position: 4,
    description: "Вымесить венчиком однородное густое тесто, по возможности максимально разбивая образовавшиеся комочки. По консистенции масса должна напоминать густую сметану."
  }, {
    recipe_id: 6,
    position: 5,
    description: "В охлажденные белки добавить щепотку соли и взбить венчиком в крутую пену. Если под рукой есть миксер, то лучше воспользоваться им — на высоких оборотах весь процесс займет не больше минуты."
  }, {
    recipe_id: 6,
    position: 6,
    description: "Бережно, силиконовой лопаткой или деревянной ложкой, постепенно вмешать взбитые белки в тесто, стараясь не повредить их хрупкую текстуру. Широкую сковороду с антипригарным покрытием смазать половиной чайной ложки сливочного масла и разогреть на умеренном огне."
  }, {
    recipe_id: 6,
    position: 7,
    description: "Вылить на сковороду два полных половника теста — один половник на один блинчик. Печь примерно полторы минуты, затем перевернуть и подрумянить с другой стороны. Переложить на блюдо, а на сковороду вылить следующую порцию теста."
  }, {
    recipe_id: 6,
    position: 8,
    description: "Добавлять в сковороду масло при этом больше не нужно: все остальные блинчики должны не жариться, а печься на слабом огне до приобретения легкого равномерного румянца. Готовые панкейки выложить на блюдо, смазать оставшимся сливочным маслом и сразу подавать."
  }, {
    recipe_id: 4,
    position: 1,
    description: "Поставить спагетти вариться и где-то за пять минут до готовности спагетти раскочегарить сковороду, влить в нее оливковое масло и на оливковом масле обжарить давленый чеснок и нарезанный крупной стружкой перец чили. Как только чеснок размягчится, добавить мелко нарубленную петрушку, перемешать и снять с огня."
  }, {
    recipe_id: 4,
    position: 2,
    description: "После того как спагетти сварятся до состояния аль денте, слить воду и вывалить спагетти в сковороду с обжаренным чесноком, перцем и петрушкой."
  }, {
    recipe_id: 4,
    position: 3,
    description: "На небольшом огне потомить эту смесь полминуты, постоянно помешивая, добавить сок половины лимона и цедру половины лимона, посолить, поперчить, перемешать. И подавать к столу."
  }, {
    recipe_id: 5,
    position: 1,
    description: "В шесть жаропрочных пакетов для жарки в духовке разложить по куску трески, по столовой ­лож­ке рубленой петрушки, по четыре помидора, разрезанных пополам, по соку четверти лимона и сто­ловой ложке масла."
  }, {
    recipe_id: 5,
    position: 2,
    description: "Завязать герметично пакет, ­по­солив, поперчив содержимое, и положить на пятнадцать минут в духовку, разогретую до 180 гра­дусов."
  }
]

def create_steps(step)
  Step.create!(
    recipe_id:     step[:recipe_id],
    position:      step[:position],
    description:   step[:description]
  )
end

@steps.each do |step|
  i = create_steps(step)
  puts "Step with #{i.recipe_id} created"
end
