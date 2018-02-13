class Api::V1::UsersController < ApplicationController

  def create
    user = User.find_by(username: params[:username])


    if user
      render json: user
    else
      user = User.new(username: params[:username], password_digest: params[:password], bio: params[:bio])
      if user.save
        render json: user
      else
        render json: {error: 'user not created'}
      end
    end
  end

  def index
    render json: {hello: 'hi'}
  end
end
