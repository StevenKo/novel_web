class WelcomeController < ApplicationController
  
  def index
    @recommend_novel = Novel.find(15)
    @newest_novel = Novel.find(19)
    @categories = Category.where(is_popular: true)
    @novels = Novel.order("updated_at desc").page(params[:page]).per_page(12)
    respond_to do |format|
      format.html
      format.js
    end
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

  def top
    hot_novels_id = HotShip.all.map{|ship| ship.novel_id}.join(',')
    @hot_novels = Novel.where("id in (#{hot_novels_id})").show.select("id,name,author,pic,category_id,slug").order("updated_at DESC").limit(30)

    this_week_novels_id = ThisWeekHotShip.all.map{|ship| ship.novel_id}.join(',')
    @week_novels = Novel.where("id in (#{this_week_novels_id})").show.select("id,name,author,pic,category_id,slug").order("updated_at DESC").limit(30)

    this_month_novels_id = ThisMonthHotShip.all.map{|ship| ship.novel_id}.join(',')
    @month_novels = Novel.where("id in (#{this_month_novels_id})").show.select("id,name,author,pic,category_id,slug").order("updated_at DESC").limit(30)
  end

  private

  def writer_params
    params.require(:writer).permit(:email, :name, :url, :phone, :remark)
  end

end
