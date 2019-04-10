class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def profile
    @baby = Baby.find_by(user_id: @user.id)
    render json: { user: UserSerializer.new(current_user), baby: @baby }, status: :accepted
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @baby = Baby.create(name: @user.baby_name, user_id: @user.id, feed_time: @user.javascript_time, hungry_time: @user.javascript_time, diaper_time: @user.javascript_time, dirty_time: @user.javascript_time)
      @token = encode_token(user_id: @user.id)
      render json: {user: UserSerializer.new(@user), jwt: @token, baby: @baby}, status: :created
    else
      render json: {error: 'failed to create user'}, status: :not_acceptable
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :javascript_time, :baby_name)
  end

end
