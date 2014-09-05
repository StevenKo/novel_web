class NovelsController < ApplicationController
  def show
  end

  def index
  end

  def search
    params[:page] ||= 1
    @novels = Novel.search(params)

    respond_to do |format|
      format.html
      format.js
    end
  end
end
