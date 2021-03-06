class Api::TagsController < ApplicationController
  def index
      @tags = Tag.all 
      render 'index.json.jbuilder'
  end

  def create
    @tag = Tag.new(
                    name: params[:name]
                    )
    
    if @tag.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @tag.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    if params[:id].to_i == 0
      @tag = Tag.find_by(name: params[:id])
    else
      @tag = Tag.find(params[:id])
    end
    render 'show.json.jbuilder'
  end

  def update
    @tag = Tag.find(params[:id])

    @tag.name = params[:name] || @tag.name

    if @tag.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @tag.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    tag = Tag.find(params[:id])
    tag.destroy
    render json: {message: "Successfully removed tag."}
  end
end
