class ChatSessionsController < ApplicationController

  def index
    chats = ChatSession.all
    render json: @chats
  end

  def show
    chat = ChatSession.find(id: params[:id])
    render json: {
      id: chat.id,
      title: chat.title
    }
  end

  def create
    chat = ChatSession.new(title: params[:title])
    if chat.save
      ActionCable.server.broadcast 'chat_sessions_channel', {
        id: chat.id,
        title: chat.title
      }
    end
    render json: {
      message: "great!"
    }
  end

  def destroy


  end
end
