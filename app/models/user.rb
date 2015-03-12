class User < ActiveRecord::Base
	validates :roll_num, presence: true
	validates :bus_num, presence: true
	before_save :to_lowercase
	has_many :locations, dependent: :destroy


	def to_lowercase
		self.roll_num.downcase!
		self.bus_num.downcase!
	end
end
