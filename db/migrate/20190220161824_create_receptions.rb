class CreateReceptions < ActiveRecord::Migration[5.2]
  def change
    create_table :receptions do |t|
      t.string :name
      t.string :date
      t.integer :creator_id
      t.timestamps
    end
  end
end
