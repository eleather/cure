class UserSupplementsController < ApplicationController
  # GET /user_supplements
  # GET /user_supplements.json
  def index
    @user_supplements = UserSupplement.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_supplements }
    end
  end

  # GET /user_supplements/1
  # GET /user_supplements/1.json
  def show
    @user_supplement = UserSupplement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_supplement }
    end
  end

  # GET /user_supplements/new
  # GET /user_supplements/new.json
  def new
    @user_supplement = UserSupplement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_supplement }
    end
  end

  # GET /user_supplements/1/edit
  def edit
    @user_supplement = UserSupplement.find(params[:id])
  end

  # POST /user_supplements
  # POST /user_supplements.json
  def create
    @user_supplement = UserSupplement.new(params[:user_supplement])

    respond_to do |format|
      if @user_supplement.save
        format.html { redirect_to @user_supplement, notice: 'User supplement was successfully created.' }
        format.json { render json: @user_supplement, status: :created, location: @user_supplement }
      else
        format.html { render action: "new" }
        format.json { render json: @user_supplement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_supplements/1
  # PUT /user_supplements/1.json
  def update
    @user_supplement = UserSupplement.find(params[:id])

    respond_to do |format|
      if @user_supplement.update_attributes(params[:user_supplement])
        format.html { redirect_to @user_supplement, notice: 'User supplement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_supplement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_supplements/1
  # DELETE /user_supplements/1.json
  def destroy
    @user_supplement = UserSupplement.find(params[:id])
    @user_supplement.destroy

    respond_to do |format|
      format.html { redirect_to user_supplements_url }
      format.json { head :no_content }
    end
  end
end
