class CreateSongs < ActiveRecord::Migration[7.1]
  def change
    create_table :songs do |t|
      t.string :name, null: false
      t.string :spotify_url
      t.string :preview_url
      t.integer :duration_ms, null: false
      t.boolean :explicit
      t.string :spotify_id
      t.references :album, foreign_key: true

      t.timestamps
    end
  end
end
