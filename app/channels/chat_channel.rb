class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "my_chat"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
