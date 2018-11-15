class SchoolsController < ApplicationController
    def create
        @county= County.find(params[:county_id])
        @school=@county.schools.create(school_params)
        redirect_to county_path(@county)
    end
    private
    def school_params
        params.require(:school).permit(:name,:address, :grade, :phone, :website)
    end
end
