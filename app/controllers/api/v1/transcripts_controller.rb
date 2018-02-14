class Api::V1::TranscriptsController < ApplicationController

  def create
    transcript = Transcript.new(content: params[:content], chat_session_id: params[:chat_id], user_id: params[:user][:id])
    chat_session = ChatSession.find(params[:chat_id])
    user = User.find(params[:user][:id])
    if transcript.save
      transcript_data = {id: transcript.id, chat_session_id: transcript.chat_session_id, user: {username: user.username, id: user.id}, content: transcript.content, created_at: transcript.created_at}
      TranscriptsChannel.broadcast_to chat_session, transcript_data

      render json: transcript_data
    else
      render json: {error: 'Could not save transcript Im so sorry'}
    end

  end

end
