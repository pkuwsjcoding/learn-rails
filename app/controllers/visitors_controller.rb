class VisitorsController < ApplicationController
    def new
        #flash.now[:notice]="Welcome"
        @owner=Owner.new
        @currenttime=Date.today
        #flash.now[:alert]="My birthday is soon"
    end 
end 