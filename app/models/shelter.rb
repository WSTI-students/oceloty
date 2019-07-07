class Shelter < ApplicationRecord
  validates :name, :adress, presence: true

  validates :phone_number, format: { with: /(\+48\s)?\d{3}\s?\d{3}\s?\d{3}/,
                                     message: "Zły format numeru telefonu!!!" }

  
end
