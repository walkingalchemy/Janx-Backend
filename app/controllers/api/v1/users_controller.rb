class Api::V1::UsersController < ApplicationController

  def index
    render json: {hello: 'hi'}
  end
end
