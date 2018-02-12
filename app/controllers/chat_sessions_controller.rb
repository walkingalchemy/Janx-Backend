class ChatSessionsController < ApplicationController
  def create
    chat_session = Chat_Session.new(title: params[:title])

    if Chat_Session.save
      render json: chat_session
    else
      render json: {error: 'Could not save transcript Im so sorry'}
    end

  end
end
