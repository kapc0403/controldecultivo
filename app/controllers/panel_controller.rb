class PanelController < ApplicationController
  def index


  end
  def joincultivo_estudiante
    @usuario = params[:idusuario]
    @cultivo = params[:idcultivo]
    @save = FarmingStudent.new(:user_id=>@usuario,:farming_id=>@cultivo)
    @save.save

    @saveuser = User.update(current_user.id, :cultivo=>params[:idcultivo])
    @saveuser.save

    @usermail = User.find(@usuario)
    @teachermail = Farming.find(@cultivo).user
    StudentMailer.addedusertofarming(@usermail).deliver_later
    StudentMailer.addteachertofarming(@teachermail).deliver_later
    redirect_to "/"
  end


end
