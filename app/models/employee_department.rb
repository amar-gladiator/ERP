# EmployeeDepartment model
class EmployeeDepartment < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: \
  { minimum: 1, maximum: 50 }, format: { with: /\A[a-zA-Z0-9#+_" "-]+\Z/ }
  validates :code, presence: true, length: { minimum: 1, maximum: 10 }
  scope :shod, ->(id) { where(id: id).take }
  scope :is_status, -> { where(status: true).order(:name) }
  scope :not_status, -> { where(status: false).order(:name) }

  def assign_employee(batch)
    emp = []
    employees = self.employees.pluck(:id)
    employees.each { |e| emp << e.to_s }
    if batch.employee_id
      assign_employees = batch.employee_id.split(',')
      emp - assign_employees
    else
      emp
    end
  end

  def ass_emp(batch)
    batch.employee_id.split(',')
  end
end
