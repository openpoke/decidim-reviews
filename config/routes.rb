Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letter_opener"

  mount Decidim::Core::Engine => '/'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
