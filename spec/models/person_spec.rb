require 'spec_helper'

describe Person do

  before(:each) do
    @p1 = Person.new(:first_name => "Jim", :last_name => "Tesoriere")
    @p2 = Person.new(:first_name => "John", :last_name => "Levowitz")
    @p3 = Person.new(:first_name => "Steve", :last_name => "Schwart")
    @p4 = Person.new()
  end
  
  context "#valid" do
    it "should be valid" do
      @p1.valid?.should be true
    end
    it "should not be valid without a first and last name" do
      @p4.valid?.should be false
    end    
  end
  
  context "#parents" do
    context "add a parent" do
      it "should have two parents" do
        @p1.parents = [@p2, @p3]
        @p1.parents.should have(2).items
      end
      it "should have the correct parents" do
        @p1.parents = [@p2, @p3]
        @p1.parents.first.id.should == @p2.id
        @p1.parents.second.id.should == @p3.id
      end      
    end
    
    context "remove a parent" do
      it "should no longer have the parent after removal" do
        pending
      end
    end
    
  end
  
  context "#children" do
    it "should have the correct children" do
      pending
    end
    
  end


end
