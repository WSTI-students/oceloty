class Shelter < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, :address, presence: true
  validates :phone_number, format: { with: /\A(\+\d{1,3}\s)?\d{3}\s?\d{3}\s?\d{3}\z/,
                                     message: "Zły format numeru telefonu :(" }
  has_many :pets, dependent: :destroy
end
