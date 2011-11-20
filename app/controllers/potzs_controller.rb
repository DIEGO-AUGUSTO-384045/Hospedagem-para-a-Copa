class PotzsController < ApplicationController
  # GET /potzs
  # GET /potzs.json
  def index
    @potzs = Potz.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @potzs }
    end
  end

  # GET /potzs/1
  # GET /potzs/1.json
  def show
    @potz = Potz.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @potz }
    end
  end

  # GET /potzs/new
  # GET /potzs/new.json
  def new
    @potz = Potz.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @potz }
    end
  end

  # GET /potzs/1/edit
  def edit
    @potz = Potz.find(params[:id])
  end

  # POST /potzs
  # POST /potzs.json
  def create
    @potz = Potz.new(params[:potz])

    respond_to do |format|
      if @potz.save
        format.html { redirect_to @potz, notice: 'Potz was successfully created.' }
        format.json { render json: @potz, status: :created, location: @potz }
      else
        format.html { render action: "new" }
        format.json { render json: @potz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /potzs/1
  # PUT /potzs/1.json
  def update
    @potz = Potz.find(params[:id])

    respond_to do |format|
      if @potz.update_attributes(params[:potz])
        format.html { redirect_to @potz, notice: 'Potz was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @potz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /potzs/1
  # DELETE /potzs/1.json
  def destroy
    @potz = Potz.find(params[:id])
    @potz.destroy

    respond_to do |format|
      format.html { redirect_to potzs_url }
      format.json { head :ok }
    end
  end
end
