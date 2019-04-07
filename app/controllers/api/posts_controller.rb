class Api::PostsController < ApplicationController
  def index
    @posts = Post.all 
    render 'index.json.jbuilder'
  end

  def create
    @post = Post.new(
                      date: params[:date],
                      preview_image: params[:preview_image],
                      title: params[:title],
                      body: params[:body],
                      preview_text: params[:preview_text]
                      )
    
    if @post.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @post.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @post = Post.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @post = Post.find(params[:id])

    @post.date = params[:date] || @post.date
    @post.preview_image = params[:preview_image] || @post.preview_image
    @post.title = params[:title] || @post.title
    @post.body = params[:body] || @post.body
    @post.preview_text = params[:preview_text] || @post.preview_text

    if @post.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @post.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    render json: {message: "Successfully removed post."}
  end
end
