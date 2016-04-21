class Invoice < ActiveRecord::Base
  belongs_to :customer
  has_one :payment

  validates :customer, presence: true
  validates :amount, presence: true, numericality: { greater_than_or_equal_to: 0 },
                     format: { with: /(\d+\.\d{2})/ }

end
