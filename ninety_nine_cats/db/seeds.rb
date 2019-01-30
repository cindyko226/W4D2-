# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# == Schema Information
#
# == Schema Information
#
# Table name: cat_rental_requests
#
#  id         :bigint(8)        not null, primary key
#  cat_id     :integer          not null
#  start_date :date             not null
#  end_date   :date             not null
#  status     :string           default("PENDING")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
cat1 = Cat.create(birth_date: '2015/01/20', color: 'black', name: 'Leo', sex: 'M', description: 'Sweetest' )
cat2 = Cat.create(birth_date: '2012/05/13', color: 'brown', name: 'Mocha', sex: 'F', description: 'Lovely' )

cat_rental1 = CatRentalRequest.create(cat_id: 1, start_date: '2016/01/01', end_date: '2016/06/20', status: 'APPROVED')
cat_rental2 = CatRentalRequest.create(cat_id: 2, start_date: '2013/01/01', end_date: '2013/06/20', status: 'APPROVED')