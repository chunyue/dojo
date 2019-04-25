# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: "admin@example.com", password: "12345678", role: "admin")
puts "Default admin created!"

#add default category

Category.destroy_all

category_list = [
  { name: "貓版" },
  { name: "狗版" },
  { name: "食記" },
  { name: "體育" },
  { name: "3C" },
  { name: "心情" },
  { name: "男女" }
]


category_list.each do |category|
  Category.create( name: category[:name])
end  

puts "category created!!"