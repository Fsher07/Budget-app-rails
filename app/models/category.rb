class Category < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :operations, dependent: :destroy

  validates :name, :icon, presence: true, length: { maximum: 255 }
end