class User < ApplicationRecord
     validates :name, presence: true, length: { maximum: 10}, :uniqueness => {:case_sensitive => false}
    validates_format_of :email, with: /\A[^@\s]+@[^@\s]+\z/ , :presence =>{:message => 'your email must enclude "@" and ".com"'}
    # validates :salary, inclusion: { in:1500..15000 }, : :presence =>{:message => 'range must be from 1500 to 15000'}
    # validates :title, format: {with: /\A[a-zA-Z]+/, message: "invalid must begin with letter"}
end
