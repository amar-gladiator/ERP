class GuardiansController < ApplicationController

	def create
      		
	 	@student = Student.find(params[:student_id])
	 	@guardian = @student.guardians.create(guardian_params)
		redirect_to students_admission2_1_path(@student)
    end

	private
	def guardian_params
		params.require(:guardian).permit(:first_name,:last_name,:relation,:dob,:email,:office_phone1,
       :office_phone2,:mobile_phone,:office_address_line1,
       :office_address_line2,:city,:country_id,:state,:occupation,:income,:education)
	end
end