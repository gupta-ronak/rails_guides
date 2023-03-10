class Coffee < ApplicationRecord
  validates :size , inclusion: { in: %w(small medium large), message: "%{value} is not valid size"} , allow_nil: true
end
