module API
  module V1
    class TestApi < Grape::API
      prefix :test

      desc "just test"
      params do
        optional :pp, type: String
      end
      get :list do
        para = params[:pp] || "none"
        arr = ['a','b','c']
        str = "love"

        present :arr, arr
        present :str, str
        present :para, para
      end

      desc "wechat test"
      params do
        requires :signature, type: String
        requires :timestamp, type: String
        requires :nonce, type: String
        requires :echostr, type: String
      end
      get :wechat do
        token = 'garbage'
        signature = params[:signature]
        timestamp = params[:timestamp]
        nonce = params[:nonce]
        echostr = params[:echostr]

        params_arr = [token,timestamp,nonce].sort!
        params_str = params_arr.join
        result = Digest::SHA1.hexdigest(params_str)

        if signature == result
          present :echostr, present
        end
      end

    end
  end
end
