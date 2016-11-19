class VisitorsController < ApplicationController
    def new
        @owner=Owner.new
        @currenttime=Date.today
    end 
end 