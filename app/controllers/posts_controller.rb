class PostsController < ApplicationController
  def index
    @page = Page.find_by_permalink("messages")
    @metatag_object = @page
    @posts = Post.all
  end
  
  def show
    @post = Post.find_by_permalink(params[:id])
    @metatag_object = @post
  end
  
  def create
    @post = Post.new(params[:post]) unless params[:post].blank?
    if @post.save
      flash.now[:notice] = 'Your message has been sent.'
    else
      flash.now[:error] =  "Your message can't be sent."
    end
    @posts = Post.all
    render :partial => "posts"
  end
end
