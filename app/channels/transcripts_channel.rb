class TranscriptsChannel < ApplicationCable::Channel
  def subscribed
    chat_session = ChatSession.find(params[:chat])
    stream_for chat_session
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
