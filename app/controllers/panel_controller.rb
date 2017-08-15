class PanelController < ApplicationController
  def index
 

  end
  def joincultivo_estudiante
    @usuario = params[:idusuario]
    @cultivo = params[:idcultivo]
    @save = FarmingStudent.new(:user_id=>@usuario,:farming_id=>@cultivo)
    @save.save
    redirect_to "/"
  end


end
