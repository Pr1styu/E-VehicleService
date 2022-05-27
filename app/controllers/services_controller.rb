class ServicesController < ApplicationController
  before_action :set_service, only: %i[ show ]
  def index
    @s1 = Service.new name: 'S1', id: 1
    @s2 = Service.new name: 'S2', id: 2
    @services = [@s1, @s2]
  end

  def show
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_service
    @service = Service.new name: 'S1', id: 1
  end

  # Only allow a list of trusted parameters through.
  def service_params
    params.require(:service).permit(:name)
  end
end
