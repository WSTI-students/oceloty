class Pet < ApplicationRecord
  BOOLEAN_OPTION = { 'Tak' => true, 'Nie' => false, 'Nie wiadomo' => nil }.freeze
  enum sex: %w[samiec samica].freeze
  enum size: %w[mały średni duży].freeze
  enum species: %w[kot pies].freeze
  validates :name, :sex, :breed, :species, presence: true
  belongs_to :shelter
end
