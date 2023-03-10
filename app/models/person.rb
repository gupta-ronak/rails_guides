class Person < ApplicationRecord
  validates :terms_of_service , acceptance: {message: 'must be abide' , accept: ['TRUE','yes']}
  validates :name , length: { minimum: 2 }
  validates :bio , length: {maximum: 500}
  validates :age, numericality: { message: "%{value} seems wrong" }, on: :update
  validates :email, uniqueness: true, on: :create
  validates :password , length: {in: 6..20}
  validates :registration_number , length: {is: 6} 

  validates :username , uniqueness: { 
    message: ->(object , data) do
      "Hey #{object.name}, #{data[:value]} is already taken."
    end
  }
end
