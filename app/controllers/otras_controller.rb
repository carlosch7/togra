class OtrasController < ApplicationController
   before_filter :ver, only: [:new,:show,:edit] 
  # GET /personas
  # GET /personas.json
  layout :resolve_layout
  def index
    @otras = Otra.all
  end

  # GET /otras/1
  # GET /otras/1.json
  def show
  end

  # GET /otras/new
  def new
    @otra = Otra.new
  end

  # GET /otras/1/edit
  def edit
  end

  # POST /otras
  # POST /otras.json
  def create
    @otra = Otra.new(otra_params)

    respond_to do |format|
      if @otra.save
        format.html { redirect_to :controller => 'personas', :action => 'new', :id => @persona }
        #format.html { redirect_to @otra, notice: 'Otra was successfully created.' }
        #format.json { render :show, status: :created, location: @otra }
      else
        format.html { render :new }
        format.json { render json: @otra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /otras/1
  # PATCH/PUT /otras/1.json
  def update
    respond_to do |format|
      if @otra.update(otra_params)
        format.html { redirect_to @otra, notice: 'Otra was successfully updated.' }
        format.json { render :show, status: :ok, location: @otra }
      else
        format.html { render :edit }
        format.json { render json: @otra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /otras/1
  # DELETE /otras/1.json
  def destroy
    @otra.destroy
    respond_to do |format|
      format.html { redirect_to otras_url, notice: 'Otra was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def ver
      if  $administration 
        redirect_to :controller => "sesiones", :action => "entrar", :alert => "Primero logueese para llenar la encuesta."
      end

    end
    def resolve_layout
    case action_name
    when "index"
      "tab"
    when "new","edit","show"
      "boots"
    end
   end 
    # Use callbacks to share common setup or constraints between actions.
    def set_otra
      @otra = Otra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def otra_params
      params.require(:otra).permit(:fuenteingre, :cualfuen, :cuentab, :numcuent, :tarjetdc, :cuantarj, :prestam, :tipoprestamo, :grupo_id, :locate_id)
    end
end
