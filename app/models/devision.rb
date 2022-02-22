class Devision < ApplicationRecord
    has_one :employee
    has_many :teams,  dependent: :destroy
    

    validates :name, presence: true
    validates :description, presence: true, length: { maximum: 30 }
    validates :manager, presence: true

    validates :name, presence: true
end
