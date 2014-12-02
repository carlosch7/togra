class PersonasController < ApplicationController
  before_action :set_persona, only: [:show, :edit, :update, :destroy]
  before_filter :ver, only: [:new,:show,:edit] 
  # GET /personas
  # GET /personas.json
  layout :resolve_layout
  def index
    @personas = Persona.all
  end

  # GET /personas/1
  # GET /personas/1.json
  def show
  end

  # GET /personas/new
  def new
    @persona = Persona.new
    if defined?(cookies[:id])
      @luc =  cookies[:id]

    end
  end

  # GET /personas/1/edit
  def edit
  end

  # POST /personas
  # POST /personas.json
  def create
    @persona = Persona.new(persona_params)

    respond_to do |format|
      if @persona.save
        format.html { redirect_to @persona, notice: 'Persona was successfully created.' }
        format.json { render :show, status: :created, location: @persona }
      else
        format.html { render :new }
        format.json { render json: @persona.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personas/1
  # PATCH/PUT /personas/1.json
  def update
    respond_to do |format|
      if @persona.update(persona_params)
        format.html { redirect_to @persona, notice: 'Persona was successfully updated.' }
        format.json { render :show, status: :ok, location: @persona }
      else
        format.html { render :edit }
        format.json { render json: @persona.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personas/1
  # DELETE /personas/1.json
  def destroy
    @persona.destroy
    respond_to do |format|
      format.html { redirect_to personas_url, notice: 'Persona was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_persona
      @persona = Persona.find(params[:id])
    end
    
    def ver
      if  $administration 
        redirect_to :controller => "sesiones", :action => "entrar", :alert => "Primero logueese para llenar la encuesta."
      end

    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def persona_params
      params.require(:persona).permit(:nombre, :edad, :sexo, :cedula, :lugfam, :nivestu, :titul, :servsalud, :cajcomp, :pension, :etnia, :actiecom, :gruporel, :cualgrup, :sectortrab,:locate_id, :grupo_id, :otra_id)
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
