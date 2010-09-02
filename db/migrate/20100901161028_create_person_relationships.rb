class CreatePersonRelationships < ActiveRecord::Migration
  def self.up
    create_table :person_relationships do |t|
      t.integer :parent_id, :null => false
      t.integer :child_id, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :person_relationships
  end
end
