class PetsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pet = Pet.all
  end

  def show; end

  def new
    @pet = Pet.new
  end

  def create
    # tempolary solution
    shelter = Shelter.find_or_create_by!(name: "Schronisko", address: "Ul",
      phone_number: "531 519 111")
    @pet = shelter.pets.new(pet_params)

    respond_to do |format|
      if @pet.save
        format.html { redirect_to @pet, notice: 'Pet was successfully created.' }
        format.json { render :show, status: :created, location: @pet }
      else
        format.html { render :new }
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(
      :image, :name, :sex, :birth_date, :breed, :species, :size,
      :registry_id, :age_info, :description, :children_friendly,
      :allergic_friendly, :dog_friendly, :cat_friendly, :sterilized,
      :microchipped
    )
  end
end
