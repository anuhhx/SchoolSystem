class ReviewsController < ApplicationController
    def create
        @school=County.find(params[:county_id]).schools.find(params[:id])
        @review=@school.reviews.create(review_params)
        redirect_to county_school_path(@school)
    end
    
    private 
        def review_params
            params.require(:review).permit(:comment, :initials)
        end
end
