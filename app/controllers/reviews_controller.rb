class ReviewsController < ApplicationController
    def create
        @school=School.find(params[:school_id])
        @review=@school.reviews.create(review_params)
        @county=County.find(params[:county_id])
        redirect_to county_school_path(@school)
    end
    
    private 
        def review_params
            params.require(:review).permit(:comment, :initials)
        end
end
