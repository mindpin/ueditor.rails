Rails.application.routes.draw do
  root "dummy#new"
  resource "dummy", :controller => :dummy do
    member do
      get :bla
    end
  end
end
