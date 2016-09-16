class AssessmentPlansController < ApplicationController
  before_action :set_assessment_plan, only: [:show, :edit, :update, :destroy]

  # GET /assessment_plans
  # GET /assessment_plans.json
  def index
    @assessment_plans = AssessmentPlan.all
  end

  # GET /assessment_plans/1
  # GET /assessment_plans/1.json
  def show
  end

  # GET /assessment_plans/new
  def new
    @assessment_plan = AssessmentPlan.new
  end

  # GET /assessment_plans/1/edit
  def edit
  end

  # POST /assessment_plans
  # POST /assessment_plans.json
  def create
    @assessment_plan = AssessmentPlan.new(assessment_plan_params)

    respond_to do |format|
      if @assessment_plan.save
        format.html { redirect_to @assessment_plan, notice: 'Assessment plan was successfully created.' }
        format.json { render :show, status: :created, location: @assessment_plan }
      else
        format.html { render :new }
        format.json { render json: @assessment_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assessment_plans/1
  # PATCH/PUT /assessment_plans/1.json
  def update
    respond_to do |format|
      if @assessment_plan.update(assessment_plan_params)
        format.html { redirect_to @assessment_plan, notice: 'Assessment plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @assessment_plan }
      else
        format.html { render :edit }
        format.json { render json: @assessment_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assessment_plans/1
  # DELETE /assessment_plans/1.json
  def destroy
    @assessment_plan.destroy
    respond_to do |format|
      format.html { redirect_to assessment_plans_url, notice: 'Assessment plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assessment_plan
      @assessment_plan = AssessmentPlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assessment_plan_params
      params.require(:assessment_plan).permit(:name, :year_id, :assessment_unit_id)
    end
end
