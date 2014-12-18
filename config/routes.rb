Rails.application.routes.draw do

devise_for :users, controllers: { registrations: 'registrations', sessions: 'sessions', passwords: 'passwords'}
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
get 'students/:id/archived_student_profile',to: 'students#archived_student_profile',as: 'students_archived_student_profile'
get 'students/:id/generate_tc',to: 'students#generate_tc',as: 'students_generate_tc'
get 'students/archived_profile'  
get 'students/advanced_search'
get 'students/advanced_student_search'
post 'students/advanced_search_result'
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
get 'students/archived_student_transcript_report'
get 'students/archived_report'
get 'students/attendance_report'
get 'students/genrate_report'
get 'students/email'

post 'students/send_email'
get 'students/report_email'
post 'students/send_report_email'
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
get 'time_tables/edit_timetable'
get 'time_tables/update_timetable'
patch 'time_tables/update_timetable_values'

get 'time_table_entries/select'
get 'time_table_entries/select_subject'
get 'time_tables/work_allotment'
post'time_tables/work_allotment'
get 'time_tables/new_timetable'
post'time_table_entries/create_time'
post'time_table_entries/assign_time'
# get 'exam_reports/report_center'
# get 'exam_reports/exam_wise_report'
# get 'exam_reports/subject_wise_report'
# get 'exam_reports/generate_exam_report'
# get 'exam_reports/select_batch'
# get 'exam_reports/choose_batch'
# get 'exam_reports/generate_subject_report'
# get 'exam_reports/grouped_exam_report'
# get 'exam_reports/generate_grouped_report'
get 'exam_reports/:exam_group_id/student_exam_report/:student_id',
                    to: 'exam_reports#student_exam_report',as: 'exam_reports_student_exam_report'
get 'exam_reports/:batch_id/student_report/:student_id',
                    to: 'exam_reports#student_report',as: 'exam_reports_student_report'
get 'exam_reports/:exam_group_id/consolidated_report',to: 'exam_reports#consolidated_report',as: 'exam_reports_consolidated_report'
# get 'exam_reports/:batch_id/consolidated_archived_report',
                    # to: 'exam_reports#consolidated_archived_report',as: 'exam_reports_consolidated_archived_report'
# get 'exam_reports/archived_student_report'
# get 'exam_reports/select_course'
# get 'exam_reports/generate_archived_report'
# get 'exam_reports/exam_group_wise_report'
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
# get 'exam_reports/:student_id/archived_student/',to: 'exam_reports#archived_student',as: 'exam_reports_archived_student'
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
get 'exam_reports/exam_wise_students_report'
get 'exam_reports/exam_wise_consolidated_report'
# get 'exam_reports/subject_wise_students_report'
get 'exam_reports/grouped_exam_students_report'
# get 'exam_reports/archived_students_exam_report'
# get 'exam_reports/archived_students_consolidated_report'
get 'exam_reports/subject_wise_ranking_report'
get 'exam_reports/batch_wise_ranking_report'
get 'exam_reports/course_wise_ranking_report'
get 'exam_reports/school_wise_ranking_report'
get 'exam_reports/attendance_wise_ranking_report'
get 'exam_reports/students_transcripts_report'
get 'calender/change' 
get 'calender/event_view'

  # get 'exam_setting/:course_id/setting',to: 'exam_setting#setting', as: 'course_class_designations'
  # get 'exam_setting/select'
  # get 'exam_setting/selectrank'
  # get 'exam_setting/:course_id/settingrank',to: 'exam_setting#settingrank',as: 'course_ranking_levels'
 # get 'exam_setting/newrank'

  # post 'exam_setting/createrank'
  # get 'exam_setting/:course_id/editRank/:id',to:'exam_setting#editRank',as:'course_ranking_level'
  # patch 'exam_setting/updateRank'
  # delete 'exam_setting/:id/destroyRank', to:'exam_setting#destroyRank', as:'exam_setting_destroyRank'
# 
get 'exam_groups/select'

