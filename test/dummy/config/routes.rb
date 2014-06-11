Rails.application.routes.draw do
  root "dummy#new"
  resource "dummy", :controller => :dummy
end
