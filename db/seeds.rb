User.create!([
  {name: "Johnny", email: "Proano", password: "password", admin: false},
  {name: "Mike", email: "mike@test.com", password: "password", admin: false}
])
Supplier.create!([
  {name: "Fubu", email: "fubu@test.com", phone_number: "777-555-3333"},
  {name: "Nike", email: "nike@test.com", phone_number: "888-444-8888"},
  {name: "Puma", email: "puma@test.com", phone_number: "999-222-1111"}
])
Product.create!([
  {name: "table", price: "200.0", description: "nice white table", quantity: nil, supplier_id: 2},
  {name: "desk", price: "60.0", description: "orange desk", quantity: nil, supplier_id: 3},
  {name: "chair", price: "98.0", description: "green chair", quantity: nil, supplier_id: 1}
])
Order.create!([
  {user_id: 2, product_id: 2, quantity: 5, subtotal: "100.0", tax: nil, total: "110.0"},
  {user_id: 1, product_id: 2, quantity: 8, subtotal: "200.0", tax: nil, total: "150.0"},
  {user_id: 2, product_id: 2, quantity: 10, subtotal: "200.0", tax: nil, total: "150.0"},
  {user_id: 2, product_id: 3, quantity: 55, subtotal: "250.0", tax: nil, total: "4320.0"},
  {user_id: 2, product_id: 1, quantity: 10, subtotal: "980.0", tax: "88.2", total: "1068.2"},
  {user_id: 2, product_id: 1, quantity: 10, subtotal: "980.0", tax: "88.2", total: "1068.2"},
  {user_id: 2, product_id: 1, quantity: 10, subtotal: "980.0", tax: "88.2", total: "1068.2"},
  {user_id: 2, product_id: 2, quantity: 44, subtotal: "8800.0", tax: "792.0", total: "9592.0"},
  {user_id: 2, product_id: 2, quantity: 500, subtotal: "100000.0", tax: "9000.0", total: "109000.0"},
  {user_id: 2, product_id: 1, quantity: 33, subtotal: "3234.0", tax: "291.06", total: "3525.06"},
  {user_id: 2, product_id: 1, quantity: 33, subtotal: "3234.0", tax: "291.06", total: "3525.06"},
  {user_id: 2, product_id: 1, quantity: 33, subtotal: "3234.0", tax: "291.06", total: "3525.06"},
  {user_id: 2, product_id: 1, quantity: 33, subtotal: "3234.0", tax: "291.06", total: "3525.06"},
  {user_id: 2, product_id: 1, quantity: 33, subtotal: "3234.0", tax: "291.06", total: "3525.06"},
  {user_id: 2, product_id: 3, quantity: 222, subtotal: "13320.0", tax: "1198.8", total: "14518.8"},
  {user_id: 2, product_id: 1, quantity: 555, subtotal: "54390.0", tax: "4895.1", total: "59285.1"}
])
Image.create!([
  {url: "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/2016a636-2953-41b4-b496-55263f2b26bc/air-jordan-1-mid-shoes-M2KS6n.png", product_id: 1},
  {url: "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/ccd1396f-f289-4bbf-b385-68dc6e71282b/air-force-1-07-premium-mens-shoes-jTLc6j.png", product_id: 3}
])
