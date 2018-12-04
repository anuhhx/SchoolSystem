class SchoolsController < ApplicationController
    def index
        @schools=School.all
    end
    def show
        @school=School.find(params[:id])
        @county=@school.county
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
    
    def edit
        @school = School.find(params[:id])
        @county = @school.county_id
    end
    
    def update
        @school=School.find(params[:id])
        
        if @school.update(school_params)
            redirect_to county_school_path
        else
            render 'edit'
        end
    end
    
    def destroy

        @school=School.find(params[:id])
        @school.destroy
        
        redirect_back(fallback_location: root_path)
    end
    
    
    private
    def school_params
        params.require(:school).permit(:name,:address,:grade,:phone,:website)
    end
end
