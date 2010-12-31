class HomeController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.csv { render :csv => "filename", :content => "Name,Age\nBob,20" }
    end
  end
end
