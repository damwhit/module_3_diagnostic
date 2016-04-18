class SearchController < ApplicationController
  def index
    Search.new.find_by_zip(params[:q])
  end
end
