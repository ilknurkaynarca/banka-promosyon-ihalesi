class Bank < ActiveRecord::Base
	has_many :bank_offers, dependent: :destroy
	has_one :round_status, dependent: :destroy
	validates :name, presence: true
end
