class ItaController < ApplicationController
  def index
    @itas = Ita.all
  end

  def create
  	@ita = Ita.new(params[:ita])
  	respond_to do |format|
	  	if @ita.save
	  		format.html { redirect_to(:controller => 'kakiko', :action => 'index', :id => @ita.id)}
	  	else
	  		format.html { render :action => 'create'}
	  	end
	  end
  end
end
