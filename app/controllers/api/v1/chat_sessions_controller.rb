class Api::V1::ChatSessionsController < ApplicationController

  def index
    chats = ChatSession.all
    transcripts = Transcript.all
    render json: {
      chats: chats,
      transcripts: transcripts
    }
  end

  def show
    chat = ChatSession.find(id: params[:id])
    render json: {
      id: chat.id,
      title: chat.title,
      transcripts: Transcript.select {|script| script.chat_session_id == chat.id}
    }
  end

  def create
    chat = ChatSession.new(title: params[:title])
    if chat.save
      ActionCable.server.broadcast 'chat_channel', {
        id: chat.id,
        title: chat.title
      }
    end
    render json: {
      message: "great!"
    }
  end

  def destroy
    chat = ChatSession.find(params[:id])
    chat.destroy()
  end
end
