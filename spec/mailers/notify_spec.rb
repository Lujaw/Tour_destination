require "spec_helper"

describe Notify do
  describe "should notify the destination creator when a new review" do 
    before do
      user = Factory(:user, :email => "hello@sprout.com")
      destination = Factory(:destination, :title =>"My destination")
    end
    it "should send an email to hello@gmail.com" do 
      review = Factory(:review, :content => "Nice destination place...")
    end
  end
end
