class PagesController < ApplicationController
  def show
    @page = Page.find(params[:id])
    if @page.is_published == false
      redirect_to root_path, alert: "This page doesn't exist"
    end
    @section = Section.all
  end
end
