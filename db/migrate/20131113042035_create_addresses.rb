class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :country_id
      t.integer :state_id

      t.timestamps
    end
  end
end
