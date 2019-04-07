class Api::PostsTagsController < ApplicationController
  def index
    @posts_tags = PostsTag.all
    render 'index.json.jbuilder'
  end

  def create
    @posts_tag = PostsTag.new(
                              post_id: params[:post_id],
                              tag_id: params[:tag_id]
                              )
    
    if @posts_tag.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @posts_tag.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @posts_tag = PostsTag.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @posts_tag = PostsTag.find(params[:id])

    @posts_tag.post_id = params[:post_id] || @posts_tag.post_id
    @posts_tag.commenter = params[:commenter] || @posts_tag.commenter
    @posts_tag.body = params[:body] || @posts_tag.body

    if @posts_tag.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @comment.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    posts_tag = PostsTag.find(params[:id])
    posts_tag.destroy
    render json: {message: "Successfully removed posts_tag."}
  end
end
