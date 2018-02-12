class TranscriptsChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    chat_session = ChatSession.find(params[:transcripts])
    stream_for chat_session
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
