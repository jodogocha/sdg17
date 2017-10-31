class CrmController < ApplicationController
	 def index
    	@records = Record.all
  	end

end
