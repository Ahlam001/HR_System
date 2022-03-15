class Employee < ApplicationRecord
  
  
    belongs_to :devision, optional: true
    belongs_to :team, optional: true

    validates_format_of :email, with: /\A[^@\s]+@[^@\s]+\z/ , :presence =>{:message => 'your email must enclude "@" and ".com"'}
    validates :salary, numericality: true
    validates :name, presence: true
    
end
