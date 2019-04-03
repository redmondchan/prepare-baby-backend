class Api::V1::LogsController < ApplicationController
  def create
    @log = Log.create(log_params)
    render json: @log
  end

  private

  def log_params
    params.require(:log).permit(:baby_id)
  end
end
