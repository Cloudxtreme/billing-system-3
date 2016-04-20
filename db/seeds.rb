if Rails.env.development?

  Admin.create email: "admin-1@example.com",
    password: "admin-1@example.com",
    password_confirmation: "admin-1@example.com",
    name: "Vladimir", phone: "503-544-5745"

  c =  Customer.create email: "customer-1@example.com",
    name: "Sebastian",
    phone: "503-786-5867"

  c.addresses.create(street_1: "2324 SE Alder Street",
                     street_2: "Apt#14",
                     city: "Portland",
                     state: "OR",
                     postal_code: "97456")

  c.invoices.create(amount: 235.67,
                    description: "Ivoice for my work")

  b =  Customer.create email: "customer-2@example.com",
    name: "Barbaros",
    phone: "503-786-7222"

  b.addresses.create(street_1: "1111 SE Alder Street",
                     street_2: "Apt#345",
                     city: "Portland",
                     state: "OR",
                     postal_code: "97644")

  b.invoices.create(amount: 235.67,
                    description: "Ivoice for profit!!!")


end
