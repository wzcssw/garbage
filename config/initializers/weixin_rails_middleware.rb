# encoding: utf-8
# Use this hook to configure WeixinRailsMiddleware bahaviors.
WeixinRailsMiddleware.configure do |config|

  ## NOTE:
  ## If you config all them, it will use `weixin_token_string` default

  config.weixin_token_string = 'garbage'
  # using to weixin server url to validate the token can be trusted.
  config.weixin_secret_string = 'Sdzfz9Ux-8eccbd9d4379fb63fe8b722f84e9720c'
  # 加密配置，如果需要加密，配置以下参数
  config.encoding_aes_key = 'rKxZA4EcSTmAhbszL3uxS3lnbFo0RbvSlGEMpAYoxaO'
  config.app_id = "wx166591b059004da0"

  ## You can custom your adapter to validate your weixin account ##
  # Wiki https://github.com/lanrion/weixin_rails_middleware/wiki/Custom-Adapter
  # config.custom_adapter = "MyCustomAdapter"

end
