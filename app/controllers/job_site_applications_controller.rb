class JobSiteApplicationsController < ApplicationController
  before_action :set_job_site_application, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_admin!, except: [:index, :edit, :destroy]

  # GET /job_site_applications
  # GET /job_site_applications.json
  def index
    @job_site_applications = JobSiteApplication.all
  end

  # GET /job_site_applications/1
  # GET /job_site_applications/1.json
  def show
  end

  # GET /job_site_applications/new
  def new
    @job_site_application = JobSiteApplication.new
  end

  # GET /job_site_applications/1/edit
  def edit
  end

  # POST /job_site_applications
  # POST /job_site_applications.json
  def create
    @job_site_application = JobSiteApplication.new(job_site_application_params)

    respond_to do |format|
      if @job_site_application.save
        format.html { redirect_to job_sites_path, notice: "Succesfully Applied to
        #{@job_site_application.business.name}" }
        format.json { render action: 'show', status: :created, location: @job_site_application }
      else
        format.html { render action: 'new' }
        format.json { render json: @job_site_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_site_applications/1
  # PATCH/PUT /job_site_applications/1.json
  def update
    respond_to do |format|
      if @job_site_application.update(job_site_application_params)
        format.html { redirect_to @job_site_application, notice: 'Job site application was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @job_site_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_site_applications/1
  # DELETE /job_site_applications/1.json
  def destroy
    @job_site_application.destroy
    respond_to do |format|
      format.html { redirect_to job_site_applications_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_site_application
      @job_site_application = JobSiteApplication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_site_application_params
      params.require(:job_site_application).permit(:business_id, :school_id, :first_name, :last_name)
    end
end
