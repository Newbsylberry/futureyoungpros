class SubcategoriesController < ApplicationController
  before_action :set_subcategory, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!
  # GET /subcategories
  # GET /subcategories.json
  def index
    @category = Category.find(params[:category_id])
    @subcategories = @category.subcategories
  end

  # GET /subcategories/1
  # GET /subcategories/1.json
  def show
    @category = Category.find(params[:category_id])
  end

  # GET /subcategories/new
  def new
    @category = Category.find(params[:category_id])
    @subcategory = Subcategory.new
  end

  # GET /subcategories/1/edit
  def edit
    @category = Category.find(params[:category_id])
  end

  # POST /subcategories
  # POST /subcategories.json
  def create
    @category = Category.find(params[:category_id])
    @subcategory = Subcategory.new(subcategory_params)
    
    respond_to do |format|
      if @subcategory.save
        format.html { redirect_to category_subcategories_path(@category), notice: 'Subcategory was successfully created.' }
        format.json { render action: 'show', status: :created, location: @subcategory }
      else
        format.html { render action: 'new' }
        format.json { render json: @subcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subcategories/1
  # PATCH/PUT /subcategories/1.json
  def update
    @category = Category.find(params[:category_id])
    respond_to do |format|
      if @subcategory.update(subcategory_params)
        format.html { redirect_to category_subcategory_path(@category, @subcategory), notice: 'Subcategory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @subcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subcategories/1
  # DELETE /subcategories/1.json
  def destroy
    @category = Category.find(params[:category_id])
    @subcategory.destroy
    respond_to do |format|
      format.html { redirect_to category_subcategories_path(@category) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subcategory
      @subcategory = Subcategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subcategory_params
      params.require(:subcategory).permit(:category_id, :name, :description)
    end
end
