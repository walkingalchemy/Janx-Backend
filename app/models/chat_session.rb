class ChatSession < ApplicationRecord
  has_many :transcripts, dependent: :destroy
  has_many :users, through: :transcripts
end
