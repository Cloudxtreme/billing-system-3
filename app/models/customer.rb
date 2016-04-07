class Customer < ActiveRecord::Base
  has_many :customer_addresses
  has_many :addresses, through: :customer_addresses
  has_many :invoices
end
