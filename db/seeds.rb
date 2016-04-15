if Rails.env.development?

  Admin.create email: "vbilenko@yahoo.com",
    password: "vbilenko@yahoo.com",
    password_confirmation: "vbilenko@yahoo.com",
    name: "Vladimir", phone: "503-544-5745"

  c =  Customer.create email: "customer1@example.com",
    name: "Sebastian",
    phone: "503-786-5867"

  c.addresses.create(street_1: "2324 SE Alder Street",
                     street_2: "Apt#14",
                     city: "Portland",
                     state: "OR",
                     postal_code: "97456")

  c.invoices.create(amount: 235.67,
                    description: "Ivoice for my work")

end
