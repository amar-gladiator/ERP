Rails.application.routes.draw do

  devise_for :users
mount Ckeditor::Engine => '/ckeditor'
get 'setting/course_batch'
get 'general_settings/all'
get 'general_settings/none'
get 'courses/:id/grouped_batches',to: 'courses#grouped_batches',as: 'courses_grouped_batches'
post 'courses/create_batch_group'
get 'courses/edit_batch_group'
patch 'courses/update_batch_group'
delete 'courses/delete_batch_group'
get 'courses/:id/assign_all',to: 'courses#assign_all',as: 'courses_assign_all'
get 'courses/:id/remove_all',to: 'courses#remove_all',as: 'courses_remove_all'
get 'batches/:id/display', to: 'batches#display', as: 'batches_display'
get 'batches/select' 
get 'batches/assign_tutor'
post 'batches/assign_tutorial'
post 'batches/:batch_id/assign_employee/',to:'batches#assign_employee',as:'batches_assign_employee'
delete 'batches/:batch_id/remove_employee/',to:'batches#remove_employee',as:'batches_remove_employee'
get 'grading_levels/select'
get 'batch_transfers/select'
get 'batch_transfers/assign_all'
get 'batch_transfers/remove_all'
get 'batch_transfers/student_transfer'
get 'batch_transfers/former_student'
get 'batch_transfers/:batch_id/graduation',to: 'batch_transfers#graduation', as: 'batch_transfers_graduation'
get 'batch_transfers/:batch_id/transfer',to: 'batch_transfers#transfer', as: 'batch_transfers_transfer'
get 'subjects/select'
get 'batches/:batch_id/subjects/subject',to: 'subjects#subject', as: 'batches_subjects_subject'
get 'elective_groups/:elective_group_id/elective_subject',to: 'elective_groups#elective_subject', as: 'elective_groups_elective_subject'
get 'students/search' 
get 'students/search_ajax'
get 'students/view_all'
get 'students/select'  
get 'students/:id/profile',to: 'students#profile',as: 'students_profile'
get 'students/:id/student_profile',to: 'students#student_profile',as: 'students_student_profile'
get 'students/archived_profile'  
get 'students/advanced_search'
get 'students/advanced_student_search'
get 'students/:subject_id/elective',to: 'students#elective',as: 'students_elective'
get 'home/dashboard'
get 'students/admission1'
get 'students/admission2'
post 'students/adm_create'
post 'students/archived_student_create'
get 'students/admission2_1'
get 'newscasts/select'
get 'newscasts/display'
get 'students/admission3'
get 'students/edit_immediate_contact'
patch 'students/update_immediate_contact'
patch 'students/update_immediatecontact'
get 'students/previous_data'
post 'students/previous_data_create'
get 'students/previous_subject'
post 'students/previous_subject_create'
get 'students/report'
get 'students/recent_exam_report'
get 'students/student_exam_report'
get 'students/subject_wise_report'
get 'students/academic_report'
get 'students/final_report'
get 'students/student_final_report'
get 'students/transcript_report'
get 'students/student_transcript_report'
get 'students/archived_report'
get 'students/attendance_report'
get 'students/genrate_report'
get 'students/email'
post 'students/send_email'
get 'students/change_to_former'
get 'students/delete'
get 'students/remove'
get 'students/dispguardian'
get 'students/archived_student_guardian'
get 'students/addguardian'
post 'students/assign_elective'
get 'students/:subject_id/assign_all',to: 'students#assign_all',as: 'students_assign_all'
get 'students/:subject_id/remove_all',to: 'students#remove_all',as: 'students_remove_all'
get 'students/batch_details'
post 'guardians/addguardian_create',to: 'guardians#addguardian_create',as: 'guardians_addguardian_create'
get 'users/search'
get 'users/select'
get 'users/view_all'
get 'users/view_all_details'
patch 'users/:id/update_password',to:'users#update_password',as:'users_update_password'
get 'users/:id/change_password',to: 'users#change_password',as: 'users_change_password'
get 'class_timings/select'
get 'events/show'
get 'events/showdep'
get 'weekdays/select'
get 'weekdays/index'
post'weekdays/create'
get 'time_tables/select'
get 'time_tables/sub'
get 'time_tables/new'
get 'time_tables/timetable'
get 'time_table_entries/select'
get 'time_table_entries/select_subject'
get 'time_tables/work_allotment'
post'time_tables/work_allotment'
get 'time_tables/new_timetable'
post'time_table_entries/create_time'
post'time_table_entries/assign_time'
get 'exam_reports/report_center'
get 'exam_reports/exam_wise_report'
get 'exam_reports/subject_wise_report'
get 'exam_reports/generate_exam_report'
get 'exam_reports/select_batch'
get 'exam_reports/choose_batch'
get 'exam_reports/generate_subject_report'
get 'exam_reports/grouped_exam_report'
get 'exam_reports/generate_grouped_report'
get 'exam_reports/:exam_group_id/student_exam_report/:student_id',
                    to: 'exam_reports#student_exam_report',as: 'exam_reports_student_exam_report'
