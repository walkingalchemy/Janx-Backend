class CreateTranscripts < ActiveRecord::Migration[5.1]
  def change
    create_table :transcripts do |t|
      t.text :content
      t.integer :user_id
      t.integer :chat_session_id

      t.timestamps
    end
  end
end
