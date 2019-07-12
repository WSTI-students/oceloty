class Pet < ApplicationRecord
  validates :name, :sex, :breed, :type, presence: true
  belongs_to :shelter
end
