class Business < ApplicationRecord
  validates :name, presence: true
  belongs_to :neighbourhood
  has_and_belongs_to_many :contractors
end
