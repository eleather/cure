class SupplementGroupsController < ApplicationController
  # GET /supplement_groups
  # GET /supplement_groups.json
  def index
    @supplement_groups = SupplementGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @supplement_groups }
    end
  end

  # GET /supplement_groups/1
  # GET /supplement_groups/1.json
  def show
    @supplement_group = SupplementGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @supplement_group }
    end
  end

  # GET /supplement_groups/new
  # GET /supplement_groups/new.json
  def new
    @supplement_group = SupplementGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @supplement_group }
    end
  end

  # GET /supplement_groups/1/edit
  def edit
    @supplement_group = SupplementGroup.find(params[:id])
  end

  # POST /supplement_groups
  # POST /supplement_groups.json
  def create
    @supplement_group = SupplementGroup.new(params[:supplement_group])

    respond_to do |format|
      if @supplement_group.save
        format.html { redirect_to @supplement_group, notice: 'Supplement group was successfully created.' }
        format.json { render json: @supplement_group, status: :created, location: @supplement_group }
      else
        format.html { render action: "new" }
        format.json { render json: @supplement_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /supplement_groups/1
  # PUT /supplement_groups/1.json
  def update
    @supplement_group = SupplementGroup.find(params[:id])

    respond_to do |format|
      if @supplement_group.update_attributes(params[:supplement_group])
        format.html { redirect_to @supplement_group, notice: 'Supplement group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @supplement_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supplement_groups/1
  # DELETE /supplement_groups/1.json
  def destroy
    @supplement_group = SupplementGroup.find(params[:id])
    @supplement_group.destroy

    respond_to do |format|
      format.html { redirect_to supplement_groups_url }
      format.json { head :no_content }
    end
  end
end
