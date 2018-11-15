class CountiesController < ApplicationController
    def index
        @counties=County.all
    end
    
    def new
        @county = County.new
    end
    
    def create
        @county= County.new(county_params)
        
        if @county.save
            redirect_to @county
        else
            render 'new'
        end
        
    end
    
    def show
        @county=County.find(params[:id])
    end
    
    def edit
        @county = County.find(params[:id])
    end
    
    def update
        @county = County.find(params[:id])
        
        if @county.update(county_params)
            redirect_to @county
        else
            render 'edit'
        end
    end
    
end

private
    def county_params
        params.require(:county).permit(:name)
    end
