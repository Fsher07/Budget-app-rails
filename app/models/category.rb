class Category < ApplicationRecord
  belongs_to :user
  has_many :operations, dependent: :destroy

  validates :name, :icon, presence: true, length: { maximum: 255 }

  def total_amount
    total = 0
    operations.each do |operation|
      total += operation.amount
    end
    total
  end
end
