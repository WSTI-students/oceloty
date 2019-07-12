class Shelter < ApplicationRecord
  validates :name, :address, presence: true
  validates :phone_number, format: { with: /\A(\+\d{1,3}\s)?\d{3}\s?\d{3}\s?\d{3}\z/,
                                     message: "Zły format numeru telefonu :(" }
  has_many :pets, dependent: :destroy
end
