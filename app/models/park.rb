class Park < ApplicationRecord
  validates :name, presence: true
  belongs_to :neighbourhood
end
