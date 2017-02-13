class Round < ActiveRecord::Base
	has_many :bank_offers, dependent: :destroy
	has_many :round_statuses, dependent: :destroy
	accepts_nested_attributes_for :bank_offers, allow_destroy: true
	validates :name, presence: true
	def is_round_statuses
		if self.round_statuses.count > 0 
			return true
		else
			return false
		end
	end
end
