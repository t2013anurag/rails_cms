class DemoController < ApplicationController

  layout false
  
  def index
  	# render hello template 
  	# render('demo/hello') same as render('hello') as hello is present in demo template views
  	render('hello')
  end

  def hello
  end
end
