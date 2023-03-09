class Library < ApplicationRecord
  #association
  has_many :books

  #validation
  validates_associated :books
end
