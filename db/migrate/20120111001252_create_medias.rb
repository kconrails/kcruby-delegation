class CreateMedias < ActiveRecord::Migration
  def self.up
    create_table :medias do |t|
      t.string :title
      t.string :description
      
      t.string :media_type
      t.integer :media_id

      t.timestamps
    end
    
    add_index :medias, [:media_type, :media_id]
  end

  def self.down
    remove_index :medias, [:media_type, :media_id]
    drop_table :medias
  end
end
