class Api::V1::UsersController < ApplicationController

  def create
    user = User.new(username: params[:username], password_digest: params[:password], bio: params[:bio])

    if user.save
      render json: user
    else
      render json: {error: 'Could not save user Im so sorry'}
    end
  end

  def index
    render json: {hello: 'hi'}
  end
end
