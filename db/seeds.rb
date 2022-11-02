product1 = Product.create!(name: "chair", price: 98, image_url: "testchair.com", description: "green chair")
product1.save

product2 = Product.create!(name: "table", price: 200, image_url: "https://images.unsplash.com/photo-1533090481720-856c6e3c1fdc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80", description: "nice white table")
product2.save

product3 = Product.create!(name:"desk", price: 60, image_url: "www.testdesk.com", description: "orange desk")
product3.save
