class DestinationsController < ApplicationController
  # GET /destinations
  # GET /destinations.json
  def index
    @destinations = Destination.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @destinations }
    end
  end

  # GET /destinations/1
  # GET /destinations/1.json
  def show
    @destination = Destination.find(params[:id])
    @reviews = @destination.reviews

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @destination }
    end
  end

  # GET /destinations/new
  # GET /destinations/new.json
  def new
     if user_signed_in? 
      @destination = Destination.new
   
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @destination }
      end
    end
  end
  # GET /destinations/1/edit
  def edit
    @destination = Destination.find(params[:id])

    if @destination.user != current_user
      redirect_to destinations_path
      flash[:alert] = "You don't have authorization to edit this page"
    end
    # if @destination.user_id == current_user
    #       save_and_open_page
    #          else
    #          format.html {redirect_to @destination, notice: 'You have no authority to edit the content.' }
    #          end
  end

  # POST /destinations
  # POST /destinations.json
  def create
    @destination = current_user.destinations.new(params[:destination])
    respond_to do |format|
      if @destination.save
        if params[:destination][:photo].present?
          render :template =>"destinations/crop" and return
        
        else 
          format.html { redirect_to @destination, notice: 'Destination was successfully created.' }
          format.js #on { render json: @destination, status: :created, location: @destination }
        end
      else
        format.html { render action: "new" }
        format.json { render json: @destination.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /destinations/1
  # PUT /destinations/1.json
  def update
    @destination = Destination.find(params[:id])
    respond_to do |format|
      if @destination.update_attributes(params[:destination])
        if params[:destination][:photo].present?
          render :template =>"destinations/crop" and return
        
        else 
          format.html { redirect_to @destination, notice: 'Destination was successfully created.' }
          format.json { render json: @destination, status: :created, location: @destination }
        end 
        format.html { redirect_to @destination, notice: 'Destination was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @destination.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /destinations/1
  # DELETE /destinations/1.json
  def destroy
    @destination = Destination.find(params[:id])
    if @destination.user == current_user
      @destination.destroy

      respond_to do |format|
        format.html { redirect_to destinations_url }
        format.json { head :ok }
      end
    else 
      flash[:alert] = "You can't delete post of other author."
      redirect_to destinations_path
    end
  end
end
