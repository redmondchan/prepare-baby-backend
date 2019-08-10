class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def profile
    @baby = Baby.find_by(user_id: @user.id)
    currentTime = Time.now
    currentSec = currentTime.to_f
    currentMin = currentSec/60
    feedTime = Time.parse(@baby.feed_time)
    feedMin = feedTime.to_f/60
    diaperTime = Time.parse(@baby.diaper_time)
    diaperMin = diaperTime.to_f/60
    feedDifference = currentMin - feedMin
    diaperDifference = currentMin - diaperMin
    if feedDifference >= 10
      feedMultiplier = feedDifference/10.floor
      @baby.hp = @baby.hp - (feedMultiper * 10)
    end 
    render json: { user: UserSerializer.new(current_user), baby: @baby }, status: :accepted
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      UserMailer.welcome_email(@user).deliver_later
      @baby = Baby.create(name: @user.baby_name, user_id: @user.id, birthdate: @user.javascript_time, feed_time: @user.javascript_time, hungry_time: @user.javascript_time, diaper_time: @user.javascript_time, dirty_time: @user.javascript_time)
      @token = encode_token(user_id: @user.id)
      render json: {user: UserSerializer.new(@user), jwt: @token, baby: @baby}, status: :created
    else
      render json: {error: 'failed to create user'}, status: :not_acceptable
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    render json: @user
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :javascript_time, :baby_name, :selffish, :selfless, :email )
  end

end
