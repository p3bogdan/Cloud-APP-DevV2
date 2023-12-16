class HomeController < ApplicationController

  def index
    if params[:search].present?
      @products = Product.where("title LIKE ? or description LIKE ? or price LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%")
    else
      @products = Product.all
    end
  end
end