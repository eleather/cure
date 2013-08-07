class SupplementPlansController < ApplicationController
  # GET /supplement_plans
  # GET /supplement_plans.json
  def index
    @supplement_plans = SupplementPlan.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @supplement_plans }
    end
  end

  # GET /supplement_plans/1
  # GET /supplement_plans/1.json
  def show
    @supplement_plan = SupplementPlan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @supplement_plan }
    end
  end

  # GET /supplement_plans/new
  # GET /supplement_plans/new.json
  def new
    @supplement_plan = SupplementPlan.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @supplement_plan }
    end
  end

  # GET /supplement_plans/1/edit
  def edit
    @supplement_plan = SupplementPlan.find(params[:id])
  end

  # POST /supplement_plans
  # POST /supplement_plans.json
  def create
    @supplement_plan = SupplementPlan.new(params[:supplement_plan])

    respond_to do |format|
      if @supplement_plan.save
        format.html { redirect_to @supplement_plan, notice: 'Supplement plan was successfully created.' }
        format.json { render json: @supplement_plan, status: :created, location: @supplement_plan }
      else
        format.html { render action: "new" }
        format.json { render json: @supplement_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /supplement_plans/1
  # PUT /supplement_plans/1.json
  def update
    @supplement_plan = SupplementPlan.find(params[:id])

    respond_to do |format|
      if @supplement_plan.update_attributes(params[:supplement_plan])
        format.html { redirect_to @supplement_plan, notice: 'Supplement plan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @supplement_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supplement_plans/1
  # DELETE /supplement_plans/1.json
  def destroy
    @supplement_plan = SupplementPlan.find(params[:id])
    @supplement_plan.destroy

    respond_to do |format|
      format.html { redirect_to supplement_plans_url }
      format.json { head :no_content }
    end
  end
end
