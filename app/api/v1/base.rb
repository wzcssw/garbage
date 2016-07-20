module API
  module V1
    class Base < Grape::API
      mount V1::AuthApi
    end
  end
end
