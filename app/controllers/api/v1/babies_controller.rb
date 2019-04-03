class Api::V1::BabiesController < ApplicationController

  def create
    @baby = Baby.create(baby_params)
    render json: @baby
  end

  private

  def baby_params
    params.require(:baby).permit(:name, :hp, :hungry, :poop, :happy)
  end

end
