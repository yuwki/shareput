class TopicsController < ApplicationController
  before_action :move_to_user_session, only: [:new]
  
  def index
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      redirect_to root_path
    else
        render :new
    end
  end

  def show
    @topic = Topic.find(params[:id])
    @post = Post.new(:topic_id => params[:id])
    @posts = Post.where(topic_id: params[:id])
  end

  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to root_path
  end

  private

  def topic_params
    params.require(:topic).permit(:title).merge(user_id: current_user.id)
  end

  def move_to_user_session
    unless user_signed_in?
      redirect_to user_session_path
    end
  end
end
