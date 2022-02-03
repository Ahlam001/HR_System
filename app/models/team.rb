class Team < ApplicationRecord
    has_many :employees
    has_many :Target
    belongs_to :division

    validates :name, presence: true
    validates :description, length: { maximum: 30 }
    validates :team_lead, presence: true
end
