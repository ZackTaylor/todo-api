# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Todo.destroy_all
Item.destroy_all


10.times do
  Todo.create(title: "#{Faker::TheFreshPrinceOfBelAir.quote}",
              created_by: "#{Faker::TheFreshPrinceOfBelAir.character}"
  )
end

20.times do
  Item.create(name: "Fast travel to #{Faker::Zelda.location}.",
              done: false,
              todo: Todo.order("RANDOM()").first
  )
end
