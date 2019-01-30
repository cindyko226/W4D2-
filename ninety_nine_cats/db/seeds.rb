# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# == Schema Information
#
# Table name: cats
#
#  id          :bigint(8)        not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null


cat1 = Cat.create(birth_date: '2015/01/20', color: 'black', name: 'Leo', sex: 'M', description: 'Sweetest' )
cat2 = Cat.create(birth_date: '2012/05/13', color: 'brown', name: 'Mocha', sex: 'F', description: 'Lovely' )

