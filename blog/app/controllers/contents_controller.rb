class ContentsController < ApplicationController
  before_action :authenticate_user!
  def index
    @contents = Content.all
  end
  def new
    @content = Content.new
  end
  def create
    @content = Content.new(content_params)
    if @content.save
      redirect_to root_path 
    else
      redirect_to :new
    end
  end
  private
  def content_params
    params.require(:content).permit(:name,:description,:photo)
  end
end
