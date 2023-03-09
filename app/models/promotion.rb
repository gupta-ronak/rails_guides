class Promotion < ApplicationRecord


  #validation
  validates :start_date, comparison: { greater_than: :end_date }
  
end
