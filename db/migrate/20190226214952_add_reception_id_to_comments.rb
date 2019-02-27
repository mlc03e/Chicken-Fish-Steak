class AddReceptionIdToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :reception_id, :integer
  end
end