get 'exam_reports/:batch_id/student_report/:student_id',
                    to: 'exam_reports#student_report',as: 'exam_reports_student_report'
get 'exam_reports/:exam_group_id/consolidated_report',to: 'exam_reports#consolidated_report',as: 'exam_reports_consolidated_report'
get 'exam_reports/:batch_id/consolidated_archived_report',
                    to: 'exam_reports#consolidated_archived_report',as: 'exam_reports_consolidated_archived_report'
get 'exam_reports/archived_student_report'
get 'exam_reports/select_course'
get 'exam_reports/generate_archived_report'
get 'exam_reports/exam_group_wise_report'
get 'exam_reports/student_ranking_per_subject'
get 'exam_reports/rank_report_batch'
get 'exam_reports/generate_ranking_report'
get 'exam_reports/student_ranking_per_batch'
get 'exam_reports/generate_student_ranking_report'
get 'exam_reports/student_ranking_per_course'
get 'exam_reports/generate_student_ranking_report2'
get 'exam_reports/student_ranking_per_school'
get 'exam_reports/student_ranking_per_attendance'
get 'exam_reports/generate_student_ranking_report3'
get 'exam_reports/view_transcripts'
get 'exam_reports/generate_view_transcripts'
get 'exam_reports/:student_id/archived_student/',to: 'exam_reports#archived_student',as: 'exam_reports_archived_student'
get 'exam_reports/:student_id/student_view_transcripts/',to: 'exam_reports#student_view_transcripts',as: 'exam_reports_student_view_transcripts'
get 'exam_reports/ranking_level_report'
get 'exam_reports/select_mode'
get 'exam_reports/select_rank'
get 'exam_reports/select_rank_mode'
get 'exam_reports/generate_ranking_level_report'
get 'exam_reports/combined_report'
get 'exam_reports/combined_details'
get 'exam_reports/all'
get 'exam_reports/none'
get 'exam_reports/all1'
get 'exam_reports/none1'
get 'exam_reports/generate_combined_report'
get 'exam_reports/genrate_reports'
get 'calender/change' 
get 'calender/event_view'
get 'exam_setting/:course_id/setting',to: 'exam_setting#setting', as: 'course_class_designations'
get 'exam_setting/select'
get 'exam_setting/selectrank'
get 'exam_setting/:course_id/settingrank',to: 'exam_setting#settingrank',as: 'course_ranking_levels'
get 'exam_setting/newrank'
post 'exam_setting/createrank'
get 'exam_setting/:course_id/editRank/:id',to:'exam_setting#editRank',as:'course_ranking_level'
patch 'exam_setting/updateRank'
delete 'exam_setting/:id/destroyRank', to:'exam_setting#destroyRank', as:'exam_setting_destroyRank'
get 'exam_groups/select'
patch 'exam_groups/:id/exam_group_create',to: 'exam_groups#exam_group_create',as: 'exam_groups_exam_group_create'
get 'exam_groups/:id/exams', to:'exam_groups#exams', as:'exam_groups_exams'
get 'exam_groups/connect_exam'
get 'exam_groups/assign_all'
get 'exam_groups/remove_all'
get 'exam_groups/update_connect_exam'
get 'exam_groups/publish_exam'
get 'exam_groups/publish_result'
get 'exam_groups/previous_exam_data'
get 'exam_groups/previous_exam'
get 'exam_groups/previous_exam_group'
get 'exam_groups/previous_exam_details'
get 'exams/:id/exam_score', to:'exams#exam_score', as:'exam_exam_score'
patch 'exams/update_exam_score'
get 'online_exams/assign_all'
get 'online_exams/remove_all'
post 'online_exams/createQue'
get 'online_exams/onlineView'
get 'online_exams/select'
get 'online_exams/:online_exam_id/queAns',to: 'online_exams#queAns', as: 'online_exams_queAns'
get 'online_exams/:online_exam_id/display',to: 'online_exams#display', as: 'online_exams_display'
delete 'online_exams/:batch_id/destroy/:id',to: 'online_exams#destroy', as: 'online_exams_destroy'
get 'online_exams/editQue/:online_examque_id', to: 'online_exams#editQue', as: 'online_exams_editQue'
patch 'online_exams/updateQue/:online_examque_id',to: 'online_exams#updateQue',as: 'online_exams_updateQue'
get 'online_exams/editOption/:online_examque_id', to: 'online_exams#editOption', as: 'online_exams_editOption'
patch 'online_exams/updateOption/:online_examque_id',to: 'online_exams#updateOption',as: 'online_exams_updateOption'
get 'employees/new_category'
post 'employees/add_category'
get 'employees/:category_id/edit_category', to:'employees#edit_category', as:'employees_edit_category'
patch 'employees/:category_id/update_category', to:'employees#update_category', as:'employees_update_category'
delete 'employees/:id/destroy_category', to:'employees#destroy_category', as:'employees_destroy_category'
get 'employees/new_department'
post 'employees/add_department'
get 'employees/:department_id/edit_department', to:'employees#edit_department', as:'employees_edit_department'
patch 'employees/:department_id/update_department', to:'employees#update_department', as:'employees_update_department'
delete 'employees/:id/destroy_department', to:'employees#destroy_department', as:'employees_destroy_department'
get 'employees/new_position'
post 'employees/add_position'
get 'employees/:position_id/edit_position', to:'employees#edit_position', as:'employees_edit_position'
patch 'employees/:position_id/update_position', to:'employees#update_position', as:'employees_update_position'
delete 'employees/:id/destroy_position', to:'employees#destroy_position', as:'employees_destroy_position'
get 'employees/new_bank_field'
post 'employees/add_bank_field'
get 'employees/:bank_field_id/edit_bank_field', to:'employees#edit_bank_field', as:'employees_edit_bank_field'
patch 'employees/:bank_field_id/update_bank_field', to:'employees#update_bank_field', as:'employees_update_bank_field'
delete 'employees/:id/destroy_bank_field', to:'employees#destroy_bank_field', as:'employees_destroy_bank_field'
get 'employees/new_payroll_category'
post 'employees/add_payroll_category'
get 'employees/:payroll_category_id/edit_payroll_category',to:'employees#edit_payroll_category',as:'employees_edit_payroll_category'
patch 'employees/:payroll_category_id/update_payroll_category', to:'employees#update_payroll_category', as:'employees_update_payroll_category'
delete 'employees/:id/destroy_payroll_category', to:'employees#destroy_payroll_category', as:'employees_destroy_payroll_category'
get 'employees/active_payroll_category'
get 'employees/inactive_payroll_category'
get 'employees/new_grade'
post 'employees/add_grade'
get 'employees/:grade_id/edit_grade',to:'employees#edit_grade', as:'employees_edit_grade' 
patch 'employeess/:grade_id/update_grade',to:'employees#update_grade',as:'employees_update_grade' 
delete 'employees/:id/destroy_grade', to:'employees#destroy_grade', as:'employees_destroy_grade'
get 'employees/employee_management'
get 'employees/subject_assignment'
get 'employees/assign_subject'
get 'employees/assign_subject_disp'
get 'employees/list_emp'
delete'employees/:id/remove_employee/',to:'employees#remove_employee',as:'employees_remove_employee'
post 'employees/:id/assign_employee/',to:'employees#assign_employee',as:'employees_assign_employee'
get 'employees/admission1'
get 'employees/admission2'
patch 'employees/admission2_create'
post 'employees/admission3_create'
get 'employees/admission3'
get 'employees/admission4'
get 'employees/edit_privilege'
post 'employees/update_privilege'
get 'employees/search'
get 'employees/settings'
get 'employees/change_reporting_manager'
get 'employees/:id/update_reporting_manager_name/:reporting_manager_id',to:'employees#update_reporting_manager_name',as:'employees_update_reporting_manager_name'
patch 'employees/:id/update_reporting_manager',to:'employees#update_reporting_manager',as:'employees_update_reporting_manager'
get 'employees/profile'
get 'employees/search_employee'
get 'employees/search_emp'
get 'employees/viewall_emp'
get 'employees/allemp'
get 'employees/edit_profile'
get 'employees/advance_search'
get 'employees/advance_search_emp'
patch 'employees/update_profile'
post 'employees/department_employee_list'
get 'employees/monthly_payslip'
post 'employees/create_monthly_payslip'
post 'employees/create_payslip_category'
get 'employees/payroll_category'
get 'employees/department_payslip'
get 'employees/payslip'
get 'employees/select_employee_department'
post 'employees/view_payslip'
get 'employees/genral_profile'
get 'employees/personal_profile'
get 'employees/address_profile'
get 'employees/contact_profile'
get 'employees/bank_info'
get 'employees/emp_payroll'
get 'employees/remove'
get 'employees/change_to_former'
post 'employees/create_archived_employee'
get 'employees/delete_employee'
get 'employee_attendances/new_leave_type'
post 'employee_attendances/add_leave_type'
delete 'employee_attendances/:id/destroy_leave_type',to:'employee_attendances#destroy_leave_type', as:'employee_attendances_destroy_leave_type'
get 'employee_attendances/:id/edit_leave_type',to:'employee_attendances#edit_leave_type', as: 'employee_attendances_edit_leave_type'
patch 'employee_attendances/:id/update_leave_type',to:'employee_attendances#update_leave_type', as: 'employee_attendances_update_leave_type'
get 'employee_attendances/attendance_register'
get 'employee_attendances/select'
get 'employee_attendances/:department_id/display/:next',to:'employee_attendances#display',as: 'employee_attendances_display'
get 'employee_attendances/:employee_id/new_attendance/:attendance_date',to:'employee_attendances#new_attendance',as: 'employee_attendances_new_attendance'
get 'employee_attendances/:id/edit_attendance',to:'employee_attendances#edit_attendance', as: 'employee_attendances_edit_attendance'
patch 'employee_attendances/:id/update_att',to:'employee_attendances#update_att', as: 'employee_attendances_update_att'
delete 'employee_attendances/:id/destroy_attendance',to:'employee_attendances#destroy_attendance', as: 'employee_attendances_destroy_attendance'

