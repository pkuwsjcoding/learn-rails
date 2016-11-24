class VisitorsController < ApplicationController
    def new
        #flash.now[:notice]="Welcome"
        #@owner=Owner.new
        #@currenttime=Date.today
        #flash.now[:alert]="My birthday is soon"
        @visitor=Visitor.new
    end 
    
    def create
        @visitor = Visitor.new(secure_params)
        if @visitor.valid?
            @visitor.subscribe
            flash[:notice] = "Signed up #{@visitor.email}."
            redirect_to root_path
        else
            render :new
        end
    end 
    
    private
        def secure_params
            params.require(:visitor).permit(:email)
        end
end 