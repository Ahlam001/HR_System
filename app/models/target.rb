class Target < ApplicationRecord
    # belongs_to :team
  
    belongs_to :team
    validates :title, :description, :start_date, :finish_date, presence: true
    validates :finish_date, comparison: { greater_than: :start_date }
  
end