patch 'exam_groups/:id/exam_group_create',to: 'exam_groups#exam_group_create',as: 'exam_groups_exam_group_create'
# get 'exam_groups/:id/exams', to:'exam_groups#exams', as:'exam_groups_exams'
# get 'exam_groups/connect_exam'
get 'exam_groups/assign_all'
get 'exam_groups/remove_all'
get 'exam_groups/update_connect_exam'
# get 'exam_groups/publish_exam'
# get 'exam_groups/publish_result'
# get 'exam_groups/previous_exam_data'
get 'exam_groups/previous_exam'
get 'exam_groups/previous_exam_group'
get 'exam_groups/previous_exam_details'
get 'exam_groups/previous_exam_scores'
patch 'exam_groups/update_exam_score'
# get 'exams/:id/exam_score', to:'exams#exam_score', as:'exam_exam_score'
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
get 'employees/employee_structure'
delete'employees/:id/remove_employee',to:'employees#remove_employee',as:'employees_remove_employee'
post 'employees/:id/assign_employee/department_id',to:'employees#assign_employee',as:'employees_assign_employee'
get 'employees/admission1'
get 'employees/admission2'
get 'employees/view_employee_payslip'
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
post 'employees/advance_search_result_pdf'
get 'employees/advance_search_emp'
patch 'employees/update_profile'
patch 'employees/update_edit_profile'
patch 'employees/update_edit_address_profile'
patch 'employees/update_edit_contact_profile'
post 'employees/department_employee_list'
get 'employees/monthly_payslip'
post 'employees/create_monthly_payslip'
post 'employees/create_payslip_category'
get 'employees/payroll_category'
get 'employees/department_payslip'
get 'employees/payslip'
get 'employees/one_click_payslip'
post 'employees/one_click_payslip_generate'
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
get 'employees/employee_profile'
get 'employees/edit_personal_profile'
get 'employees/edit_address_profile'
get 'employees/edit_contact_profile'
get 'employees/edit_bank_info'
patch 'employees/update_bank_details'
get 'employees/personal_profile_pdf'
get 'employees/address_profile_pdf'
get 'employees/contact_profile_pdf'
get 'employees/bank_info_pdf'
get 'employees/archived_employee_profile'
get 'employees/genral_profile_archived'
get 'employees/personal_profile_archived'
get 'employees/address_profile_archived'
get 'employees/contact_profile_archived'
get 'employees/bank_info_archived'
post 'employees/emp_search_result_pdf'
get 'employees/select_month'
get 'employees/payslip_revert'
post 'employees/one_click_payslip_revert'

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
get 'employee_attendances/search_emp'
get 'employee_attendances/employee_leave_detail/:id',to:'employee_attendances#employee_leave_detail',as:'employee_attendances_employee_leave_detail'

get 'attendences/attendence_register'
get 'attendences/select' 
get 'attendences/select_subject'
get 'attendences/:subject_id/display/:next',to:'attendences#display',as: 'attendences_display'
get 'attendences/:student_id/new_attendence/:month_date',to:'attendences#new_attendence',as: 'attendences_new_attendence'
post 'attendences/create_attendence'
get 'attendences/:id/edit_attendence',to:'attendences#edit_attendence',as: 'attendences_edit_attendence'
patch 'attendences/:id/update_attendence',to:'attendences#update_attendence', as:'attendences_update_attendence'
delete 'attendences/:id/delete_attendence',to:'attendences#delete_attendence', as:'attendences_delete_attendence'
get 'attendences/report'
get 'attendences/select_batch'
get 'attendences/generate_report'
get 'attendences/attendence_report'

