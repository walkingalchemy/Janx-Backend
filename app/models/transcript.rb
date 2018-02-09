class Transcript < ApplicationRecord
  belongs_to :chat_session
  belongs_to :user 
end
