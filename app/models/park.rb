class Park < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  belongs_to :neighbourhood
end