get 'employee_attendances/attendance_report'
get 'employee_attendances/select_report'
get 'employee_attendances/:employee_id/report_info',to:'employee_attendances#report_info', as: 'employee_attendances_report_info'
get 'employee_attendances/manual_reset'
get 'employee_attendances/leave_reset_settings'
get 'employee_attendances/leave_reset_all'
get 'employee_attendances/update_employee_leave_reset_all'
get 'employee_attendances/employee_leave_reset_by_department'
get 'employee_attendances/select_department'
get 'employee_attendances/assign_all'
get 'employee_attendances/remove_all'
get 'employee_attendances/update_department_leave_reset'
get 'employee_attendances/employee_leave_reset_by_employee'
post 'employee_attendances/search'


get 'finance/new_finance_fee_category'
get 'finance/add_finance_fee_category'
post 'finance/create_finance_fee_category'
get 'finance/:finance_fee_category_id/edit_finance_fee_category',to:'finance#edit_finance_fee_category', as:'finance_edit_finance_fee_category' 
patch 'finance/:finance_fee_category_id/update_finance_fee_category',to:'finance#update_finance_fee_category', as:'finance_update_finance_fee_category' 
delete 'finance/:id/destroy_finance_fee_category', to:'finance#destroy_finance_fee_category', as:'finance_destroy_finance_fee_category'

