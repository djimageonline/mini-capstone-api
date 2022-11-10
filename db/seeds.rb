# product1 = Product.create!(name: "chair", price: 98, image_url: "testchair.com", description: "green chair")
# product1.save

# product2 = Product.create!(name: "table", price: 200, image_url: "https://images.unsplash.com/photo-1533090481720-856c6e3c1fdc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80", description: "nice white table")
# product2.save

# product3 = Product.create!(name:"desk", price: 60, image_url: "www.testdesk.com", description: "orange desk")
# product3.save


# supplier1 = Supplier.create!(name: "Fubu", email: "fubu@test.com", phone_number: "777-555-3333")
# supplier1.save

# supplier2 = Supplier.create!(name: "Nike", email: "nike@test.com", phone_number: "888-444-8888")
# supplier2.save

# supplier3 = Supplier.create!(name: "Puma", email: "puma@test.com", phone_number: "999-222-1111")
# supplier3.save

image1 = Image.create!(url: "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/2016a636-2953-41b4-b496-55263f2b26bc/air-jordan-1-mid-shoes-M2KS6n.png", product_id: product2.id)

image2 = Image.create!(url: "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/ccd1396f-f289-4bbf-b385-68dc6e71282b/air-force-1-07-premium-mens-shoes-jTLc6j.png", product_id: product2.id)