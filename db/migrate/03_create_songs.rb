class CreateSongs < ActiveRecord::Migration[4.2]
    belongs_to :artists
    belongs_to :genres

    def change
        create_table :songs do | t |
            t.string :name
            t.integer :artist_id
            t.integer :genre_id
        end
    end
end
