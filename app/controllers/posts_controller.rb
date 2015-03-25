class PostsController < ApplicationController
  def index
  	@posts = Post.all
  end

  def show
  	@post = Post.find params[:id]
  end

  # why we have to change method "new" into "create"? isn't method "new" came more earlier than method "create"?
  def create
    #we can get title and content value from view, use these two parameters initialize Post object
    @post = Post.new title: params[:title], content: params[:content]

    if @post.save
      redirect_to @post
    else
      render :new
    end

  end

  def edit
  end
end
