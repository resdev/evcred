class EvclientsController < ApplicationController
  # GET /evclients
  # GET /evclients.json
  def index
    @evclients = Evclient.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @evclients }
    end
  end

  # GET /evclients/1
  # GET /evclients/1.json
  def show
    @evclient = Evclient.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @evclient }
    end
  end

  # GET /evclients/new
  # GET /evclients/new.json
  def new
    @evclient = Evclient.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @evclient }
    end
  end

  # GET /evclients/1/edit
  def edit
    @evclient = Evclient.find(params[:id])
  end

  # POST /evclients
  # POST /evclients.json
  def create
    @evclient = Evclient.new(params[:evclient])

    respond_to do |format|
      if @evclient.save
        format.html { redirect_to @evclient, notice: 'Evclient was successfully created.' }
        format.json { render json: @evclient, status: :created, location: @evclient }
      else
        format.html { render action: "new" }
        format.json { render json: @evclient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /evclients/1
  # PUT /evclients/1.json
  def update
    @evclient = Evclient.find(params[:id])

    respond_to do |format|
      if @evclient.update_attributes(params[:evclient])
        format.html { redirect_to @evclient, notice: 'Evclient was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @evclient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evclients/1
  # DELETE /evclients/1.json
  def destroy
    @evclient = Evclient.find(params[:id])
    @evclient.destroy

    respond_to do |format|
      format.html { redirect_to evclients_url }
      format.json { head :ok }
    end
  end
end
