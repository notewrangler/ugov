class Bill < ActiveRecord::Base
	belongs_to :member

	def author
		self.member
	end
	
end
