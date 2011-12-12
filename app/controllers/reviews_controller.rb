class ReviewsController < ApplicationController
  before_filter :find_destination
  def create  
  #  if @destination.user_id!=current_user.id
   if @destination.user != current_user
       @review = current_user.reviews.create(params[:review])
       @review.destination_id = @destination.id
      
      respond_to do |format|  
        if @review.save  
          format.html { redirect_to destination_path(@destination) }  
          format.js    
        end  
      end  
    else 
       redirect_to destinations_path
        flash[:alert] = "You can't comment at your own post"
    end
  end
  private
  def find_destination
    @destination = Destination.find(params[:destination_id])
  end
end
