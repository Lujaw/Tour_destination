

require 'spec_helper'
describe Review do
  it "should not save with blank content" do 
    destination = Factory.build(:destination, :description => "")
    destination.save
    destination.should_not be_valid   
  end
  it "should not save with blank title" do 
    destination = Factory.build(:title => "" , :description => "hhasdjhf")
    destination.save
    destination.should_not be_valid   
  end
end

