class Neighbourhood < ApplicationRecord
  validates :name, presence: true
  has_many :parks
  has_many :businesses
  has_and_belongs_to_many :contractors
end
