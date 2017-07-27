class CreateMashupVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :mashup_videos do |t|
      t.references :mashup, foreign_key: true
      t.references :video, foreign_key: true

      t.timestamps
    end
  end
end
