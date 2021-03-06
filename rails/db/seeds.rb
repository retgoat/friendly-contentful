# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Dummy.destroy_all

1000.times do |i|
  d = { first_name: SecureRandom.hex,
        last_name: SecureRandom.hex,
        email: "#{SecureRandom.hex}@foo.bar",
        user_name: SecureRandom.hex }
  Dummy.create!(data: d)
end
