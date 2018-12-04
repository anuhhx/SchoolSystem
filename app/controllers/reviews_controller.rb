class ReviewsController < ApplicationController
    def create
        @school=School.find(params[:school_id])
        @review=@school.reviews.create(review_params)
        redirect_to county_school_path(@school.county_id,@school)
    end
    
    private 
        def review_params
            params.require(:review).permit(:comment, :initials)
        end
end
