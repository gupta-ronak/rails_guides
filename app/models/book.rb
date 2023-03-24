class Book < ApplicationRecord

  #Scopes
  scope :out_for_print, ->{ where(out_for_print: true)}
  scope :out_for_print_and_expensive, -> { out_for_print.where("price > 500")}
  default_scope {where(out_for_print: false)}


  #Association
  belongs_to :author
end
