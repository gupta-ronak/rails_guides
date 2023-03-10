class Comment < ApplicationRecord

  #Association
  belongs_to :article

  #Validation
  validates_associated :article
end

