class TakesController < ApplicationController
  def index
    @takes = Take.order("id")
  end

  def show
    @take = Take.find(params[:id])
  end

  def new
    @take = Take.new()
  end

  def edit
    @take = Take.find(params[:id])
  end

  def create
    @take = Take.new(take_params)
    if @take.save
      redirect_to @take, notice: "注文を追加しました。"
    else
      render "new"
    end
  end

  def update
    @take = Take.find(params[:id])
    @take.assign_attributes(take_params)
    if @take.save
      redirect_to @take, notice: "注文情報を更新しました。"
    else
      render "edit"
    end
  end

  def destroy
    @take = Take.find(params[:id])
    @take.destroy
    redirect_to :takes, notice: "注文情報を削除しました。"
  end

  private
  def take_params
    params.require(:take).permit(:sale_id, :menu_id, :number)
  end
end
