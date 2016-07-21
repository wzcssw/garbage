class ChengchatController < ApplicationController
  def index
    @chengchats = Chengchat.all
  end
end
