class BankOffer < ActiveRecord::Base
	belongs_to :bank 
	belongs_to :round
	validates :bank_id, :price, presence: true
end
