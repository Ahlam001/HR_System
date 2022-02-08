class Team < ApplicationRecord
    has_many :targets
	has_many :employees
	# has_one :Devision
	belongs_to :devision

    validates :name, presence: true
    validates :description, length: { maximum: 30 }
    validates :team_lead, presence: true
end
