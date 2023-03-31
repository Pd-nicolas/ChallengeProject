class SearchController < ApplicationController
  require 'rest-client'
  require 'json'

  def index

    @favorites = session[:favorites] || []

    if params[:type].present?

      @type = params[:type]

      url = "https://swapi.dev/api/#{params[:type]}/"

      response = RestClient.get(url, {params: {search: params[:q]}})

      @results = JSON.parse(response.body)['results']

    end

  end

end
