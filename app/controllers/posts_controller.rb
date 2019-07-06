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

	def create
	  @post = Post.new(params)
	  @post.save
	  redirect_to post_path(@post)
	end

	def update
	  @post = Post.find(params[:id])

	  if @post.valid?
	    @post.save 
	   redirect_to song_path(@song)
  end 
  
	  @post.update(params.require(:post))
	  redirect_to post_path(@post)
	  
	      @song.assign_attributes(song_params)

    if @song.valid?
      @song.save
      redirect_to song_path(@song)
    else
      render :edit
    end
    
	end

	def edit
	  @post = Post.find(params[:id])
	end
end