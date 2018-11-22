class SchoolsController < ApplicationController
    def show
        @school=County.find(params[:county_id]).schools.find(params[:id])
        @county=County.find(params[:county_id])
    end
    
    def new
        @school =County.find(params[:county_id]).schools.new
        @county=County.find(params[:county_id])
    end
    
    def create
        @county= County.find(params[:county_id])
        @school=@county.schools.build(school_params)
        if @school.save
            redirect_to county_path(@county)
        else
            render 'new'
        end
    end
    private
    def school_params
        params.require(:school).permit(:name,:address)
    end
end
