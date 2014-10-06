class SchoolBusinessesController < ApplicationController
  before_action :set_school_business, only: [:show, :edit, :update, :destroy]

  # GET /school_businesses
  # GET /school_businesses.json
  def index
    @school_businesses = SchoolBusiness.all
  end

  # GET /school_businesses/1
  # GET /school_businesses/1.json
  def show
  end

  # GET /school_businesses/new
  def new
    @school_business = SchoolBusiness.new
  end

  # GET /school_businesses/1/edit
  def edit
  end

  # POST /school_businesses
  # POST /school_businesses.json
  def create
    @school_business = SchoolBusiness.new(school_business_params)

    respond_to do |format|
      if @school_business.save
        format.html { redirect_to @school_business.school, notice: 'School business was successfully created.' }
        format.json { render action: 'show', status: :created, location: @school_business }
      else
        format.html { render action: 'new' }
        format.json { render json: @school_business.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /school_businesses/1
  # PATCH/PUT /school_businesses/1.json
  def update
    respond_to do |format|
      if @school_business.update(school_business_params)
        format.html { redirect_to @school_business, notice: 'School business was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @school_business.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /school_businesses/1
  # DELETE /school_businesses/1.json
  def destroy
    @school_business.destroy
    respond_to do |format|
      format.html { redirect_to school_businesses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school_business
      @school_business = SchoolBusiness.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def school_business_params
      params.require(:school_business).permit(:school_id, :business_id)
    end
end
