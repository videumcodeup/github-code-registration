Rails.application.routes.draw do
  root to: "pages#welcome"
  get "/:name", to: "organizations#show"
end
