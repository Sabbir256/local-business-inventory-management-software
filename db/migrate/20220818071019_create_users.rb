class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :role
      t.string :profile
      t.string :phone
      t.text :address
      t.string :state
      t.integer :postcode
      t.string :city

      t.timestamps
    end
  end
end
