class Devision < ApplicationRecord
    has_many :employee
    has_many :teams,  dependent: :destroy
    

    validates :name, presence: true
    validates :description, length: { maximum: 30 }
    # validates :manager, presence: true

  
end
