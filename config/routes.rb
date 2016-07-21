Rails.application.routes.draw do
  
  root 'welcome#index'

  get 'wechat' => 'wechat#main_msg'

end
