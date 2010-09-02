class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.string :address1
      t.string :address2
      t.string :city
      t.string :zipcode
      t.integer :person_id, :null => false
      t.string :address_type
      t.string :country

      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
  end
end
