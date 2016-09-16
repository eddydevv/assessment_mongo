class TemplateSublayoutsController < ApplicationController
  before_action :set_template_sublayout, only: [:show, :edit, :update, :destroy]

  # GET /template_sublayouts
  # GET /template_sublayouts.json
  def index
    @template_sublayouts = TemplateSublayout.all
  end

  # GET /template_sublayouts/1
  # GET /template_sublayouts/1.json
  def show
  end

  # GET /template_sublayouts/new
  def new
    @template_sublayout = TemplateSublayout.new
  end

  # GET /template_sublayouts/1/edit
  def edit
  end

  # POST /template_sublayouts
  # POST /template_sublayouts.json
  def create
    @template_sublayout = TemplateSublayout.new(template_sublayout_params)

    respond_to do |format|
      if @template_sublayout.save
        format.html { redirect_to @template_sublayout, notice: 'Template sublayout was successfully created.' }
        format.json { render :show, status: :created, location: @template_sublayout }
      else
        format.html { render :new }
        format.json { render json: @template_sublayout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /template_sublayouts/1
  # PATCH/PUT /template_sublayouts/1.json
  def update
    respond_to do |format|
      if @template_sublayout.update(template_sublayout_params)
        format.html { redirect_to @template_sublayout, notice: 'Template sublayout was successfully updated.' }
        format.json { render :show, status: :ok, location: @template_sublayout }
      else
        format.html { render :edit }
        format.json { render json: @template_sublayout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /template_sublayouts/1
  # DELETE /template_sublayouts/1.json
  def destroy
    @template_sublayout.destroy
    respond_to do |format|
      format.html { redirect_to template_sublayouts_url, notice: 'Template sublayout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_template_sublayout
      @template_sublayout = TemplateSublayout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def template_sublayout_params
      params.require(:template_sublayout).permit(:name, :description, :section_num, :input_type, :year_id)
    end
end
