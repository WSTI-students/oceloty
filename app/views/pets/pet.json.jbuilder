json.extract! pet, :id, :name, :sex, :birth_date, :children_friendly, :allergic_friendly, :dog_friendly, :sterilized, :microchipped, :created_at, :updated_at
json.url pet_url(pet, format: :json)
