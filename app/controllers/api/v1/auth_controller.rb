class Api::V1::AuthController < ApplicationController
  skip_before_action :authorized, only: [:create]


  def create
    @user = User.find_by(username: user_login_params[:username])
    if @user && @user.authenticate(user_login_params[:password])
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
      if feedDifference >= 1
        feedMultiply = feedDifference/1.floor
        newHp = @baby.hp - (feedMultiply * 10)
        if newHp < 0
          @baby.hp = 0
          @baby.save
        else
          @baby.hp = newHp
          @baby.save
        end
      end

      if diaperDifference >= 1
        diaperMultiply = diaperDifference/1.floor
        newHp = @baby.hp - (feedMultiply * 10)
        if newHp < 0
          @baby.hp = 0
          @baby.save
        else
          @baby.hp = newHp
          @baby.save
        end
      end 
      token = encode_token({user_id: @user.id})
      render json: { user: UserSerializer.new(@user), jwt: token, baby: @baby }, status: :accepted
    else
      render json: { message: 'Invalid username or password' }, status: :unauthorized
    end
  end


  private

  def user_login_params
    params.require(:user).permit(:username, :password)
  end

end
