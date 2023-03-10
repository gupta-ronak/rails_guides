class Order < ApplicationRecord

  #validation
  validates :card_number , presence: true , if: :paid_with_card?

  #CallBack
  before_save :normalize_card_number , if: Proc.new { |order| order.paid_with_card? }

  #methods
  def paid_with_card?
    payment_type == "card"
  end

end
