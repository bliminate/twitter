class Tweet < ActiveRecord::Base
  validates :post, length: { maximum: 140 }
  validates :post, presence: true
end
