class ChengchatController < ApplicationController
  def index
    @chengchats = Chengchat.paginate(page:params[:page],per_page:7).order('id DESC')

  end
end
