class WithinBiddingRange < ActiveModel::Validator
  def validate(record)
    if record.ending < 7.days.from_now
     record.errors[:base] << "Biddings last at least 7 days"
    end
  end
end

class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :title, presence: true, length: { maximum: 60 }
  validates :description, presence: true, length: { maximum: 1000 }
  validates :min_price, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
  validates :bid_amount, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
  validates :current_bid, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
  validates_with WithinBiddingRange, field: [:ending]
end