get 'finance/new_finance_donation'
post 'finance/add_finance_donation'
get 'finance/disp_finance_donation'
get 'finance/showall_finance_donation'
get 'finance/:finance_donation_id/edit_finance_donation',to:'finance#edit_finance_donation', as:'finance_edit_finance_donation' 
patch 'finance/:finance_donation_id/update_finance_donation',to:'finance#update_finance_donation', as:'finance_update_finance_donation'
delete 'finance/:id/destroy_finance_donation', to:'finance#destroy_finance_donation', as:'finance_destroy_finance_donation'

get 'finance/asset_liability'

post 'finance/add'
get 'finance/new_asset'
get 'finance/add_asset'
post 'finance/create_asset'
get 'finance/display_asset'
get 'finance/viewcontent_asset'
get 'finance/:asset_id/edit_asset',to:'finance#edit_asset', as:'finance_edit_asset'
patch 'finance/:asset_id/update_asset',to:'finance#update_asset', as:'finance_update_asset'
delete 'finance/:id/destroy_asset', to:'finance#destroy_asset', as:'finance_destroy_asset'

get 'finance/new_liability'
get 'finance/add_liability'
post 'finance/create_liability'
get 'finance/display_liability'
get 'finance/viewcontent_liability'
get 'finance/:liability_id/edit_liability',to:'finance#edit_liability', as:'finance_edit_liability'
patch 'finance/:liability_id/update_liability',to:'finance#update_liability', as:'finance_update_liability'
delete 'finance/:id/destroy_liability', to:'finance#destroy_liability', as:'finance_destroy_liability'

