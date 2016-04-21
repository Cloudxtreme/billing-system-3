class CustomerMailer < ApplicationMailer
  default from: 'notifications@example.com'
  def notify(invoice)
    @invoice = invoice
    mail(to: @invoice.customer.email, subject: 'You got an invoice!')
  end
end
