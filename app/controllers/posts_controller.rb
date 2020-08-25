class PostsController < ApplicationController
  def index
    @post = Post.new
    @topic = Topic.find(params[:topic_id])
    @posts = @topic.posts.includes(:user)
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @post = @topic.posts.new(post_params)
    @post.save
  end

  private
  def post_params
    params.require(:post).permit(:name, :text).merge(user_id: current_user.id)
  end
end
