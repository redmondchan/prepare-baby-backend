class Api::V1::BabiesController < ApplicationController

  def create
    @baby = Baby.create(baby_params)
    render json: @baby
  end

  def update
    @baby = Baby.find(params[:id])
    @baby.update(baby_params)
    render json: @baby
  end

  private

  def baby_params
    params.require(:baby).permit(:name, :hp, :hungry, :poop, :happy, :feed_time, :diaper_time,
      :hungry_time, :dirty_time, :initialFeed, :initialDiaper, :feedMissed, :diaperMissed, :feed,
      :forceFeed, :diaper, :forceDiaper, :feedMoney, :diaperMoney, :birthdate)
  end

end
