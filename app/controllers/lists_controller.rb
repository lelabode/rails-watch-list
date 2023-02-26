class ListsController < ApplicationController
  before_action :find_list, only: [:destroy ]
  # before_action :find_list, :only[:show, :movies, :destroy]
  # before_action :bookmarks, :only[:show]
  def index
    @lists = List.all
    @list = List.new
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @list.destroy
    redirect_to list_path(@list), status: :see_other
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

  def find_list
    @list = List.find(params[:id])
  end
end
