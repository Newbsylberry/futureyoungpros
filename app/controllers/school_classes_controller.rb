class SchoolClassesController < ApplicationController
  before_action :set_school_class, only: [:show, :edit, :update, :destroy]

  # GET /school_classes
  # GET /school_classes.json
  def index
    @school_classes = SchoolClass.all
  end

  # GET /school_classes/1
  # GET /school_classes/1.json
  def show
    respond_to do |format|
      format.html
      format.pdf do
        pdf = SchoolClassPdf.new(@school_class)
        send_data pdf.render, filename: "brief_#{@school_class.contact_last_name}",
                  type: "application/pdf",
                  disposition: "inline"
      end
    end
  end

  # GET /school_classes/new
  def new
    @school_class = SchoolClass.new
  end

  # GET /school_classes/1/edit
  def edit
  end

  # POST /school_classes
  # POST /school_classes.json
  def create
    @school_class = SchoolClass.new(school_class_params)

    respond_to do |format|
      if @school_class.save
        create_job_site_applications(@school_class)
        SchoolClassMailer.class_registration_email(@school_class).deliver
        format.html { redirect_to @school_class, notice: 'School class was successfully created.' }
        format.json { render action: 'show', status: :created, location: @school_class }
      else
        format.html { render action: 'new' }
        format.json { render json: @school_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /school_classes/1
  # PATCH/PUT /school_classes/1.json
  def update
    respond_to do |format|
      if @school_class.update(school_class_params)
        format.html { redirect_to @school_class, notice: 'School class was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @school_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /school_classes/1
  # DELETE /school_classes/1.json
  def destroy
    @school_class.destroy
    respond_to do |format|
      format.html { redirect_to school_classes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school_class
      @school_class = SchoolClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def school_class_params
      params.require(:school_class).permit(:school_id, :size, :business_id, :contact_email,
                                           :contact_first_name, :contact_last_name)
    end

    def create_job_site_applications(school_class)
      @school_class = school_class
      i = 0
      loop do
        @job_site_application = JobSiteApplication.new
        @job_site_application.school_class_id = @school_class.id
        @job_site_application.save
        puts i.to_s
        i += 1
        break if i >= @school_class.size
      end
    end


end
