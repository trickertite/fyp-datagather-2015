# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

my_stops = [
	'Sohrab Goth',
	'Sagheer Center',
	'Caltex pump',
	'Fazal Mill',
	'UBL Sports',
	'Centrum Mall',
	'Fariya Mobile Mall',
	'Gulshan Chowrangi',
	'Dacca Sweets',
	'Nipa Chowrangi',
	'Aladin Park',
	'Jauhar Mor',
	'Askari IV',
	'Gulshan e Jamal',
	'Ordinance Depot',
	'Drig Road',
	'Natha Khan',
	'Colony Gate',
	'Star Gate',
	'Wireless Gate',
	'Malir Halt',
	'Malir Kalaboard',
	'Malir 15',
	'Malir Murghi khana',
	'Anwer Baloch',
	'Quaidabad'
]

User.create(roll_num: 'k11-2132-m', bus_num: 'd7', id: 201)

my_stops.each do |stop|
	Stop.create(stop_name: "#{stop}", user_id: 201)
end



# Stop.create(stop_name: 'Milinium', user_id: 1)
# Stop.create(stop_name: 'drig road', user_id: 1)
# Stop.create(stop_name: 'Natakhan', user_id: 1)
# Stop.create(stop_name: 'Calony Gate', user_id: 1)
# Stop.create(stop_name: 'Star gate', user_id: 1)
# Stop.create(stop_name: 'Malir Hault', user_id: 1)
# Stop.create(stop_name: 'Malir 15', user_id: 1)
# Stop.create(stop_name: 'Anwar Baloch', user_id: 1)
# Stop.create(stop_name: 'Quaidabad', user_id: 1)