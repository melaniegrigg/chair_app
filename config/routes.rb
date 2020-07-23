Rails.application.routes.draw do
  
    get "/chairs" => "chairs#index"
    get "/chairs/new" => "chairs#new"
    post "/chairs" => "chairs#create"
    get "/chairs/:id" => "chairs#show"
    get "chairs/:id/edit" => "chairs#edit"
    patch "chairs/:id" => "chairs#update"
end
