class LocatesController < ApplicationController
  before_action :set_locate, only: [:show, :edit, :update, :destroy]
  layout :resolve_layout
  # GET /locates
  # GET /locates.json
  def index
    @locates = Locate.all
  end

  # GET /locates/1
  # GET /locates/1.json
  def show
  end

  # GET /locates/new
  def new
    @locate = Locate.new
  end

  # GET /locates/1/edit
  def edit
  end

  # POST /locates
  # POST /locates.json
  def create
    @locate = Locate.new(locate_params)
    $locs =  Locate.maximum('id')
    respond_to do |format|
      if @locate.save
        format.html { redirect_to :controller => 'grupos', :action => 'new', :id => @grupo   }
        #format.html { redirect_to @locate, notice: 'Locate was successfully created.' }
        #format.json { render :show, status: :created, location: @locate }
      else
        format.html { render :new }
        format.json { render json: @locate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /locates/1
  # PATCH/PUT /locates/1.json
  def update
    respond_to do |format|
      if @locate.update(locate_params)
        format.html { redirect_to @locate, notice: 'Locate was successfully updated.' }
        format.json { render :show, status: :ok, location: @locate }
      else
        format.html { render :edit }
        format.json { render json: @locate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locates/1
  # DELETE /locates/1.json
  def destroy
    @locate.destroy
    respond_to do |format|
      format.html { redirect_to locates_url, notice: 'Locate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_locate
      @locate = Locate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def locate_params
      params.require(:locate).permit(:departamento, :municipio, :gobernador, :alcalde, :fecha_inicio)
    end
    def resolve_layout
    case action_name
    when "index"
      "tab"
    when "new","edit","show"
      "boots"
    end
   end 
end