get 'finance/new_automatic_transaction'
get 'finance/add_automatic_transaction'
post 'finance/create_automatic_transaction'
get 'finance/:automatic_transaction_id/edit_automatic_transaction', to: 'finance#edit_automatic_transaction', as: 'finance_edit_automatic_transaction'
patch 'finance/:automatic_transaction_id/update_automatic_transaction', to: 'finance#update_automatic_transaction', as: 'finance_update_automatic_transaction'
delete 'finance/:id/destroy_automatic_transaction', to:'finance#destroy_automatic_transaction', as:'finance_destroy_automatic_transaction'

get 'finance/fees_index'


get 'attendences/attendence_register'
get 'attendences/select' 
get 'attendences/select_subject'    
get 'attendences/attendance_form'
get 'attendences/:batch_id/display/:next',to:'attendences#display',as: 'attendences_display'
get 'attendences/:student_id/new_attendence/:month_date',to:'attendences#new_attendence',as: 'attendences_new_attendence'
get 'attendences/:id/edit_attendence',to:'attendences#edit_attendence',as: 'attendences_edit_attendence'
patch 'attendences/:id/update_attendence',to:'attendences#update_attendence', as:'attendences_update_attendence'
get 'employee_attendances/search_emp'
 delete 'time_table_entries/delete_time'
 get 'time_tables/selectTime'
 get 'time_tables/teachers_timetable'
 get 'time_tables/teacher_time_table_display'
root 'home#dashboard'
 
 resources :home
 resources :setting
 resources :categories
 resources :general_settings
  
 resources :courses do
    resources :batches
  end

  resources :grading_levels
  resources :batches do
  resources :grading_levels
end  

resources :batch_transfers
  
  resources :subjects 
   resources :batches do
    resources :subjects
    resources :elective_groups do
     resources :subjects 
    end  
  end 
 
 resources :students do
    resources :guardians
end

resources :newscasts do
resources :comments
end
resources :users

resources :time_tables
resources :class_timings
  resources :batches do
  resources :class_timings
end  
resources :events
resources :calender
resources :weekdays
resources :time_tables
resources :attendences
resources :time_table_entries

  resources :batches do
  resources :time_table_entries
end  

resources :exam_setting
resources :exam_groups do
  resources :exams 
end
resources :exams do
    resources :exam_scores
end

resources :online_exam_groups
resources :exam_reports

resources :courses do
  resources :exam_setting
end  
resources :online_exams
resources :employees
resources :employee_attendances
resources :finance
end
