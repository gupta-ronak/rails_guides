class Article < ApplicationRecord

  #Association
  has_many :comments

  #Validation
  validates :title,presence: true , uniqueness: true
  validates :body, presence: true , length: {minimum: 8}

  #CallBack
  after_destroy :log_destroy_action

  def log_destroy_action
    puts 'Article destroyed'
  end
end
