Rails.application.routes.draw do
  
    get "/chairs" => "chairs#index"
    get "/chairs/:id" => "chairs#show"
end
