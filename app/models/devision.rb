class Devision < ApplicationRecord
    belongs_to :employee
    has_many :teams

    validates :name, presence: true
end
