class TranscriptsController < ApplicationController

  def create
    #may need to edit! feed id is hardcoded for now
    transcipt = Transcript.new(content: params[:content], feed_id: 1)

    if transcipt.save
      ActionCable.server.broadcast('my_chat', transcript)
      render json: transcipt
    else
      render json: {error: 'Could not save transcript Im so sorry'}
    end 

  end

end
