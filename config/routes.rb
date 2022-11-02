Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

get "/products" => "products#index"

# BAD WAY
# get "/first_product" => "products#first_product"
# get "/second_prodcut" => "products#second_prodcut"
# get "/third_prodcut" => "products#third_prodcut"

get "/products/:id" => "products#show"

end
