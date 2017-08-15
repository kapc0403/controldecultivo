class StudentMailer < ApplicationMailer

  def addedusertofarming(student)
    mail to: student.email, subject: "Excelente, ahora estas inscrito en un cultivo"
  end

  def addteachertofarming(teacher)
    mail to: teacher.email, subject: "Un nuevo estudiante se ha registrado en tu cultivo"
  end

end
