require 'spec_helper'

describe Address do
  
  before(:each) do
    @p1 = Person.new(:first_name => "Jim", :last_name => "Tesoriere")
    @a1 = Address.new(:address1 => "some test street", :city => "fake", :zipcode => "34121", :address_type => "nonsense", :country => "US")
    @a2 = Address.new(:address1 => "some test street", :city => "fake", :zipcode => "34121", :address_type => "current", :country => "US")
    @a3 = Address.new(:address1 => "some test street", :city => "fake", :zipcode => "3412", :address_type => "nonsense", :country => "US")
    @a4 = Address.new(:address1 => "street 2", :city => "fake", :zipcode => "34121", :address_type => "current", :country => "US")
  end
  

  context "#valid" do
    it "should be valid" do
      @a2.valid?
    end
    it "should not be valid because of a bad address type" do
      @a1.valid?.should be false
    end
    
    it "should not be valid because of a bad zipcode" do
      @a3.valid?.should be false
    end
  end
  
  context "#types" do
    
    before(:each) do
      @p1.save
      @p1.addresses = [@a2]
      @p1.save
      @p1.addresses += [@a4]
      @p1.save
    end
    it "should update other address_types to past upon adding a new address" do
      Address.find(@a2.id).address_type.should == "past"
      Address.find(@a4.id).address_type.should == "current"
    end
    
    it "should update other addresses_types to past upon editing an address" do
      Address.find(@a2.id).update_attributes!(:address_type => "current")
      Address.find(@a2.id).address_type.should == "current"
      Address.find(@a4.id).address_type.should == "past"
    end
  end

end
