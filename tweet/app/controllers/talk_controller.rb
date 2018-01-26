class TalkController < ApplicationController
  def index
    @talk = Talk2.all
  end
  def new

  end
  def create
    Talk2.create(text: params[:text])
  end
end
