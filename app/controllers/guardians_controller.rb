# Guardians Controller
class GuardiansController < ApplicationController
  def create
    @student = Student.shod(params[:student_id])
    @guardian = @student.guardians.create(guardian_params)
    if @guardian.save
      redirect_to admission2_1_students_path(@student)
    else
      render '/students/admission2'
    end
  end

  def addguardian
    @student = Student.shod(params[:student_id])
    authorize! :read, @student
  end

  def addguardian_create
    @student = Student.shod(params[:format])
    @guard = @student.guardians.create(guardian_params)
    if @guard.save
      redirect_to dispguardian_students_path(@student)
    else
      render '/students/addguardian'
    end
  end

  def destroy
    @guard = Guardian.shod(params[:id])
    authorize! :delete, @guard
    @guard.destroy
    redirect_to students_dispguardian_path(@guard.student)
  end

  def edit
    @student = Student.shod(params[:student_id])
    @guard = @student.guardians.shod(params[:id])
    authorize! :update, @student
  end

  def update
    @student = Student.shod(params[:student_id])
    @guard = @student.guardians.shod(params[:id])
    if @guard.update(guardian_params)
      redirect_to dispguardian_students_path(@guard.student)
    else
      render 'edit '
    end
  end

  private

  def guardian_params
    params.require(:guardian).permit!
  end
end
