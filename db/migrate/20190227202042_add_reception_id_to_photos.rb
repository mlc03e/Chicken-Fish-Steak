class AddReceptionIdToPhotos < ActiveRecord::Migration[5.2]
  def change
    add_column :photos, :reception_id, :integer
  end
end