delete 'time_table_entries/delete_time'
get 'time_tables/selectTime'
get 'time_tables/teachers_timetable'
get 'time_tables/teacher_time_table_display'
get 'time_tables/employee_timetable'
get 'time_tables/time_table_pdf'
get 'time_tables/selectTimeEmployee'
get 'time_tables/timetable'
get 'time_tables/display_institutional_time_table/:next',to:'time_tables#display_institutional_time_table',as:'time_tables_display_institutional_time_table'
get 'finance/fees'
get 'finance/transaction_category'
get 'finance/new_transaction_category'
post 'finance/create_transaction_category'
get 'finance/:id/edit_transaction_category',to:'finance#edit_transaction_category',as:'finance_edit_transaction_category'
patch 'finance/:id/update_transaction_category',to:'finance#update_transaction_category',as:'finance_update_transaction_category'
delete 'finance/:id/delete_transaction_category',to:'finance#delete_transaction_category',as:'finance_delete_transaction_category'
get 'finance/donation'
post 'finance/create_donation'
get 'finance/:id/donation_receipt',to: 'finance#donation_receipt',as:'finance_donation_receipt'
get 'finance/donors'
get 'finance/:id/edit_donation',to: 'finance#edit_donation',as:'finance_edit_donation'
patch 'finance/:id/update_donation',to: 'finance#update_donation',as:'finance_update_donation'
delete 'finance/:id/delete_donation',to: 'finance#delete_donation',as:'finance_delete_donation'
get 'finance/:id/finance_donation_receipt',to:'finance#finance_donation_receipt',as:'donation_receipt'
get 'finance/asset_liability'
get 'finance/asset'
get 'finance/new_asset'
post 'finance/create_asset'
get 'finance/view_asset'
get 'finance/:id/edit_asset',to:'finance#edit_asset',as:'finance_edit_asset'
patch 'finance/:id/update_asset',to:'finance#update_asset',as:'finance_update_asset'
delete 'finance/:id/delete_asset',to:'finance#delete_asset',as:'finance_delete_asset'
get 'finance/asset_list'
get 'finance/:id/each_asset_view',to:'finance#each_asset_view',as:'finance_each_asset_view'
get 'finance/liability'
get 'finance/new_liability'
post 'finance/create_liability'
get 'finance/view_liability'
get 'finance/:id/edit_liability',to:'finance#edit_liability',as:'finance_edit_liability'
patch 'finance/:id/update_liability',to:'finance#update_liability',as:'finance_update_liability'
delete 'finance/:id/delete_liability',to:'finance#delete_liability',as:'finance_delete_liability'
get 'finance/:id/each_liability_view',to:'finance#each_liability_view',as:'finance_each_liability_view'
get 'finance/liability_list'
get 'finance/automatic_transaction'
get 'finance/new_automatic_transaction'
post 'finance/create_automatic_transaction'
get 'finance/:id/edit_automatic_transaction',to:'finance#edit_automatic_transaction',as:'finance_edit_automatic_transaction'
patch 'finance/:id/update_automatic_transaction',to:'finance#update_automatic_transaction',as:'finance_update_automatic_transaction'
delete 'finance/:id/delete_automatic_transaction',to:'finance#delete_automatic_transaction',as:'finance_delete_automatic_transaction'
get 'finance/transactions'
get 'finance/new_expense'
post 'finance/create_expense'
get 'finance/view_expense'
post 'finance/expense_list'
get 'finance/:id/edit_expense',to:'finance#edit_expense',as:'finance_edit_expense'
patch 'finance/:id/update_expense',to:'finance#update_expense',as:'finance_update_expense'
delete 'finance/:id/delete_expense',to:'finance#delete_expense',as:'finance_delete_expense'
get 'finance/finance_expense_report'
get 'finance/new_income'
post 'finance/create_income'
get 'finance/view_income'
post 'finance/income_list'
get 'finance/:id/edit_income',to:'finance#edit_income',as:'finance_edit_income'
patch 'finance/:id/update_income',to:'finance#update_income',as:'finance_update_income'
delete 'finance/:id/delete_income',to:'finance#delete_income',as:'finance_delete_income'
get 'finance/finance_income_report'
get 'finance/transaction_report'
post 'finance/transactions_list'
get 'finance/finance_transaction_report'
get 'finance/compare_report'
post 'finance/transactions_comparison'
get 'finance/master_fees'
get 'finance/new_master_category'
get 'finance/assign_batch'
get 'finance/remove_batch'
post 'finance/create_master_category'
get 'finance/fees_list'
get 'finance/:batch_id/edit_master_category/:id',to:'finance#edit_master_category',as:'finance_edit_master_category'
patch 'finance/:batch_id/update_master_category/:id',to:'finance#update_master_category',as:'finance_update_master_category'
delete 'finance/:batch_id/delete_master_category/:id',to:'finance#delete_master_category',as:'finance_delete_master_category'
get 'finance/new_fees_particular'
post 'finance/create_fees_particular'
get 'finance/admission_no'
get 'finance/category'
get 'finance/category_batch'
get 'finance/select_all'
get 'finance/select_none'
get 'finance/:id/master_category_particular',to:'finance#master_category_particular',as:'finance_master_category_particular'
get 'finance/:id/new_particular_fee',to:'finance#new_particular_fee',as:'finance_new_particular_fee'
post 'finance/:batch_id/create_particular_fee/:id',to:'finance#create_particular_fee',as:'finance_create_particular_fee'
get 'finance/:id/student_admission_no',to:'finance#student_admission_no',as:'finance_student_admission_no'
get 'finance/:id/student_category',to:'finance#student_category',as:'finance_student_category'
get 'finance/:master_id/edit_particular_fee/:id',to:'finance#edit_particular_fee',as:'finance_edit_particular_fee'
patch 'finance/:master_id/update_particular_fee/:id',to:'finance#update_particular_fee',as:'finance_update_particular_fee'
delete 'finance/:master_id/delete_particular_fee/:id',to:'finance#delete_particular_fee',as:'finance_delete_particular_fee'
get 'finance/fee_discounts'
get 'finance/new_fee_discount'
post 'finance/create_fee_discount'
get 'finance/discount_type'
get 'finance/fee_category'
get 'finance/discount_view'
get 'finance/:batch_id/edit_fee_discount/:master_id',to:'finance#edit_fee_discount',as:'finance_edit_fee_discount'
patch 'finance/:batch_id/update_fee_discount/:master_id',to:'finance#update_fee_discount',as:'finance_update_fee_discount'
delete 'finance/:batch_id/delete_fee_discount/:master_id',to:'finance#delete_fee_discount',as:'finance_delete_fee_discount'
get 'finance/fee_collection'
get 'finance/new_fee_collection'
post 'finance/create_fee_collection'
get 'finance/fee_collection_view'
get 'finance/view_fee_collection'
get 'finance/:batch_id/edit_fee_collection/:id',to:'finance#edit_fee_collection',as:'finance_edit_fee_collection'
patch 'finance/:batch_id/update_fee_collection/:id',to:'finance#update_fee_collection',as:'finance_update_fee_collection'
delete 'finance/:batch_id/delete_fee_collection/:id',to:'finance#delete_fee_collection',as:'finance_delete_fee_collection'
get 'finance/:id/collection_details_view',to:"finance#collection_details_view",as:"finance_collection_details_view"
get 'finance/fees_submission'
get 'finance/fees_submission_batch'
get 'finance/fee_collection_date'
get 'finance/student_fees'
get 'finance/fees_submission_student'
get 'finance/student_fees_details'
post 'finance/pay_fee'
post 'finance/pay_fine'
get 'finance/student_fee_receipt'
get 'finance/search_student'
get 'finance/fees_collection_student',to:'finance#fees_collection_student',as:'finance_fees_collection_student'
get 'finance/student_fees_submission'
get 'finance/fees_structure'
get 'finance/student_search'
get 'finance/fee_collection_structure'
get 'finance/student_fees_structure'
get 'finance/fee_structure'
get 'finance/fees_defaulters'
get 'finance/pay_fees_defaulters'
get 'finance/fees_defaulters_list'
get 'finance/batch_choice'
get 'finance/collection_choice'
get 'finance/defaulter_students'
get 'finance/income_details'
get 'finance/expense_details'
get 'finance/payslip'
get 'finance/view_monthly_payslip'
get 'finance/approve_monthly_payslip'
get 'finance/approve_salary'
get 'finance/approve'
post 'finance/view_payslip'
get 'finance/employee_monthly_payslip'
get 'finance/view_employee_payslip'
get 'finance/employee_payslip'
get 'employee_attendances/employee_wise_leave_reset/:id',to:'employee_attendances#employee_wise_leave_reset',as:'employee_attendances_employee_wise_leave_reset'
get 'exam_setting/:course_id/increase_priority/:id',to:'exam_setting#increase_priority',as:'exam_setting_increase_priority'
 get 'exam_setting/:course_id/decrease_priority/:id',to:'exam_setting#decrease_priority',as:'exam_setting_decrease_priority'
