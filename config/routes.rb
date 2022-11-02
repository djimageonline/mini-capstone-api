Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

get "/all_products" => "products#all_products"

# BAD WAY
# get "/first_product" => "products#first_product"
# get "/second_prodcut" => "products#second_prodcut"
# get "/third_prodcut" => "products#third_prodcut"

get "/one_product/:id" => "products#one_product"

end
