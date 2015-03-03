class IndividualPayslipCategory < ActiveRecord::Base
  include Activity
  belongs_to :employee
  scope :shod, ->(id) { where(id: id).take }

  def self.create_category(emp, p)
    new(employee_id: emp.id, name: p[:name], amount: p[:amount]\
    , is_deduction: p[:is_deduction])
  end
end
