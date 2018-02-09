class ChatSession < ApplicationRecord
  has_many :transcripts
  has_many :users, through: :transcripts
end