get 'employees/employee_individual_payslip_pdf'
get 'employee_attendances/attendance_report_pdf'
delete 'time_tables/time_table_delete'
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

resources :exam_setting do
   collection do
     get :newrank
     get :selectrank
     post :createrank
     patch :updateRank
     get :select
   end
   member do
     delete :destroyRank
     get :setting
     get :settingrank
     get :editRank
  end
end

resources :exam_groups do

	collection do 
		get :select
		get :previous_exam_data
		get :publish_exam
		get :connect_exam
		get :publish_result
	end
	member do
		get :exams

	end

  resources :exams 
end

resources :exams do
	member do 
		get :exam_score
	end
    resources :exam_scores
end

resources :online_exam_groups

resources :exam_reports do
  collection do
    get :report_center
    get :exam_wise_report
    get :select_batch
    get :generate_exam_report
    get :subject_wise_report
    get :choose_batch
    get :generate_subject_report
    get :subject_wise_students_report
    get :grouped_exam_report
    get :generate_grouped_report
    get :archived_student_report
    get :select_course
    get :generate_archived_report
    get :archived_students_consolidated_report
    get :exam_group_wise_report
    get :archived_students_exam_report
  end
  member do
    get :archived_student
    get :consolidated_archived_report
  end
end

resources :courses do
  resources :exam_setting
end  
resources :online_exams
resources :employees
resources :employee_attendances
resources :finance
end
