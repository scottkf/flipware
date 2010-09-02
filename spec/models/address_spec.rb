require 'spec_helper'

describe Address do
  
  before(:each) do
    @p1 = Person.new(:first_name => "Jim", :last_name => "Tesoriere")
    @a1 = Address.new(:address1 => "some test street", :city => "fake", :zipcode => "34121", :address_type => "nonsense", :country => "US")
    @a2 = Address.new(:address1 => "some test street", :city => "fake", :zipcode => "34121", :address_type => "current", :country => "US")
    @a3 = Address.new(:address1 => "some test street", :city => "fake", :zipcode => "3412", :address_type => "nonsense", :country => "US")
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
  
  context "#address types" do
    it "should update the address type if it's a new record before saving" do
      #@p1.@a2.save
      pending
    end
  end

end
