class Api::V1::LogsController < ApplicationController
  skip_before_action :authorized, only: [:show]
  def create
    @log = Log.create(log_params)
    render json: @log
  end

  def index
    @logs = Log.all
    render json: @logs
  end

  # def show
  #   @logs = Log.all
  #   @newLogs = @logs.select{ |log| log.baby_id == (params[:id])}
  #   render json: @newLogs
  # end

  private

  def log_params
    params.require(:log).permit(:id, :baby_id, :task)
  end
end
