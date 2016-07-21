Rails.application.routes.draw do

  mount WeixinRailsMiddleware::Engine, at: "/"
  root 'welcome#index'

end
