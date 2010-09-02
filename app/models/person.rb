class Person < ActiveRecord::Base
  
  validates_presence_of :first_name, :last_name
  has_many :parent_child_relationships, :class_name => "PersonRelationship", :foreign_key => :parent_id, :dependent => :destroy 
  has_many :parents, :through => :parent_child_relationships, :source => :child
  
  has_many :child_parent_relationships, :class_name => "PersonRelationship", :foreign_key => :child_id, :dependent => :destroy
  has_many :children, :through => :child_parent_relationships, :source => :parent
  
  has_one :current_address, :class_name => "Address", :conditions => "address_type = 'current'", :dependent => :destroy

  has_many :addresses, :dependent => :destroy
  
  def full_name
    self.first_name + " " + self.last_name
  end
end
