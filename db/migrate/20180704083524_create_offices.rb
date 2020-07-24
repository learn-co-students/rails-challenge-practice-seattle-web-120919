class CreateOffices < ActiveRecord::Migration[5.1]
  def change
    create_table :offices do |t|
      t.string :building
      t.integer :building_id
      t.string :company
      t.integer :company_id
      t.integer :floor

      t.timestamps
    end
  end
end
