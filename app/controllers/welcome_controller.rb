class WelcomeController < ApplicationController
  before_action :auth_wechat_server , only: [:wechat_text]
  def index
  end

  def wechat_test
    token = 'garbage'
    signature = params[:signature] || ''
    timestamp = params[:timestamp] || ''
    nonce = params[:nonce] || ''
    echostr = params[:echostr] || ''

    params_arr = [token,timestamp,nonce].sort!
    params_str = params_arr.join
    result = Digest::SHA1.hexdigest(params_str)

    if signature == result
      render text: echostr
    else
      render text: '验证失败'
    end
  end

  # 文本消息
  def wechat_text
    puts "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< start"
    puts params
    puts "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< end  "
    render text: 'success'
  end

  def auth_wechat_server
    token = 'garbage'
    signature = params[:signature] || ''
    timestamp = params[:timestamp] || ''
    nonce = params[:nonce] || ''
    echostr = params[:echostr] || ''

    params_arr = [token,timestamp,nonce].sort!
    params_str = params_arr.join
    result = Digest::SHA1.hexdigest(params_str)

    if signature != result
      render text: '验证失败'
      return
    end
  end
end
