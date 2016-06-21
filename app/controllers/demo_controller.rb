class DemoController < ApplicationController

  layout false
  
  def index
  	# render hello template 
  	# render('demo/hello') same as render('hello') as hello is present in demo template views
  	render('hello')
  end

  def hello
  	# render('index')
  	@arr = [1,2,3,4,5] # @ declared variables are instance variables, so that they cn be used in templates (views)
  	puts "Hello"
  end

  def other_hello
  	redirect_to(:controller => 'demo', :action => 'index')
  end

  def hackerrank
  	redirect_to("http://www.hackerrank.com")
  end

end
