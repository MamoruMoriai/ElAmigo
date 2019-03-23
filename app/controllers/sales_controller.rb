class SalesController < ApplicationController
  def index
    @sales = Sale.order("id")
    
    #伝票別売上
    @sale_price = Sale.sale_price
    gon.date = []
    gon.table = []
    gon.sale_price = []
    @sale_price.each do |sale|
      gon.date << sale.date
      gon.table << sale.name
      gon.sale_price << sale.sum_price
    end

    #日別売上
    @date_price = Sale.date_price
    gon.days = []
    gon.date_price = []
    @date_price.each do |date|
      gon.days << date.days
      gon.date_price << date.sum_price
    end

    #時間帯別売上
    @time_price = Sale.time_price
    gon.time = []
    gon.time_price = []
    @time_price.each do |time|
      gon.time << time.time
      gon.time_price << time.sum_price
    end

    #テーブル別売上
    @table_price = Sale.table_price
    gon.table = []
    gon.table_price = []
    @table_price.each do |table|
      gon.table << table.name
      gon.table_price << table.sum_price
    end
    
  end

  def show
    @sale = Sale.find(params[:id])
    @takes = Take.where(sale_id: params[:id])
  end

  def new
    @sale = Sale.new()
  end

  def edit
    @sale = Sale.find(params[:id])
  end

  def create
    @sale = Sale.new(params[:sale])
    if @sale.save
      redirect_to @sale, notice: "伝票を作成しました。"
    else
      render "new"
    end
  end

  def update
    @sale = Sale.find(params[:id])
    @sale.assign_attributes(params[:sale])
    if @sale.save
      redirect_to @sale, notice: "伝票情報を更新しました。"
    else
      render "edit"
    end
  end

  def destroy
    @sale = Sale.find(params[:id])
    @sale.destroy
    redirect_to :sales, notice: "伝票情報を削除しました。"
  end

end
