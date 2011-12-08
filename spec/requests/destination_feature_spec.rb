require 'spec_helper'

describe "Destination" do
  
  it { should have_valid(:title).when('The destination', 'Nepal tourism', '2011 year') }
  it { should_not have_valid(:title).when('""', '', 'Dest') }
 # it "Listing the destinations" do
 #   Factory(:destination, :description =>"New Destination") 
 #   visit destinations_path
 #   page.should have_content("New Destination")
 # 
 # end     
 # it "Displaying a destinations show page" do
 #   destination = Factory(:destination, :description =>"New Destination") 
 #   visit destination_path(destination.id)
 #   page.should have_content("New Destination")
 # 
 # end                               
 # 
 # it "Displaying a destinations show page test", :js => true do
 #   destination = Factory(:destination, :description =>"New Destination") 
 #   visit destination_path(destination.id)
 #   page.click_link("test js")
 #   page.should have_content "js works"
 # 
 # end                                            

end