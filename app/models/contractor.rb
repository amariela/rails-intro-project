class Contractor < ApplicationRecord
  validates :full_name, presence: true
  validates :full_name, uniqueness: true
  has_and_belongs_to_many :neighbourhoods
  has_and_belongs_to_many :businesses
end
