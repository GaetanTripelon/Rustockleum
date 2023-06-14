class ProductsController < ApplicationController
  require "open-uri"
  require "nokogiri"

  def index
    @products = Product.all
    if params[:query].present?
      sql_subquery = <<~SQL
        products.reference @@ :query
        OR products.libelle @@ :query
        OR products.catalogue @@ :query
        OR products.gamme @@ :query
      SQL
      @products = @products.where(sql_subquery, query: params[:query])
    end
  end

  def show
    @product = Product.find(params[:id])
  end
end
