class FavoritesController < ApplicationController
  def index

    @favorites = session[:favorites] || []

  end

  def toggle

    @favorites = session[:favorites] || []

    if @favorites.include?(params[:id])

      @favorites.delete(params[:id])

    else

      @favorites << params[:id]

    end

    session[:favorites] = @favorites

    redirect_to request.referer

  end

end
