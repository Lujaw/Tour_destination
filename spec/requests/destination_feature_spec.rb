require 'spec_helper'

feature "Destination" do
 scenario "Listing the destinations" do
   Factory(:destination, :description =>"New Destination") 
   visit destinations_path
   page.should have_content("New Destination")

 end     
 scenario "Displaying a destinations show page" do
   destination = Factory(:destination, :description =>"New Destination") 
   visit destination_path(destination.id)
   page.should have_content("New Destination")

 end                               

 scenario "Displaying a destinations show page test", :js => true do
   destination = Factory(:destination, :description =>"New Destination") 
   visit destination_path(destination.id)
   page.click_link("test js")
   page.should have_content "js works"

 end                                            

end