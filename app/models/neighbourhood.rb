class Neighbourhood < ApplicationRecord
  validates :name, presence: true
  has_many :parks
end
