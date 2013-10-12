class MousController < ApplicationController
  before_action :set_mou, only: [:show, :edit, :update, :destroy]

  # GET /mous
  # GET /mous.json
  def index
    @mous = Mou.all
  end

  # GET /mous/1
  # GET /mous/1.json
  def show
  end

  # GET /mous/new
  def new
    @mou = Mou.new
  end

  # GET /mous/1/edit
  def edit
  end

  # POST /mous
  # POST /mous.json
  def create
    @mou = Mou.new(mou_params)
    @mou.user_id = current_user.id

    respond_to do |format|
      if @mou.save
        format.html { redirect_to @mou, notice: 'Mou was successfully created.' }
        format.json { render action: 'show', status: :created, location: @mou }
      else
        format.html { render action: 'new' }
        format.json { render json: @mou.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mous/1
  # PATCH/PUT /mous/1.json
  def update
    respond_to do |format|
      if @mou.update(mou_params)
        format.html { redirect_to @mou, notice: 'Mou was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mou.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mous/1
  # DELETE /mous/1.json
  def destroy
    @mou.destroy
    respond_to do |format|
      format.html { redirect_to mous_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mou
      @mou = Mou.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mou_params
      params.require(:mou).permit(:firstName, :lastName, :phone, :jobTitle, :duration, :availability, :considerations)
    end
end
