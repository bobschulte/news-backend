class Api::V1::StoriesController < ApplicationController
    before_action :define_current_story
    
    def index
        render json: Story.all
    end
    
    def show
        render json: current_story
    end
    
    def update
        current_story.update(story_params)
        render json: current_story
    end
    
    def destroy
        current_story.destroy
        render json: story
    end
    
    def create
        story = Story.create(story_params)
        render json: story
    end

    def story_params
        params.permit(:title, :image, :text, :library_id)
    end
    
    def define_current_story
        if(params[:id])
            @current_story = Story.find(params[:id])
        end
    end
    
    def current_story
        @current_story
    end
end
