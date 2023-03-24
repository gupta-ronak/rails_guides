class Order < ApplicationRecord

  #enum
  enum :status, [:shipped, :being_packaged, :complete, :cancelled]

  #Scopes
  scope :created_before, ->(time) { where("created_at < ?" , time) if time.present?}

  #validation
  validates :card_number , presence: true , if: :paid_with_card?

  #CallBack
  before_save :normalize_card_number , if: Proc.new { |order| order.paid_with_card? }

  #methods
  def paid_with_card?
    payment_type == "card"
  end

end
