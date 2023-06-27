class SessionsController < ApplicationController

  def index
    session[:page_views] ||= 0

    session[:page_views] += 1

    if session[:page_viewas] < 3
      render json: { article: "Article data" }
    else
      render json: { error: "You have reached the maximum number of article views.", status: 401 }
    end
  end
end
