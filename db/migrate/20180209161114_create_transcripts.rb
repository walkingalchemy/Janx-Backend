class CreateTranscripts < ActiveRecord::Migration[5.1]
  def change
    create_table :transcripts do |t|
      t.text :content

      t.timestamps
    end
  end
end
