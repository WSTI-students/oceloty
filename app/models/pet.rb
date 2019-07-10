class Pet < ApplicationRecord
  validates :name, :sex, :breed, :type, presence: true
end
