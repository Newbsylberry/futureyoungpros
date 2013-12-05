class StudentInterestsController < ApplicationController
  before_action :set_student_interest, only: [:show, :edit, :update, :destroy]

  # GET /student_interests
  # GET /student_interests.json
  def index
    @student_interests = StudentInterest.all
  end

  # GET /student_interests/1
  # GET /student_interests/1.json
  def show
    @mous = Mou.where(category_id: @student_interest.category_id)  
    @match = Match.new
    @user = User.find(current_user)
    @matches = Match.where(student_interest_id: @student_interest.id)
  end

  # GET /student_interests/new
  def new
    @student_interest = StudentInterest.new
  end

  # GET /student_interests/1/edit
  def edit
  end

  # POST /student_interests
  # POST /student_interests.json
  def create
    @student_interest = StudentInterest.new(student_interest_params)

    respond_to do |format|
      if @student_interest.save
        format.html { redirect_to @student_interest, notice: 'Student interest was successfully created.' }
        format.json { render action: 'show', status: :created, location: @student_interest }
      else
        format.html { render action: 'new' }
        format.json { render json: @student_interest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_interests/1
  # PATCH/PUT /student_interests/1.json
  def update
    respond_to do |format|
      if @student_interest.update(student_interest_params)
        format.html { redirect_to @student_interest, notice: 'Student interest was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @student_interest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_interests/1
  # DELETE /student_interests/1.json
  def destroy
    @student_interest.destroy
    respond_to do |format|
      format.html { redirect_to student_interests_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_interest
      @student_interest = StudentInterest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_interest_params
      params.require(:student_interest).permit(:firstName, :lastName, :school_id, :category_id)
    end
end
