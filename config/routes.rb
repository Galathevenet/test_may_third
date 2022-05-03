Rails.application.routes.draw do
  resources do :price only: [:new, :create]
  end
  get "price", "prices#price"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
