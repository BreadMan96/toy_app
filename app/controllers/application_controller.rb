class ApplicationController < ActionController::Base
	 def hello
	 	render html: "hello, world! This is test text"
	 end
end
