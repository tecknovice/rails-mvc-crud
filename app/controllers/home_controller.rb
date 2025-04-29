class HomeController < ApplicationController
  def index
  end

  def about
  end

  def api
    render json: { message: "Hello, world!" }
  end
end
