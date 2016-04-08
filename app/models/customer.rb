class Customer < ActiveRecord::Base
  has_many :customer_addresses
  has_many :addresses, through: :customer_addresses
  has_many :invoices

  validates :name, presence: true, length: { maximum: 20 }
  validates :phone, presence: true,  length: { maximum: 12 }, uniqueness: true

end
