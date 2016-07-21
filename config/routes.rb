Rails.application.routes.draw do

  get 'chengchat/index'

  mount WeixinRailsMiddleware::Engine, at: "/"
  root 'welcome#index'

end
