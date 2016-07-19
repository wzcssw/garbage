module API
  class Base < Grape::API
    content_type :json, 'application/json'
    format :json
    default_format :json
    # formatter :json, Grape::Formatter::ActiveModelSerializers

    mount V1::Base => :v1
  end
end
