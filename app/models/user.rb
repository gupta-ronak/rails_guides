class User < ApplicationRecord

  #Association
  has_many: :articles , dependent: :destroy

  #Validation
  validates :login , :email , presence: true

  #CallBack
  before_validation :ensure_login_value
  before_validation :normalize_name , on: :create

private 
  def ensure_login_value
    if login.nil? 
      self.login = email unless email.blank?
    end

    self.name = login.capitalize if name.blank?

  end

  def normalize_name
    self.name = self.name.downcase.titleize
  end
  
  after_initialize do |user|
    puts "You have initialized an object!"
  end

  after_find do |user|
    puts "You have found an object!"
  end

  after_touch do |user|
    puts "You have touched an object"
  end
  

end

