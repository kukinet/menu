class MenudeldiaController < ApplicationController
  # GET /menudeldia
  # GET /menudeldia.json
  def index
    @menudeldia = Menudeldium.all
	
	if params[:restaurante_id].nil?
		@menudeldia = Menudeldium.all
	else
		@menudeldia = Menudeldium.where(:restaurante_id => params[:restaurante_id])
	end
	
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @menudeldia }
    end
  end

  # GET /menudeldia/1
  # GET /menudeldia/1.json
  def show
    @menudeldium = Menudeldium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @menudeldium }
    end
  end

  # GET /menudeldia/new
  # GET /menudeldia/new.json
  def new
    @menudeldium = Menudeldium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @menudeldium }
    end
  end

  # GET /menudeldia/1/edit
  def edit
    @menudeldium = Menudeldium.find(params[:id])
  end

  # POST /menudeldia
  # POST /menudeldia.json
  def create
    @menudeldium = Menudeldium.new(params[:menudeldium])

    respond_to do |format|
      if @menudeldium.save
        format.html { redirect_to @menudeldium, notice: 'Menudeldium was successfully created.' }
        format.json { render json: @menudeldium, status: :created, location: @menudeldium }
      else
        format.html { render action: "new" }
        format.json { render json: @menudeldium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /menudeldia/1
  # PUT /menudeldia/1.json
  def update
    @menudeldium = Menudeldium.find(params[:id])

    respond_to do |format|
      if @menudeldium.update_attributes(params[:menudeldium])
        format.html { redirect_to @menudeldium, notice: 'Menudeldium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @menudeldium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menudeldia/1
  # DELETE /menudeldia/1.json
  def destroy
    @menudeldium = Menudeldium.find(params[:id])
    @menudeldium.destroy

    respond_to do |format|
      format.html { redirect_to menudeldia_url }
      format.json { head :no_content }
    end
  end
end
