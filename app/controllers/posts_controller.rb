class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  # add create method here
  def create
    #white_list = params[:post]
    post = Post.create(title: params[:title], description: params[:description])
    
    puts "Post Details: #{post}"

    redirect_to post_path(post)
  end
end
