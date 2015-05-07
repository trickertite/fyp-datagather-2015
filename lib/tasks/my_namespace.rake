namespace :my_namespace do
	desc "TODO"

	task my_task1: :environment do
		user1 = User.create(roll_num: 'nadir', bus_num: '17')
		user2 =User.create(roll_num: 'tanveer', bus_num: 'hostel')
		user3 =User.create(roll_num: 'saad', bus_num: '25')

		r17 = [
		'3-hatti',
		'post-office',
		'lalo khet',
		'karimabad',
		'Ayesha Manzil',
		'Wterpump',
		'Fazal Mill',
		'Gulshan Chowrangi',
		'Nipa Chowrangi',
		'Johar Mor',
		'Askari IV',
		'Drigh Road',
		'Natha Khan',
		'Star Gate',
		'Wireless Gate',
		'Malir Halt',
		'Malir 15',
		'Anwar Baloch',
		'Quaidabad',
		'Manzil Pump',
		'Jogi Mor',
		'FAST'
		]

		hostel = [
		'karimabad',
		'Ayesha Manzil',
		'Wterpump',
		'Fazal Mill',
		'Gulshan Chowrangi',
		'Nipa Chowrangi',
		'Johar Mor',
		'Askari IV',
		'Drigh Road',
		'Natha Khan',
		'Star Gate',
		'Wireless Gate',
		'Malir Halt',
		'Malir 15',
		'Anwar Baloch',
		'Quaidabad',
		'Manzil Pump',
		'Jogi Mor',
		'FAST'
		]

		r25 = [ 
		'Kamran Chowrangi',
		'Mausamyat',
		'Saforah Chowrangi',
		'check post-6',
		'Model Colony',
		'Malir Halt',
		'Malir 15',
		'Anwar Baloch',
		'Quaidabad',
		'Manzil pump',
		'Jogi Mor',
		'FAST'
		]

		r17.each do |stop|
			Stop.create(stop_name: "#{stop}", user_id: "#{user1.id}")
		end

		hostel.each do |stop|
			Stop.create(stop_name: "#{stop}", user_id: "#{user2.id}")
		end

		r25.each do |stop|
			Stop.create(stop_name: "#{stop}", user_id: "#{user3.id}")
		end
	end
end