module Accessible
  extend ActiveSupport::Concern
  included do
    before_action :check_user
  end

  protected
  def check_user
    if current_shelter
      flash.clear
      redirect_to(shelter_pets_path(current_shelter)) && return
    elsif current_user
      flash.clear
      redirect_to(pets_path) && return
    end
  end
end
