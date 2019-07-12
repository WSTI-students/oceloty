class Pet < ApplicationRecord
  BOOLEAN_OPTION = { 'Tak' => true, 'Nie' => false, 'Nie wiadomo' => nil }.freeze
  CLASS_pets_sex = ['samiec', 'samica']
  CLASS_pets_size = ['mały', 'średni', 'duzy']
  validates :name, :sex, :breed, :species, presence: true
  belongs_to :shelter
end
