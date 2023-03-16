class GoodnessValidator < ActiveModel::Validator

  #Association




  def validate (record)
    if record.first_name == "Evil"
      record.errors.add :base , "This person is Evil"
    end
  end
end


class Account < ApplicationRecord

  #Association
  belongs_to :supplier , touch: true

  #validation
  validates :subdomain , exclusion: {in: %w(www us ca jp),message: "%{value} is reserved."}
  validates :email , uniqueness: { case_sensitive: false }
end
