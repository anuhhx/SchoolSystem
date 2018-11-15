class SchoolsController < ApplicationController
    def show
        @school=County.find(params[:county_id]).schools.find(params[:id])
    end
    
    def new
        @school =County.find(params[:county_id]).schools.new
    end
    
    def create
        @county= County.find(params[:county_id])
        @school=@county.schools.create(school_params)
        redirect_to county_path(@county)
    end
    private
    def school_params
        params.require(:school).permit(:name)
    end
end
