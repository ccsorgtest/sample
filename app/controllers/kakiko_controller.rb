# coding: utf-8
class KakikoController < ApplicationController
  def index
    @kakikos = Kakiko.where('ita_id = ?', params[:id]).order('created_at desc')
    @kakiko = Kakiko.new
    @kakiko.ita_id = params[:id]
    @ita = Ita.new
  end

  def create
  	@kakiko = Kakiko.new(params[:kakiko])
  	respond_to do |format|
	  	if @kakiko.save
	  		format.html { redirect_to( :action => 'index', :id => @kakiko.ita_id)}
	  	else
	  		format.html { render controller => 'ita', :action => 'index'}
	  	end
	  end
  end
end
