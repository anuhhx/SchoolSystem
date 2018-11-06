class CountiesController < ApplicationController
    
    def new
        
    end
    
    def create
        @county= County.new(county_params)
        
        @county.save
        redirect_to @county
        
    end
    
    def show
        @county=County.find(params[:id])
    end
    
end

private
    def county_params
        params.require(:county).permit(:name)
    end
