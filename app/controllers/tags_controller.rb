class TagsController < ApplicationController

  def index
    @tag = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def destroy
    Tag.destroy(params[:id])

    flash.notice = "Article Destroyed!"

    redirect_to tag_path
  end
end
