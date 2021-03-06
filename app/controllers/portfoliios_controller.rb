class PortfoliiosController < ApplicationController
  def index
      @portfolio_items = Portfoliio.all
      # Portfoliio.c_programming
      # Portfoliio.where(subtitle: "C programming") or check model
  end

  def c
    @c_portfolio_items = Portfoliio.c_programming
      # Portfoliio.where(subtitle: "C programming") or check model
  end
  def new
    @portfolio_item = Portfoliio.new
  end
  def create
    @portfolio_item = Portfoliio.new(params.require(:portfoliio).permit(:title, :subtitle, :body))  
    respond_to do |format|
      if @portfolio_item.save
          format.html {redirect_to portfoliios_path, notice: "added"}
      else
          format.html{render :new}  
      end
    end
  end
  def edit
    @portfolio_item = Portfoliio.find(params[:id])
  end
  def update
    @portfolio_item = Portfoliio.find(params[:id])
    respond_to do |format|
      if @portfolio_item.update(params.require(:portfoliio).permit(:title, :subtitle, :body))
        format.html { redirect_to portfoliios_path, notice: 'portfolio was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end
  def show
    @portfolio_item = Portfoliio.find(params[:id])
  end
  def destroy
    @portfolio_item = Portfoliio.find(params[:id])
    @portfolio_item.destroy
    respond_to do |format|
          format.html { redirect_to portfoliios_url, notice: 'portfolio was removed.' }
  end
  end
end
