class Employee < ApplicationRecord
    has_one :division
    belongs_to :team

    validates_format_of :email, with: /\A[^@\s]+@[^@\s]+\z/ , :presence =>{:message => 'your email must enclude "@" and ".com"'}
    validates :salary, numericality: true
end
