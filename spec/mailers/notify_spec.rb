require "spec_helper"

describe Notify do
  describe "should notify the destination creator when a new review" do 
    before do
      @user = Factory(:user, :email => "hello@sprout.com")
      #user_dest = Factory(:user, :email =>"destination@gmail.com")
      @destination = Factory.build(:destination, :title =>"My destination",:user => user_dest)
      destination.user = user_dest
    end
    it "should send an email to hello@gmail.com" do 
      debugger
      review = Factory(:review, :content => "Nice destination place...", :user =>user, :destination =>@destination)
      review.save!
      last_email.to.should include("destination@gmail.com")
      last_email.subject.should eql("New review added")
      last_email.body.encoded.should match("A new review has been added to your destination")
      last_email.body.encoded.should match("A new review has been added to your destination")
    end
  end
end
