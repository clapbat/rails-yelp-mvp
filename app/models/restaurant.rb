class Restaurant < ApplicationRecord
  CATEGORY = %w(Chinese Italian Japanese French Belgian)
  validates :name, :address, presence: true
  validates :category, inclusion: { in: CATEGORY }
  has_many :reviews, dependent: :destroy
end
