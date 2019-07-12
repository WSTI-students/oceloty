class Pet < ApplicationRecord
  validates :name, :sex, :breed, :species, presence: true
  belongs_to :shelter
end
