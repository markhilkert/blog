class Api::PostsTagsController < ApplicationController
  def index
    @post_tags = PostTag.all 
    render 'index.json.jbuilder'
  end

  def create
    @post_tag = PostTag.new(
                    name: params[:name]
                    )
    
    if @post_tag.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @post_tag.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @post_tag = PostTag.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @post_tag = PostTag.find(params[:id])

    @post_tag.name = params[:name] || @post_tag.name

    if @post_tag.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @post_tag.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    post_tag = PostTag.find(params[:id])
    post_tag.destroy
    render json: {message: "Successfully removed post_tag."}
  end
end
