class PortfoliiosController < ApplicationController
  def index
      @portfolio_items = Portfoliio.all
  end

end
