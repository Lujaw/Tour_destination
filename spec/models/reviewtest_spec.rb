require 'spec_helper'

describe Reviewtest do
  it "review should not save with blank content" do 
     review = Review.new(:content => "hello.. Good morning sprout")
     review.save
     review.should_not be_valid?  
   end
end
