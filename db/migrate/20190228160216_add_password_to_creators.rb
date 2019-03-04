class AddPasswordToCreators < ActiveRecord::Migration[5.2]
  def change
    add_column :creators, :password, :string
  end
end
