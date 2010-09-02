class Address < ActiveRecord::Base
  belongs_to :person
  
  
  after_save :update_address_type
  
  validates_presence_of :address1, :city, :zipcode, :address_type, :country
  # this will to change at some point to be international
  validates_length_of :zipcode, :is => 5
  validate :validate_address_type
  
  
  
  def ==(address)
    self_attrs = self.attributes
    other_attrs = address.respond_to?(:attributes) ? address.attributes : {}
    [self_attrs, other_attrs].each { |attrs| attrs.except!("address_type", "id", "created_at", "updated_at", "order_id") }
    self_attrs == other_attrs
  end
  
  def clone
    Address.new(self.attributes.except("id", "updated_at", "created_at", "address_type"))
  end


  protected
  
  def update_address_type
    Address.update_all "address_type = 'past'", :person_id => self.person_id if self.new_record?
  end
  
  def validate_address_type
    return if address_type.blank?
    errors.add(:address_type, :invalid) if !["current", "past"].include?(address_type)
  end

end
