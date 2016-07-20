class WelcomeController < ApplicationController
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
  end

end
