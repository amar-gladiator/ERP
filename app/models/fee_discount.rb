class FeeDiscount < ActiveRecord::Base
  include Activity
  self.inheritance_column = nil
  belongs_to :finance_fee_category
  belongs_to :batch
  belongs_to :category

  scope :shod, ->(id) { where(id: id).take }

  def self.create_discount(params, batches, adm_no, cat_id)
    error = 1
    if batches.present?
      batches.each do |b|
        discount = new(params)
        discount.set(adm_no, cat_id, b)
        error = 0 if discount.save
      end
    end
    error
  end

  def set(adm_no, cat_id, batch)
    if type == 'Student'
      self.admission_no, self.batch_id = adm_no, batch
    elsif type == 'Student Category'
      self.category_id, self.batch_id = cat_id[:id], batch
    else
      self.batch_id = batch
    end
  end
end
