class WelcomeController < ApplicationController
  def index
  end

  def apply
    @writer = Writer.new
  end

  def apply_create
    @writer = Writer.new(writer_params)
    unless @writer.save
      render :apply
    end
  end

  private

  def writer_params
    params.require(:writer).permit(:email, :name, :url, :phone, :remark)
  end

end
