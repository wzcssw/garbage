class WelcomeController < ApplicationController
  def index
    url = 'http://mmbiz.qpic.cn/mmbiz/7UXZTpI2qIAV6EHs94zrNJqiavws4qZHcjW0PdyjYSEWZLz5ktqJUcpn9R770JpibOYkfSNc2wvP3zyKgicxKPHGA/0'
    filename = save_img url
    puts 'result: ' << filename
  end

  # 保存文件到本地
  def save_img url
    require 'open-uri'
    download = open url
    file_name = rand(999999).to_s << '.png'
    IO.copy_stream(download, 'app/' << file_name)
    file_name
  end
end
