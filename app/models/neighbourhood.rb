class Neighbourhood < ApplicationRecord
  validates :name, presence: true
  has_many :parks
  has_and_belongs_to_many :contractors
end
