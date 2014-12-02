class BuscarController < ApplicationController
  
  before_filter :estar, only: [:form, :show, :mosa]
  layout :resolve_layout
  def form
    @ms=0
    @buss=0
  	@cedul = params[:datoent]
  	@ckc = params[:ced]
  	@ckf = params[:fam]
    @prc = params[:prl]
    @svp = params[:svp]
  	#@person = Perro.order("nombre DESC").limit(2).offset(0)
    if @prc
      @numpr=Persona.where(gruporel: false).count 
      @numpt =Persona.where(gruporel: true).count#Persona.select(gruporel: 'true').count
      if @numpr and @numpt
        @buss =1
        render :action => 'mosa'
      end
    end   
    if @svp
      @sevp = Grupo.where(serv: false).count
      @sevpn = Grupo.where(serv: true).count
      if @sevp and @sevpn
        @buss = 2
        render :action => 'mosa'
      end
    end  
    if @ckc
      @person = Persona.where(cedula: @cedul).limit(2).offset(0)
      if @person == ' '
        flash[:notice] = 'No existe el Usuario.'
       else
        @ms=1
        flash[:notice] = 'Usuario Encontrado'
        render :action => 'show' 
      end  
    end  
  	

    if @ckf
    	@famil = Grupo.where(famil: @cedul).limit(2).offset(0)
      if @famil == ' '
      flash[:notice] = 'No existe Grupo Familiar'
      
      else
        @ms=0
        flash[:notice] = 'Grupo familiar Encontrado'
        render :action => 'show'
      end 
    end  
  end

  def show
  end

  def mosa
  end
  private
  def estar
      if  $administration 
        redirect_to :controller => "sesiones", :action => "entrar", :alert => "Primero logueese para llenar la encuesta."
      end
  end    
  def resolve_layout
    case action_name
    when "show"
      "tab"
    when "form"
      "boots"
    end
   end 
end
