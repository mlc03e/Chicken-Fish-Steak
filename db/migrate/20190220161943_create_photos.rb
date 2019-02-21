class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :image
      t.integer :imageable_id
      t.string :imageable_type
      t.references :imageable, polymorphic: true, index:true
      t.timestamps
    end
  end
end
