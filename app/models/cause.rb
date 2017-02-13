class Cause < ActiveRecord::Base
	has_many :round_statuses, dependent: :destroy
	validates :name, presence: true
end
