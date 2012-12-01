# coding: utf-8

class HelloController < ApplicationController
#  def index
#    render :text => 'こんにちは世界！'
#    @message = 'こんにちは世界！'
#  end
  def index
    @hello = Hello.new
    @hello.hoge = 'aaaaaa'
    @hello.save
  
    @hellos = Hello.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hellos }
    end
  end
end
