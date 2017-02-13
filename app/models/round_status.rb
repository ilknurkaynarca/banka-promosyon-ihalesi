class RoundStatus < ActiveRecord::Base
	belongs_to :cause
	belongs_to :bank
	belongs_to :round
	validates :bank_id, :round_id, :cause_id, presence: true
end
