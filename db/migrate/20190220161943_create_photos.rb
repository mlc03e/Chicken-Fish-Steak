class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :image
      t.integer :guest_id
      t.timestamps
    end
  end
end
