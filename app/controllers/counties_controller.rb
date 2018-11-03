class CountiesController < ApplicationController
    
    def new
        
    end
    
    def create
        
        render plain: params[:county].inspect
        
    end
    
end
