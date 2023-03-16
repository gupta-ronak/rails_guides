class Author < ApplicationRecord
  has_many :books, dependent: :destroy , before_add: :check_limit
  
  def check_limit(book)
    puts "Maintained"
  end
end
