class User < ApplicationRecord
  has_many :transcripts
  has_many :chat_sessions, through: :transcripts
end
