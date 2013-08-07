class SupplementsController < ApplicationController
  # GET /supplements
  # GET /supplements.json
  def index
    @supplements = Supplement.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @supplements }
    end
  end

  # GET /supplements/1
  # GET /supplements/1.json
  def show
    @supplement = Supplement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @supplement }
    end
  end

  # GET /supplements/new
  # GET /supplements/new.json
  def new
    @supplement = Supplement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @supplement }
    end
  end

  # GET /supplements/1/edit
  def edit
    @supplement = Supplement.find(params[:id])
  end

  # POST /supplements
  # POST /supplements.json
  def create
    @supplement = Supplement.new(params[:supplement])

    respond_to do |format|
      if @supplement.save
        format.html { redirect_to @supplement, notice: 'Supplement was successfully created.' }
        format.json { render json: @supplement, status: :created, location: @supplement }
      else
        format.html { render action: "new" }
        format.json { render json: @supplement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /supplements/1
  # PUT /supplements/1.json
  def update
    @supplement = Supplement.find(params[:id])

    respond_to do |format|
      if @supplement.update_attributes(params[:supplement])
        format.html { redirect_to @supplement, notice: 'Supplement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @supplement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supplements/1
  # DELETE /supplements/1.json
  def destroy
    @supplement = Supplement.find(params[:id])
    @supplement.destroy

    respond_to do |format|
      format.html { redirect_to supplements_url }
      format.json { head :no_content }
    end
  end
end
